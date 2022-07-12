DROP TABLE Enrollment; 
DROP TABLE Offering; 
DROP TABLE Student; 
DROP TABLE Course; 
DROP TABLE Faculty; 

CREATE TABLE Student (
	stdNo	char(11) not null, 
    stdFirst varchar(30) not null, 
    stdLast	varchar(30) not null, 
    stdGPA	decimal(3, 2),
    CONSTRAINT StudentPk PRIMARY KEY (stdNo)); 

CREATE TABLE Course (
	courseNo	char(11) not null, 
    courseDesc	varchar(50) not null,
    CONSTRAINT CoursePk PRIMARY KEY (courseNo)); 

CREATE TABLE Faculty (
	facNo	char(11) not null, 
    facFirst	varchar(30) not null, 
    facLast		varchar(30) not null, 
    facHireDate		date, 
    CONSTRAINT FacultyPk PRIMARY KEY (facNo)); 

CREATE TABLE Offering (
	offeringNo	char(11) not null, 
    courseNo	char(11) not null, 
    facNo		char(11) not null, 
    offeringTerm	char(7), 
    CONSTRAINT OfferingPk PRIMARY KEY (offeringNo), 
    CONSTRAINT CourseFK FOREIGN KEY (courseNo) REFERENCES Course (courseNo),
    CONSTRAINT FacultyFK FOREIGN KEY (facNo) REFERENCES Faculty (facNo)); 

CREATE TABLE Enrollment (
	enrollNo		char(11) not null,  
    stdNo		char(11) not null, 
    CONSTRAINT EnrollmentPk PRIMARY KEY (enrollNo), 
    CONSTRAINT StudentFk FOREIGN KEY (stdNo) REFERENCES Student (stdNo) 
    ON DELETE CASCADE);
    
    
    
    
