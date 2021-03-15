-- Start of GoToAppointment SQL Script

--**********************************************************************************************
-- Title: Phase II
-- Author: Joseph Yun, Brandon Soledad, DeMarco Best
-- Desc: This script contains the DDL and DBMS code needed to create a database for our GoToAppointment project.
--***********************************************************************************************

-- This script was tested on Oracle's "LiveSQL" online database worksheet. Simply load this script file and run.
-- The "CHECK" constraints involving ON DELETE or ON UPDATE clauses for the foreign keys are omitted since Oracle defaults them to "NO ACTION" if not specified.

-- ***************************
-- Part A
-- ***************************

-- Table Clinics: Stores data about Clinics
Create Table Clinics (
    ClinicID            int             			Not Null    	Primary Key  AUTO_INCREMENT,
    ClinicName          varchar(100)   				Not Null,
    ClinicAddress       varchar(100)    			Not Null,
    ClinicCity          varchar(100) 	Default ('Tacoma')   	Not Null,
    ClinicZip           varchar(5)            			Not Null,
    ClinicAdultOnly     char(1)         Default ('Y')		Not Null,
    ClinicDriveInTest   char(1)         Default ('N')		Not Null,
    ClinicPhoneNumber   varchar(12)     			Null,
    TestingDay		int					Not Null,
    TestingStartTime    int					Not Null,
    TestingEndTime      int					Not Null
);

-- Table Patients: Stores data about Patients
Create Table Patients (
    PatientID             int             			Not Null        Primary Key AUTO_INCREMENT,
    PatientFirstName      varchar(100)    			Not Null,
    PatientLastName       varchar(100)    			Not Null,
    PatientAddress        varchar(100)    			Null,
    PatientCity           varchar(100)  Default ('Tacoma')  	Null,
    PatientState          varchar(100)	Default ('WA')  	Null,
    PatientZip            int             			Null,
    PatientPhoneNumber    Varchar(12)     			Null ,
    PatientEmail          varchar(100)    			Null

);

-- Table Doctors: Stores data about Doctors
Create Table Doctors (
    DoctorID            int             			Not Null            Primary Key AUTO_INCREMENT,
    ClinicID            int             			Not Null,
    DoctorFirstName     varchar(100)    			Not Null,
    DoctorLastName      varchar(100)    			Not Null,
    DoctorPhoneNumber   varchar(12)     			Null ,
    DoctorEmail         varchar(100)    			Not Null,
    Salary		int					Null,

    Constraint DoctorsClinicID_FK Foreign Key (ClinicID) References Clinics(ClinicID)
);

-- Table Appointments: Stores data about Appointments
Create Table Appointments(
    AppointmentID       int         				Not Null        Primary Key AUTO_INCREMENT,
    ClinicID            int         				Not Null,
    PatientID           int         				Not Null,
    AppointmentDate     date        				Not Null,
    AppointmentTime     int   					Not Null,
    AppointmentType     varchar(50) 				Null,
    TestResult      	char(1)     				Null,
    
    Constraint AppointmentsClinicID_FK Foreign Key (ClinicID) References Clinics(ClinicID),
    Constraint AppointmentsPatientID_FK Foreign Key (PatientID) References Patients(PatientID)
);

-- ***************************
-- Part B
-- ***************************

