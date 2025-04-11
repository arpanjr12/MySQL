-- patients table created here

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender CHAR(1),
    contact VARCHAR(15),
    address TEXT
);

-- doctors table created here

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    contact VARCHAR(15),
    availability VARCHAR(100)
);

-- Appointments table created here

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    reason TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Prescriptions table created here

CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY,
    appointment_id INT,
    medicine_name VARCHAR(100),
    dosage VARCHAR(100),
    duration VARCHAR(50),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);







--  data insert into patients 
INSERT INTO Patients VALUES (1, 'John Doe', 35, 'M', '1254785698', 'New York'),
(2, 'ABRD MAC', 28, 'F', '4523650125', 'USA'),
(3, 'DRTF GUF', 38, 'M', '8745665236', 'USA'), 
(4, 'Rajiv Kumar', 42, 'M', '9831123456', 'Delhi'),
(5, 'Maria Gomez', 31, 'F', '9123456789', 'Madrid'),
(6, 'Tom Hanks', 45, 'M', '8899001122', 'Chicago'),
(7, 'Li Wei', 27, 'M', '9988776655', 'Beijing'),
(8, 'Nina Patel', 33, 'F', '9112233445', 'Mumbai'),
(9, 'Ahmed Ali', 36, 'M', '9334455667', 'Dubai'),
(10, 'Sophia Loren', 40, 'F', '9445566778', 'Rome');



-- DATA INSERT INTO DOCTORS

INSERT INTO Doctors (doctor_id, name, specialization, contact, availability) VALUES
(101, 'Dr. Smith', 'Cardiology', '2315485698', 'Mon-Fri 9AM-5PM'),
(102, 'Dr. Alice Brown', 'Neurology', '9876543211', 'Mon-Wed 10AM-4PM'),
(103, 'Dr. Raj Mehta', 'Orthopedics', '9123456780', 'Tue-Thu 11AM-6PM'),
(104, 'Dr. Maria Rossi', 'Pediatrics', '9012345678', 'Mon-Fri 8AM-2PM'),
(105, 'Dr. Liu Chang', 'Dermatology', '9898989898', 'Wed-Fri 1PM-6PM'),
(106, 'Dr. Ahmed Khan', 'General Medicine', '9332211000', 'Mon-Sat 9AM-1PM'),
(107, 'Dr. John Davis', 'ENT', '9776655443', 'Tue-Sat 10AM-3PM'),
(108, 'Dr. Nina Sharma', 'Gynecology', '9556677889', 'Mon-Fri 9AM-5PM'),
(109, 'Dr. Pedro Garcia', 'Urology', '9887766554', 'Mon-Thu 10AM-2PM'),
(110, 'Dr. Emily White', 'Psychiatry', '9001122334', 'Tue-Fri 12PM-6PM');


--  insert data into Appointments
INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason) VALUES
(1001, 1, 101, '2025-04-12', '10:00:00', 'Chest Pain'),
(1002, 2, 102, '2025-04-13', '11:30:00', 'Migraine Headache'),
(1003, 3, 103, '2025-04-14', '09:15:00', 'Back Pain'),
(1004, 4, 104, '2025-04-14', '10:45:00', 'Fever and Cold'),
(1005, 5, 105, '2025-04-15', '01:00:00', 'Skin Rash'),
(1006, 6, 106, '2025-04-15', '12:00:00', 'General Checkup'),
(1007, 7, 107, '2025-04-16', '02:30:00', 'Ear Pain'),
(1008, 8, 108, '2025-04-16', '03:15:00', 'Pregnancy Consultation'),
(1009, 9, 109, '2025-04-17', '11:00:00', 'Kidney Stones'),
(1010, 10, 110, '2025-04-17', '04:00:00', 'Anxiety and Stress');


-- INSERT DATA INTO Prescriptions
INSERT INTO Prescriptions (prescription_id, appointment_id, medicine_name, dosage, duration) VALUES
(2001, 1001, 'Aspirin', '75mg', '7 days'),
(2002, 1002, 'Paracetamol', '500mg', '5 days'),
(2003, 1003, 'Ibuprofen', '400mg', '10 days'),
(2004, 1004, 'Cetrizine', '10mg', '3 days'),
(2005, 1005, 'Hydrocortisone Cream', 'Apply twice daily', '7 days'),
(2006, 1006, 'Multivitamin', '1 tablet', '15 days'),
(2007, 1007, 'Ofloxacin Ear Drops', '3 drops', '5 days'),
(2008, 1008, 'Folic Acid', '5mg', '30 days'),
(2009, 1009, 'Tamsulosin', '0.4mg', '14 days'),
(2010, 1010, 'Sertraline', '50mg', '30 days');






SELECT doctor_id, name, specialization, availability
FROM Doctors;





SELECT p.name AS patient_name, a.appointment_date, d.name AS doctor_name, a.reason
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE p.patient_id = 1;




--  Medicines TABLE CREATED HERE
CREATE TABLE Medicines (
    medicine_name VARCHAR(100) PRIMARY KEY,
    stock_quantity INT
);


SELECT * FROM Medicines WHERE stock_quantity < 10;
