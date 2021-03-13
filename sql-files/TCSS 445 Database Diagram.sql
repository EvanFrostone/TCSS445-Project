CREATE TABLE [Clinics] (
  [ClinicID] int PRIMARY KEY,
  [ClinicName] varchar(100),
  [ClinicAddress] varchar(100),
  [ClinicCity] varchar(100),
  [ClinicZip] varchar(100),
  [ClinicAdultOnly] boolean,
  [ClinicDriveinTest] boolean,
  [ClinicPhoneNumber] varchar(12)
)
GO

CREATE TABLE [Doctors] (
  [DoctorID] int PRIMARY KEY,
  [ClinicID] int,
  [DoctorFirstName] varchar(50),
  [DoctorLastName] varchar(50),
  [DoctorPhoneNumber] varchar(12),
  [DoctorEmail] varchar(100)
)
GO

CREATE TABLE [TestingHours] (
  [HoursID] int PRIMARY KEY,
  [ClinicID] int,
  [TestingDay] integer,
  [TestingStartTime] datetime,
  [TestingEndStime] datetime
)
GO

CREATE TABLE [Patients] (
  [PatientID] int PRIMARY KEY,
  [PatientFirstName] varchar(100),
  [PatientLastName] varchar(100),
  [PatientAddress] varchar(100),
  [PatientCity] varchar(100),
  [PatientState] varchar(100),
  [PatientZip] int,
  [PatientPhoneNumber] varchar(12),
  [PatientEmail] varchar(100)
)
GO

CREATE TABLE [Appointments] (
  [AppointmentID] int PRIMARY KEY,
  [ClinicID] int,
  [PatientID] int,
  [AppointmentDate] datetime,
  [ApppointmentTime] datetime,
  [AppoitnmentType] varchar(50)
)
GO

CREATE TABLE [TestResults] (
  [TestID] int PRIMARY KEY,
  [DoctorID] int,
  [AppointmentID] int,
  [TestDate] datetime,
  [TestResult] boolean,
  [TestType] varchar(10)
)
GO

ALTER TABLE [Doctors] ADD FOREIGN KEY ([ClinicID]) REFERENCES [Clinics] ([ClinicID])
GO

ALTER TABLE [TestingHours] ADD FOREIGN KEY ([ClinicID]) REFERENCES [Clinics] ([ClinicID])
GO

ALTER TABLE [TestResults] ADD FOREIGN KEY ([AppointmentID]) REFERENCES [Appointments] ([AppointmentID])
GO

ALTER TABLE [Appointments] ADD FOREIGN KEY ([ClinicID]) REFERENCES [Clinics] ([ClinicID])
GO

ALTER TABLE [Appointments] ADD FOREIGN KEY ([PatientID]) REFERENCES [Patients] ([PatientID])
GO

ALTER TABLE [TestResults] ADD FOREIGN KEY ([DoctorID]) REFERENCES [Doctors] ([DoctorID])
GO
