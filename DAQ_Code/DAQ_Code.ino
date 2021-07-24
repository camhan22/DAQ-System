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
#define SDSelect 10 //Chip select is on pin 4 of the Arduino Uno
#define thermo0CS 4//Chip select pin for the first thermocouple
#define thermo1CS 5//Chip select pin for the first thermocouple
#define thermo2CS 6//Chip select pin for the first thermocouple
#define thermo3CS 7//Chip select pin for the first thermocouple
#define thermo4CS 8//Chip select pin for the first thermocouple
#define thermo5CS 9//Chip select pin for the first thermocouple

#define errorPin 3 //Defines the pin the error light should be on
#define startStopPin 2 //Defines that pin 2 will watch a button to know when to start and stop data logging

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
double AIVals[6] = {0}; //Create an array to hold the analog input values

//SD card
String dataString = ""; //Holds the string to be logged onto the SD card. Made up of the readings
String filename = ""; //Holds the name of the file
File dataFile; //Holds information about the file to be writing to

//System Variables
int sampleRate = 100; //Sample rate in Hz (The writing loop takes ~3ms to complete, which means the max sample rate is 300Hz
double daqVersion = 1.0; //Version that the DAQ is running on
bool isValidFilename = false; //Holds whether a good filename has been created
unsigned long t = 0; //Holds the time in ms of the sample
unsigned long logStart; //Get the time that the system started logging
int breakCount = 0; //Holds how many csv breaks have been added to the file
bool dataWritten = 0; //Holds whether data has been written to the file at all (Allows not adding csv break right after the header)
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
  Serial.println("Please enter the name of the file (Must be 8 characters or less)");// ask the user to enter a filename


  while (!isValidFilename) { //If no name has come in, then it will sit and wait
    CheckGetFilename(); //Get the filename from the serial port
  }
  Serial.flush(); //Clear the serial buffer from memory
  Serial.println("Created file with name of " + filename); //Output the filename back to the user
  
  //Try to start the SD card
  if (!SD.begin(SDSelect)) {
    digitalWrite(errorPin, HIGH); //Set the error LED to be on
    Serial.println("SD card failed");
    while (1); //Halt the code
  }

  CreateHeader(); //Add the header to the file
  
  delay(500); //Wait for the thermocouples to stabilize
  Serial.println("Ready to start logging");
  logStart = millis();
}

void loop() {
  if (digitalRead(startStopPin) == 0) { //If the start/stop button is pressed, then allow data logging
    //ReadThermocouples(); //Get the temperature data
    ReadAnalogInputs();
    t = millis() - logStart;
    CreateDataString(); //Format the data into a string for reading
    WriteSDData(); //Write the data to the SD card
    breakCount = 0; //Reset the log break counter to prevent having multiple breaks
    dataWritten = 1; //We have written data to the system atleast once
  } else { //Otherwise, do nothing and check to see if a new name has come in (Detected by serial data being available)
    CheckGetFilename(); //Check and get a new filename if one has come in
    logStart = millis(); //if logging is disabled, store the new time for offsetting
    if(breakCount < 1 && dataWritten == 1){ //If this is the first iteration of the else statement, then we will add a break in the csv file to denote it
      dataString = "Logging Stopped";
      WriteSDData();
      breakCount++;
    }
  }
  delay(1000/sampleRate); //Delay for the time required to sample at a specific frequency defined above
}

//FUNCTION DEFINITIONS//
void CreateDataString() {
  dataString += (String)t + ","; //Add the sample number
  for (int i = 0; i < 6; i++) { //Add all temperature data
    dataString += (String)tempVals[i] + ",";
  }
  for (int i = 0; i < 6; i++) { //Add all analog input data
    if (i == 5) { //If we are on the last data item, don't add the comm afterwards, it will cause cells to be skipped
      dataString += (String)AIVals[i];
    } else { //Otherwise just add the AI val to the string
      dataString += (String)AIVals[i] + ",";
    }
  }
}
void CreateHeader() { //Done once at startup to write the header for later processing
  dataString = "Version," + (String)daqVersion + '\n'; //Assign the version number with end line
  dataString += "Sample Rate," + (String)sampleRate + '\n'; //Add the sample rate
  dataString += "Time,Temp0,Temp1,Temp2,Temp3,Temp4,Temp5,AI0,AI1,AI2,AI3,AI4,AI5"; //Add the column identifiers
  WriteSDData(); //Write the header to the SD card
}
int WriteSDData() { //Writes the datastring to the SD card
  dataFile = SD.open(filename, FILE_WRITE); //Open the file with write permissions
  dataFile.println(dataString); //Write the data to the file
  dataFile.close(); //Close the file to save the data to it. This is needed because the data isn't written until a flush or close is called
  dataString = ""; //Reset the data string after it has been written to the SD card
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
  AIVals[3] = analogRead(A4);
  AIVals[3] = analogRead(A5);
}
void CheckGetFilename() {
  if (Serial.available()) { //If data is detected on the serial port, then a new name has come in which means the filename is not valid
    isValidFilename = false;
    char inChar; //Used temporarily to get serial data for the name. Will be deleted once the filename has been input
    filename = Serial.readStringUntil('\n');
    filename = filename + ".csv"; //Make the file of type csv for Excel and MATLAB
    isValidFilename = true;
  }
}
//END FUNCTION DEFINITIONS
