/* Create a tables for entities */
CREATE TABLE PATIENT(
PatientNr integer PRIMARY KEY, 
Name text, 
Illness Text);

CREATE TABLE DOCTOR(
PersNr integer, 
Expertise text, 
Degree text, 
PRIMARY KEY (PersNr), 
FOREIGN KEY (PersNr) 
    REFERENCES WORKER);
    
CREATE TABLE NURSE(
PersNr integer, 
Skills text, 
PRIMARY KEY (PersNr), 
FOREIGN KEY (PersNr) 
    REFERENCES WORKER );
    
CREATE TABLE WORKER(
PersNr integer PRIMARY KEY, 
Name text);

/* Create a tables for Treats */
CREATE TABLE TREATS(
PatientNr integer, 
PersNr integer, 
PRIMARY KEY (PatientNr, PersNr), 
FOREIGN KEY (PatientNr) 
    REFERENCES PATIENT, 
FOREIGN KEY (PersNr) 
    REFERENCES DOCTOR );