-- Summary: Insert sample data into Clinics
insert into Clinics (ClinicID, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingDay, TestingStartTime, TestingEndTime) values (1, 'Apotheca', '68 Prairie Rose Pass', 'Tacoma', '98402', 'Y', 'N', '757-124-5960', 7, 0800, 1700);
insert into Clinics (ClinicID, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingDay, TestingStartTime, TestingEndTime) values (2, 'Cardinal Health', '06 Hansons Court', 'Spanaway', '98387', 'N', 'N', '664-512-3816', 7, 0900, 1500);
insert into Clinics (ClinicID, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingDay, TestingStartTime, TestingEndTime) values (3, 'Cadila Healthcare Limited', '6 Moulton Alley', 'Sumner', '97640', 'N', 'N', '884-563-9726', 7, 1000, 1800);
insert into Clinics (ClinicID, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingDay, TestingStartTime, TestingEndTime) values (4, 'Hospira', '18 Prentice Avenue', 'Tacoma', '98402', 'N', 'Y', '954-398-7272', 7, 0700, 1900);
insert into Clinics (ClinicID, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingDay, TestingStartTime, TestingEndTime) values (5, 'AvKARE', '5 Harbort Way', 'Tacoma', '98402', 'Y', 'Y', '261-981-4255', 7, 1100, 2000);
insert into Clinics (ClinicID, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingDay, TestingStartTime, TestingEndTime) values (6, 'Mission Hills', '84 Elka Terrace', 'Spanaway', '98387', 'N', 'N', '450-853-8518', 7, 0900, 1500);
insert into Clinics (ClinicID, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingDay, TestingStartTime, TestingEndTime) values (7, 'Ventura', '37 Bluestem Parkway', 'Puyallup', '98371', 'N', 'N', '459-151-0896', 7, 0700, 1500);
insert into Clinics (ClinicID, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingDay, TestingStartTime, TestingEndTime) values (8, 'McKesson', '3235 Golf Street', 'Tacoma', '98402', 'N', 'N', '329-166-2062', 7, 0900, 1700);
insert into Clinics (ClinicID, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingDay, TestingStartTime, TestingEndTime) values (9, 'Golden State', '7449 Mendota Pass', 'Bonney Lake', '98391', 'N', 'Y', '993-448-8852', 7, 0800, 1800);
insert into Clinics (ClinicID, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingDay, TestingStartTime, TestingEndTime) values (10, 'Apotex', '4345 Kedzie Parkway', 'Parkland', '98444', 'N', 'N', '620-625-9468', 7, 0700, 1400);

