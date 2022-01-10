
CREATE MEMORY TABLE patients
(
id_patient BIGINT PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY (START WITH 0, INCREMENT BY 1),
name VARCHAR(35) NOT NULL,
surname VARCHAR(50) NOT NULL,
middle_name VARCHAR(50) NOT NULL,
phone_number VARCHAR(20) NULL
);

CREATE MEMORY TABLE doctors
(
id_doctor BIGINT PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY (START WITH 0, INCREMENT BY 1),
name VARCHAR(35) NOT NULL,
surname VARCHAR(50) NOT NULL,
middle_name VARCHAR(50) NOT NULL,
specialty VARCHAR(30) NOT NULL
);

CREATE MEMORY TABLE priority
(
id_priority BIGINT PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY (START WITH 0, INCREMENT BY 1),
name VARCHAR(35) NOT NULL
);

CREATE MEMORY TABLE recipe
(
id_recipe BIGINT PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY (START WITH 0, INCREMENT BY 1),
descriptions VARCHAR(2147483647) NOT NULL,
date_create DATE NOT NULL,
term DATE NOT NULL,
id_doctor BIGINT NOT NULL,
id_patient BIGINT NOT NULL,
id_priority BIGINT NOT NULL,
FOREIGN KEY (id_doctor) REFERENCES doctors,
FOREIGN KEY (id_patient) REFERENCES patients,
FOREIGN KEY (id_priority) REFERENCES priority
);
COMMIT;