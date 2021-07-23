#include <SD.h> //Needed to write data to SD card
#include <SPI.h> //Also needed for SD card
#include <MAX6675.h> //Needed to communicate with the temperature sensors



//UPDATES//
//Add code to check if new serial data has come in, this will mean a new file should be created. Would need to end the current file and start the new one
//Will need to check how long the loop takes because it would be easier to write the sample number instead of tracking the actual time, a couple of ms error isnt going to hurt much
//END UPDATES

//FUNCTIONS//
void CreateDataString(); //Gathers the data and formats into proper string format
void CreateHeader(); //Creates the header for the file and gives information about the system
int WriteSDData(); //Writes the data to the SD card
void ReadThermocouples(); //Read all thermocouples and puts temperatures in the data array
void ReadAnalogInputs(); //Reads the analog inputs and stores the data
void CheckGetFilename(); //Grabs the filename from the serial port
//END FUNCTIONS//

//#DEFINES//
#define SDSelect 4; //Chip select is on pin 4 of the Arduino Uno
#define thermo0CS 5;//Chip select pin for the first thermocouple
#define thermo1CS 6;//Chip select pin for the first thermocouple
#define thermo2CS 7;//Chip select pin for the first thermocouple
#define thermo3CS 8;//Chip select pin for the first thermocouple
#define thermo4CS 9;//Chip select pin for the first thermocouple
#define thermo5CS 10;//Chip select pin for the first thermocouple

#define errorPin 3; //Defines the pin the error light should be on
#define startStopPin 2; //Defines that pin 2 will watch a button to know when to start and stop data logging

//Pins 0,1,11, 12, 13 are unavailable for GPIO due to being used by hardware Serial and Hardware SPI
//END #DEFINES//

//VARIABLES//
//Thermocouple Objects
MAX6675 thermo0(thermo0CS);
MAX6675 thermo1(thermo1CS);
MAX6675 thermo2(thermo2CS);
MAX6675 thermo3(thermo3CS);
MAX6675 thermo4(thermo4CS);
MAX6675 thermo5(thermo5CS);

//Thermocouple Values
double tempVals[6] = {0}; //Create array to hold temperature values and default all to 0

//Analog Input Values
double AIVals[4] = {0}; //Create an array to hold the analog input values

//SD card
String dataString = NULL; //Holds the string to be logged onto the SD card. Made up of the readings
String filename = NULL; //Holds the name of the file
filename.reserve(50); //Reserve 50 bytes of memory for the name
File dataFile; //Holds information about the file to be writing to

//System Variables
int sampleRate = 100; //Sample rate in Hz
double daqVersion = 1.0; //Version that the DAQ is running on
bool isValidFilename = false; //Holds whether a good filename has been created
double sampleNO = 0; //iterator that holds when the sample was taken
//END VARIABLES//

void setup() {
  //Setup error LED and set it to off
  pinMode(errorPin, OUTPUT);
  digitalWrite(errorPin, LOW);

  //Setup Start/Stop toggle switch as input with pullup resisstor
  pinMode(startStopPin, INPUT_PULLUP);

  //Setup and get information from the computer about file name
  Serial.begin(9600); //Start communication with the computer (Will need info from it)
  while (!Serial) {} //Wait for the hardware serial bus to respond
  Serial.println("Please enter the name of the file");// ask the user to enter a filename


  while (!isValidFilename) { //If no name has come in, then it will sit and wait
    GetFilename(); //Get the filename from the serial port
  }

  //Try to start the SD card
  if (!SD.begin(SDSelect)) {
    digitalWrite(errorPin, HIGH); //Set the error LED to be on
    while (1); //Halt the code
  }
  delay(500); //Wait for the thermocouples to stabilize
}

void loop() {

  if (digitalRead(startStopPin) == 1) { //If the start/stop button is pressed, then allow data logging
    ReadThermocouples(); //Get the temperature data
    ReadAnalogInputs();
    CreateDataString(); //Format the data into a string for reading
    WriteSDData(); //Write the data to the SD card
    sampleNo++; //Add one to the sample number
  } else { //Otherwise, do nothing and check to see if a new name has come in (Detected by serial data being available)
    CheckGetFilename(); //Check and get a new filename if one has come in
  }
  delay(1000 / sampleRate); //Delay for the time required to sample at a specific frequency defined above
}

//FUNCTION DEFINITIONS//
void CreateDataString() {
  dataString += (String)sampleNO + ","; //Add the sample number
  for (int i = 0; i < 6; i++) { //Add all temperature data
    dataString += (String)tempVals[i] + ",";
  }
  for (int i = 0; i < 4; i++) { //Add all analog input data
    if (i == 3) { //If we are on the last data item, don't add the comm afterwards, it will cause cells to be skipped
      dataString += (String)AIVals[i];
    } else { //Otherwise just add the AI val to the string
      dataString += (String)AIVals[i] + ",";
    }
  }
  dataString += '\n'; //End the string so excel moves to a new line
}
void CreateHeader() { //Done once at startup to write the header for later processing
  dataString = "Version," + daqVersion + '\n'; //Assign the version number with end line
  dataString += "Sample Rate," + sampleRate + '\n'; //Add the sample rate
  dataString += "Sample No,Temp0,Temp1,Temp2,Temp3,Temp4,Temp5,AI0,AI1,AI2,AI3" + '\n'; //Add the column identifiers
  WriteSDData(); //Write the header to the SD card
}
int WriteSDData() { //Writes the datastring to the SD card
  dataFile = SD.open(filename, FILE_WRITE); //Open the file with write permissions
  dataFile.println(dataString); //Write the data to the file
  dataFile.close(); //Close the file to save the data to it. This is needed because the data isn't written until a flush or close is called
  dataString = NULL; //Reset the data string after it has been written to the SD card
}
void ReadThermocouples() {
  tempVals[0] = thermo0.readTempC(); //Read and store the temperature
  tempVals[1] = thermo1.readTempC(); //Read and store the temperature
  tempVals[2] = thermo2.readTempC(); //Read and store the temperature
  tempVals[3] = thermo3.readTempC(); //Read and store the temperature
  tempVals[4] = thermo4.readTempC(); //Read and store the temperature
  tempVals[5] = thermo5.readTempC(); //Read and store the temperature
}

void ReadAnalogInputs() {
  //Read and store all the analog values
  AIVals[0] = analogRead(A0);
  AIVals[1] = analogRead(A1);
  AIVals[2] = analogRead(A2);
  AIVals[3] = analogRead(A3);
}
void CheckGetFilename() {
  if (Serial.available()) { //If data is detected on the serial port, then a new name has come in which means the filename is not valid
    isValidFilename = false;
    char inChar; //Used temporarily to get serial data for the name. Will be deleted once the filename has been input
    while (Serial.available() { //Read until there is nothing left in the serial buffer
    inChar = (char)Serial.read();
      if (inChar == '\n') { //If the \n character is found, this is the end of the string and it should terminate
        isValidFilename = true; //Notify system a valid filename exists
      } else { //Otherwise, add the incoming character to the filename
        filename += inChar;
      }
    }
    filename += ".csv"; //Make the file of type csv for Excel and MATLAB
  }
}
//END FUNCTION DEFINITIONS