-- Summary: Insert sample data into Patients
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (1, 'Tawsha', 'McIlraith', '4028 Union Hill', 'Puyallup', 'WA', '98371', '206-135-4258', 'tmcilraith0@wikipedia.org');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (2, 'Tom', 'Woofenden', '1 Fremont Alley', 'Bonney Lake', 'WA', '98391', '253-307-7402', 'twoofenden1@go.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (3, 'Nerita', 'Branwhite', '065 Westport Hill', 'Bonney Lake', 'WA', '98391', '253-428-6421', 'nbranwhite2@about.me');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (4, 'Patience', 'Maryan', '36709 5th Point', 'Buckley', 'WA', '98321', '206-431-1994', 'pmaryan3@berkeley.edu');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (5, 'Rance', 'Cocking', '1 Pankratz Lane', 'Buckley', 'WA', '98321', '360-272-6211', 'rcocking4@xrea.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (6, 'Allayne', 'Bewlay', '1 Starling Lane', 'Spanaway', 'WA', '98387', '253-276-2813', 'abewlay5@arstechnica.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (7, 'Ashleigh', 'Lavigne', '48332 Hanover Trail', 'Sumner', 'WA', '98352', '253-189-9200', 'alavigne6@joomla.org');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (8, 'Addy', 'Goodlip', '08433 Pawling Junction', 'Spanaway', 'WA', '98387', '509-219-3408', 'agoodlip7@sun.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (9, 'Alikee', 'Laverock', '373 Buhler Way', 'Buckley', 'WA', '98321', '253-637-3641', 'alaverock8@blinklist.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (10, 'Shermy', 'Hastewell', '78 Vernon Junction', 'Tacoma', 'WA', '98402', '206-771-9079', 'shastewell9@epa.gov');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (11, 'Magdalene', 'Gabriel', '925 Brentwood Trail', 'Sumner', 'WA', '98352', '253-638-3984', 'mgabriela@themeforest.net');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (12, 'Leta', 'Grindrod', '2719 Rutledge Center', 'Gig Harbor', 'WA', '98332', '253-975-5240', 'lgrindrodb@mail.ru');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (13, 'Chauncey', 'Jerosch', '9 Dryden Trail', 'Tacoma', 'WA', '98402', '509-657-4054', 'cjeroschc@miibeian.gov.cn');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (14, 'Kris', 'Kefford', '91 Thierer Avenue', 'Lakewood', 'WA', '98439', '206-113-6381', 'kkeffordd@xinhuanet.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (15, 'Ferrell', 'Greatbach', '92 Onsgard Parkway', 'Puyallup', 'WA', '98371', '206-682-0926', 'fgreatbache@newsvine.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (16, 'Maure', 'Roscamps', '93973 Maywood Hill', 'Bonney Lake', 'WA', '98391', '253-637-3737', 'mroscampsf@live.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (17, 'Carlene', 'Englefield', '827 Golf View Junction', 'Tacoma', 'WA', '98402', '253-150-2962', 'cenglefieldg@soup.io');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (18, 'Forster', 'Dober', '46 Upham Parkway', 'Sumner', 'WA', '98352', '509-927-3083', 'fdoberh@craigslist.org');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (19, 'Romeo', 'Padmore', '9217 Duke Alley', 'Puyallup', 'WA', '98371', '425-965-3508', 'rpadmorei@bravesites.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (20, 'Wilmer', 'Stephens', '97 Declaration Trail', 'Bonney Lake', 'WA', '98391', '360-940-4906', 'wstephensj@npr.org');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (21, 'Franky', 'Croxley', '0618 Florence Center', 'Tacoma', 'WA', '98402', '425-997-9738', 'fcroxleyk@dot.gov');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (22, 'Rafaela', 'Lissenden', '21769 Vermont Trail', 'Buckley', 'WA', '98321', '360-752-0659', 'rlissendenl@sciencedaily.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (23, 'Rosetta', 'Bricknall', '44 Surrey Drive', 'Buckley', 'WA', '98321', '360-768-5787', 'rbricknallm@ebay.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (24, 'Natala', 'Cromett', '85 Clarendon Place', 'Bonney Lake', 'WA', '98391', '253-777-4450', 'ncromettn@craigslist.org');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (25, 'Bernadine', 'Machent', '143 Artisan Plaza', 'Sumner', 'WA', '98352', '360-630-9730', 'bmachento@yandex.ru');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (26, 'Catherina', 'Cashin', '38932 Forest Lane', 'Gig Harbor', 'WA', '98332', '253-435-9468', 'ccashinp@aol.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (27, 'Elene', 'Chimenti', '30918 Drewry Point', 'Graham', 'WA', '98338', '253-859-0026', 'echimentiq@amazonaws.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (28, 'Elie', 'Shipp', '51 Lawn Alley', 'Sumner', 'WA', '98352', '425-725-4268', 'eshippr@earthlink.net');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (29, 'Joyce', 'Kubista', '29 Pepper Wood Plaza', 'Lakewood', 'WA', '98439', '206-131-0986', 'jkubistas@goodreads.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (30, 'Junette', 'Meaney', '35613 Dryden Terrace', 'Graham', 'WA', '98338', '253-780-8587', 'jmeaneyt@amazonaws.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (31, 'Paula', 'Aizlewood', '9735 Farwell Trail', 'Buckley', 'WA', '98321', '253-242-7602', 'paizlewoodu@tinypic.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (32, 'Bronny', 'Rickford', '938 Transport Plaza', 'Puyallup', 'WA', '98371', '509-164-4385', 'brickfordv@comcast.net');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (33, 'Darya', 'Isworth', '87 Bluejay Alley', 'Tacoma', 'WA', '98402', '253-737-6948', 'disworthw@about.me');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (34, 'Tarrah', 'Biddulph', '03187 Lotheville Plaza', 'Bonney Lake', 'WA', '98391', '425-238-9001', 'tbiddulphx@ning.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (35, 'Inigo', 'Strowther', '987 Colorado Avenue', 'Tacoma', 'WA', '98402', '206-983-1992', 'istrowthery@list-manage.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (36, 'Ettie', 'Boch', '9364 Columbus Road', 'Tacoma', 'WA', '98402', '253-191-0953', 'ebochz@accuweather.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (37, 'Hirsch', 'Bartocci', '8609 Birchwood Circle', 'Buckley', 'WA', '98321', '509-608-8363', 'hbartocci10@mac.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (38, 'Kipp', 'Wurz', '70073 Bay Lane', 'Spanaway', 'WA', '98387', '253-820-6939', 'kwurz11@ask.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (39, 'Fredrick', 'Spere', '21883 Haas Alley', 'Bonney Lake', 'WA', '98391', '360-474-1534', 'fspere12@state.tx.us');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (40, 'Alard', 'Kohtler', '25 Marcy Street', 'Gig Harbor', 'WA', '98332', '509-649-5836', 'akohtler13@surveymonkey.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (41, 'Lonee', 'Fiddy', '25267 Commercial Place', 'Puyallup', 'WA', '98371', '509-715-2361', 'lfiddy14@infoseek.co.jp');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (42, 'Sloan', 'Mapledorum', '805 Grim Junction', 'Buckley', 'WA', '98321', '206-619-9859', 'smapledorum15@yahoo.co.jp');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (43, 'Maxy', 'Adshad', '89924 Monterey Avenue', 'Sumner', 'WA', '98352', '253-816-1249', 'madshad16@psu.edu');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (44, 'Evanne', 'Bruggeman', '30 Fieldstone Trail', 'Tacoma', 'WA', '98402', '206-259-7666', 'ebruggeman17@blog.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (45, 'Fredi', 'Snarr', '79212 Monument Terrace', 'Sumner', 'WA', '98352', '425-388-8622', 'fsnarr18@hubpages.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (46, 'Mikael', 'Philippon', '23424 Talmadge Point', 'Graham', 'WA', '98338', '253-366-3750', 'mphilippon19@washingtonpost.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (47, 'Bunni', 'Naylor', '1 Mockingbird Avenue', 'Buckley', 'WA', '98321', '509-815-5125', 'bnaylor1a@ox.ac.uk');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (48, 'Cortie', 'MacCrossan', '65742 Brentwood Center', 'Puyallup', 'WA', '98371', '360-487-9118', 'cmaccrossan1b@google.ru');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (49, 'Corrine', 'Mirfield', '545 Kenwood Junction', 'Graham', 'WA', '98338', '253-188-7787', 'cmirfield1c@amazon.com');
insert into Patients (PatientID, PatientFirstName, PatientLastName, PatientAddress, PatientCity, PatientState, PatientZip, PatientPhoneNumber, PatientEmail) values (50, 'Arron', 'Bresnen', '23 Fallview Circle', 'Sumner', 'WA', '98352', '253-829-4428', 'abresnen1d@amazon.de');

-- Summary: Insert sample data into Appointments
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (1, 1, 1, DATE '2020-04-22', 1230, 'Test', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (2, 2, 2, DATE '2020-07-01', 1100, 'Test', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (3, 3, 3, DATE '2020-08-06', 1000, 'Vaccine', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (4, 4, 4, DATE '2020-09-08', 1030, 'Test', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (5, 5, 5, DATE '2020-10-31', 0930, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (6, 6, 6, DATE '2020-08-29', 1200, 'Test', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (7, 7, 7, DATE '2020-02-26', 1030, 'Vaccine', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (8, 8, 8, DATE '2021-01-04', 1330, 'Test', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (9, 9, 9, DATE '2020-12-04', 1300, 'Test', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (10, 2, 10, DATE '2020-08-14', 1430, 'Test', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (11, 7, 11, DATE '2020-04-28', 1530, 'Test', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (12, 1, 12, DATE '2020-07-03', 1200, 'Vaccine', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (13, 2, 13, DATE '2020-08-22', 0930, 'Test', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (14, 8, 14, DATE '2020-09-25', 1030, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (15, 9, 15, DATE '2020-10-10', 1030, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (16, 3, 16, DATE '2020-08-21', 1400, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (17, 3, 17, DATE '2020-02-17', 1430, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (18, 6, 18, DATE '2021-01-12', 1230, 'Vaccine', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (19, 5, 19, DATE '2020-12-11', 1300, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (20, 1, 20, DATE '2020-05-12', 1430, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (21, 5, 28, DATE '2020-07-14', 1530, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (22, 6, 35, DATE '2020-05-28', 1630, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (23, 8, 46, DATE '2020-09-03', 1100, 'Vaccine', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (24, 7, 42, DATE '2020-10-22', 0930, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (25, 8, 26, DATE '2020-11-25', 1000, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (26, 9, 30, DATE '2020-12-10', 1030, 'Test', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (27, 2, 31, DATE '2020-10-21', 1430, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (28, 1, 37, DATE '2020-11-17', 1530, 'Vaccine', 'Y');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (29, 4, 44, DATE '2021-08-12', 1230, 'Test', 'N');
insert into Appointments (AppointmentID, ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType, TestResult) values (30, 4, 45, DATE '2020-12-21', 1100, 'Test', 'N');

-- Summary: Insert sample data into Doctors
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (1, 9, 'Yorgo', 'Janeczek', '173-842-7750', 'yjaneczek0@soundcloud.com', '99000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (2, 10, 'Abigael', 'Morales', '140-748-8747', 'amorales1@ucoz.ru', '91000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (3, 9, 'Ethelind', 'Trytsman', '528-481-2555', 'etrytsman2@pbs.org', '81000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (4, 10, 'Isador', 'Pyrah', '583-543-6813', 'ipyrah3@home.pl', '116000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (5, 4, 'Care', 'Grinham', '153-420-7708', 'cgrinham4@google.es', '118000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (6, 2, 'Gus', 'Wagen', '795-301-0042', 'gwagen5@4shared.com', '117000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (7, 4, 'Lois', 'Thominga', '255-852-8726', 'lthominga6@odnoklassniki.ru', '95000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (8, 3, 'Agace', 'Montrose', '511-879-7386', 'amontrose7@tuttocitta.it', '113000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (9, 10, 'Fifi', 'Merit', '996-597-7062', 'fmerit8@hhs.gov', '100000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (10, 9, 'Alfonse', 'Batteson', '100-954-5629', 'abatteson9@businessweek.com', '81000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (11, 7, 'Bord', 'Jory', '280-603-9190', 'bjorya@ucoz.ru', '108000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (12, 7, 'Mercie', 'Arran', '216-478-7377', 'marranb@cyberchimps.com', '85000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (13, 9, 'Marlo', 'Brundall', '512-810-5341', 'mbrundallc@prnewswire.com', '90000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (14, 6, 'Elsie', 'Wales', '375-611-8784', 'ewalesd@infoseek.co.jp', '105000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (15, 2, 'Analiese', 'Corbridge', '291-625-9518', 'acorbridgee@mit.edu', '80000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (16, 6, 'Ode', 'Muneely', '638-557-9713', 'omuneelyf@odnoklassniki.ru', '102000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (17, 2, 'Eliza', 'Rowling', '970-272-0848', 'erowlingg@illinois.edu', '82000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (18, 5, 'Trula', 'Stoffer', '279-940-8330', 'tstofferh@flavors.me', '104000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (19, 8, 'Samuele', 'Merrifield', '954-549-4405', 'smerrifieldi@dyndns.org', '120000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (20, 10, 'Edd', 'Biggar', '394-994-9808', 'ebiggarj@jugem.jp', '107000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (21, 2, 'Tobit', 'Swift', '757-297-0504', 'tswiftk@home.pl', '107000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (22, 4, 'Kassi', 'Curnokk', '158-719-7228', 'kcurnokkl@ft.com', '97000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (23, 3, 'Nicol', 'Fairn', '526-531-1775', 'nfairnm@statcounter.com', '103000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (24, 4, 'Candy', 'Hinzer', '778-373-2736', 'chinzern@soup.io', '83000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (25, 4, 'Branden', 'Boc', '670-956-9315', 'bboco@hubpages.com', '117000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (26, 10, 'Darcy', 'Venn', '663-497-2242', 'dvennp@sciencedaily.com', '88000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (27, 10, 'Parsifal', 'Pohlak', '922-704-5630', 'ppohlakq@soup.io', '110000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (28, 5, 'Jeffie', 'Clarridge', '879-624-0581', 'jclarridger@jugem.jp', '92000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (29, 3, 'Marco', 'Fowlds', '286-622-8590', 'mfowldss@ebay.co.uk', '104000');
insert into Doctors (DoctorID, ClinicID, DoctorFirstName, DoctorLastName, DoctorPhoneNumber, DoctorEmail, Salary) values (30, 1, 'Manolo', 'Blankenship', '601-199-5864', 'mblankenshipt@utexas.edu', '119000');

-- ***************************
-- Part C
-- ***************************

/*  Query 1
    Purpose: Get the list of patients, their appointments, and the clinic it is at.
    Expected: A table containing patient information, their appointment(s)' 
    information, and details about the clinic the appointment is at.
*/
SELECT PatientFirstName, PatientLastName, PatientPhoneNumber, PatientEmail, 
    AppointmentDate, 
    to_char(to_date (LPAD(AppointmentTime, 4, 0), 'hh24mi'), 'hh:mi AM') "Appointment Time", 
    AppointmentType, ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicPhoneNumber
FROM PATIENTS 
JOIN APPOINTMENTS ON PATIENTS.PatientID = APPOINTMENTS.PatientID 
JOIN CLINICS ON APPOINTMENTS.ClinicID = CLINICS.ClinicID;

/*  Query 2
    Purpose: Get the list of number of positive test results at each originating city (where the patient lives).
    Expected: A table containing the count of positive test results at each originating city. Grouped by city.
    Includes "# of positive test results" and "Originating City".
*/
SELECT COUNT(*) as "# of Positive Test Results", PatientCity as "Originating City"
FROM PATIENTS
WHERE PATIENTS.PatientID IN (SELECT APPOINTMENTS.PatientID FROM APPOINTMENTS WHERE APPOINTMENTS.TestResult = 'Y')
GROUP BY PatientCity ORDER BY PatientCity Asc;

/*  Query 3
    Purpose: Get the list of Doctors whose salary is larger than the 
    average salary of all doctors.
    Expected: A table containing the list of Doctor information where
    salaries > avg(salaries). Includes all the columns from Doctors.
*/
SELECT *
From Doctors 
Where Salary > (Select avg(Salary) From Doctors);

/*  Query 4
    Purpose: Get the list of appointments and test results with matching 
    appointment type and where the result was negative or the vaccine was not yet administered.
    Expected: A table containing the list of appointments combined with test 
    results that have the same test type and a negative result.
    Includes all the columns from Appointments.
*/
SELECT *
From Appointments
Where TestResult = 'N';

/*  Query 5
    Purpose: Get the list of doctors whose salary exceed 85000 but not 95000.
    Expected: A table containing the list of doctors that have salary > 85000
    and salary < 95000. Includes all the columns from Doctors.
    Note: "MINUS" is equivalent to "EXCEPT" for Oracle DBMS.
*/
SELECT *
From Doctors
Where Salary > 85000

MINUS

Select * 
From Doctors 
Where Salary > 95000;

/*  Query 6
    Purpose: Get the list of Clinics who offer Drive-in-tests and are not Adult-only
    Expected: A table containing the clinic information of those who have drive-in tests
    and are available to all ages. Gets all the columns from Clinics.
*/
SELECT *
From Clinics
Where ClinicAdultOnly = 'N' AND ClinicDriveInTest = 'Y';

/*  Query 7
    Purpose: Get the list of clinics who are open after 7 PM and offer Drive-In tests.
    Expected: A table containing clinic information of those who are open after 7PM
    and offer drive-in tests.
    Includes ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, 
    ClinicDriveInTest, ClinicPhoneNumber, and Open and Close Times.
*/
SELECT ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, 
ClinicDriveInTest, ClinicPhoneNumber,
to_char(to_date (LPAD(TestingStartTime, 4, 0), 'hh24mi'), 'hh:mi AM') as "Opening Time",
to_char(to_date (LPAD(TestingEndTime, 4, 0), 'hh24mi'), 'hh:mi AM') as "Closing Time"
From Clinics
Where TestingEndTime > 1900 And ClinicDriveInTest = 'Y';

/*  Query 8
    Purpose: Get the amount of clinics available by each city.
    Expected: A table containing how many clinics are established at each city.
    Includes "# of clinics", and "ClinicCity".
*/
SELECT Count(Clinics.ClinicID) as "# of Clinics", ClinicCity
From Clinics
GROUP BY ClinicCity;

/*  Query 9
    Purpose: Get the list of appointments that were made after July 1st, 2020.
    Order by descending date.
    Expected: A table containing AppointmentID, ClinicID, PatientID, AppointmentDate,
    and AppointmentTime for appointments made after 07/01/2020.
*/
SELECT AppointmentID, ClinicID, PatientID, AppointmentDate, 
to_char(to_date (LPAD(AppointmentTime, 4, 0), 'hh24mi'), 'hh:mi AM') as "Appointment Time"
From Appointments
Where AppointmentDate > Date '2020-07-01'
Order by AppointmentDate Desc;

/*  Query 10
    Purpose: Get the number of registered patients by each city.
    Expected: A table containing how many people are registered into the 
    database by each city. Includes "# of people registered" and PatientCity.
*/
SELECT COUNT(PatientID) as "# of people registered", PatientCity
FROM PATIENTS
Group By PatientCity
Order By PatientCity Asc;

-- End of Script (February 14, 2021)