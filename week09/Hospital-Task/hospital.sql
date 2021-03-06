----- Tables -----
DROP TABLE IF EXISTS PATIENTS;
DROP TABLE IF EXISTS HOSPITAL_STAY;
DROP TABLE IF EXISTS DOCTORS;

CREATE TABLE PATIENTS
(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  FIRSTNAME VARCHAR(255) NOT NULL,
  LASTNAME VARCHAR(255) NOT NULL,
  AGE int NOT NULL,
  GENDER VARCHAR(6),
  DOCTOR INT,
  FOREIGN KEY(DOCTOR) REFERENCES DOCTORS(ID)
);

CREATE TABLE HOSPITAL_STAY
(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  ROOM INT NOT NULL,
  STARTDATE VARCHAR(12) NOT NULL,
  ENDDATE VARCHAR(12),
  INJURY VARCHAR(255) NOT NULL,
  PATIENT INT,
  FOREIGN KEY(PATIENT) REFERENCES PATIENTS(ID)
);

CREATE TABLE DOCTORS
(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  FIRSTNAME VARCHAR(255) NOT NULL,
  LASTNAME VARCHAR(255) NOT NULL
);

INSERT INTO PATIENTS (FIRSTNAME, LASTNAME, AGE, GENDER, DOCTOR)
VALUES ('Rositsa', 'Zlateva', 22, 'F', 1);

INSERT INTO PATIENTS (FIRSTNAME, LASTNAME, AGE, GENDER, DOCTOR)
VALUES ('Roza', 'Rozova', 4, 'F', 1);

INSERT INTO PATIENTS (FIRSTNAME, LASTNAME, AGE, GENDER, DOCTOR)
VALUES ('Kamen', 'Kotsev', 22, 'M',2);

INSERT INTO PATIENTS (FIRSTNAME, LASTNAME, AGE, GENDER, DOCTOR)
VALUES ('Monika', 'Valerieva', 30, 'F',2);

INSERT INTO PATIENTS (FIRSTNAME, LASTNAME, AGE, GENDER, DOCTOR)
VALUES ('Kristina', 'Valchanova', 21, 'F', 1);

INSERT INTO PATIENTS (FIRSTNAME, LASTNAME, AGE, GENDER, DOCTOR)
VALUES ('Ivaylo', 'Bachvarov', 23, 'M', 3);

INSERT INTO PATIENTS (FIRSTNAME, LASTNAME, AGE, GENDER, DOCTOR)
VALUES ('Pandio', 'Pandev', 4, 'M',3);

INSERT INTO HOSPITAL_STAY (ROOM, STARTDATE, ENDDATE, INJURY, PATIENT)
VALUES (3, '2016-10-10', '2016-10-11', 'crazy', 1);

INSERT INTO HOSPITAL_STAY (ROOM, STARTDATE, ENDDATE, INJURY, PATIENT)
VALUES (6, '2016-10-12', '2016-10-15', 'headache', 2);

INSERT INTO HOSPITAL_STAY (ROOM, STARTDATE, ENDDATE, INJURY, PATIENT)
VALUES (2, '2016-09-30', '2016-10-01', 'crazy', 3);

INSERT INTO HOSPITAL_STAY (ROOM, STARTDATE, ENDDATE, INJURY, PATIENT)
VALUES (5, '2016-10-17', '2016-10-20', 'pregnancy', 4);

INSERT INTO HOSPITAL_STAY (ROOM, STARTDATE, ENDDATE, INJURY, PATIENT)
VALUES (3, '2016-10-12', '2016-10-12', 'кidney сtones', 5);

INSERT INTO HOSPITAL_STAY (ROOM, STARTDATE, ENDDATE, INJURY, PATIENT)
VALUES (7, '2016-10-09', '2016-10-12', 'headache', 6);

INSERT INTO HOSPITAL_STAY (ROOM, STARTDATE, ENDDATE, INJURY, PATIENT)
VALUES (1, '2016-10-09', '2016-10-11', 'hernia', 7);

INSERT INTO HOSPITAL_STAY (ROOM, STARTDATE, ENDDATE, INJURY, PATIENT)
VALUES (1, '2016-10-23', '2016-10-25', 'toothache', 1);

INSERT INTO DOCTORS (FIRSTNAME, LASTNAME)
VALUES ('Pavlina', 'Zdravkova');

INSERT INTO DOCTORS (FIRSTNAME, LASTNAME)
VALUES ('Valentina', 'Yordanova');

INSERT INTO DOCTORS (FIRSTNAME, LASTNAME)
VALUES ('Albena', 'Bachvarova');
