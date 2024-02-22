
-- Dimensional Model, INT Schema
-- r sherman
-- 2022-11-24
-- updated 2022-11-26 12:40pm

-- DROP TABLE dim_arrest_borough;

CREATE TABLE dim_arrest_borough (
	borough_sk int NOT NULL IDENTITY(1,1),
	boro_code char(1) NULL,
	borough varchar(80) NULL,
	DI_JobID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NOT NULL,
	PRIMARY KEY (borough_sk)
);

-- DROP TABLE Dim_BODILY_INJURY;
CREATE TABLE Dim_BODILY_INJURY (
	BODILY_INJURY_SK int NOT NULL IDENTITY(1,1),
	BODILY_INJURY varchar(80) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (BODILY_INJURY_SK)
);

-- DROP TABLE Dim_COMPLAINT;
CREATE TABLE Dim_COMPLAINT (
	COMPLAINT_SK int NOT NULL IDENTITY(1,1),
	COMPLAINT varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (COMPLAINT_SK)
);

-- DROP TABLE Dim_CONTRIBUTING_FACTOR;
CREATE TABLE Dim_CONTRIBUTING_FACTOR (
	CONTRIBUTING_FACTOR_SK int NOT NULL IDENTITY(1,1),
	CONTRIBUTING_FACTOR varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (CONTRIBUTING_FACTOR_SK)
);

-- DROP TABLE Dim_DRIVER_LICENSE_JURISDICTION;
CREATE TABLE Dim_DRIVER_LICENSE_JURISDICTION (
	DRIVER_LICENSE_JURISDICTION_SK int NOT NULL IDENTITY(1,1),
	DRIVER_LICENSE_JURISDICTION varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (DRIVER_LICENSE_JURISDICTION_SK)
);

-- DROP TABLE Dim_DRIVER_LICENSE_STATUS;
CREATE TABLE Dim_DRIVER_LICENSE_STATUS (
	DRIVER_LICENSE_STATUS_SK int NOT NULL IDENTITY(1,1),
	DRIVER_LICENSE_STATUS varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (DRIVER_LICENSE_STATUS_SK)
);

-- DROP TABLE Dim_EJECTION;
CREATE TABLE Dim_EJECTION (
	EJECTION_SK int NOT NULL IDENTITY(1,1),
	EJECTION varchar(80) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (EJECTION_SK)
);

-- DROP TABLE Dim_EMOTIONAL_STATUS;
CREATE TABLE Dim_EMOTIONAL_STATUS (
	EMOTIONAL_STATUS_SK int NOT NULL IDENTITY(1,1),
	EMOTIONAL_STATUS varchar(80) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (EMOTIONAL_STATUS_SK)
);

-- DROP TABLE Dim_PED_ACTION;
CREATE TABLE Dim_PED_ACTION (
	PED_ACTION_SK int NOT NULL IDENTITY(1,1),
	PED_ACTION varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (PED_ACTION_SK)
);

-- DROP TABLE Dim_PED_LOCATION;
CREATE TABLE Dim_PED_LOCATION (
	PED_LOCATION_SK int NOT NULL IDENTITY(1,1),
	PED_LOCATION varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (PED_LOCATION_SK)
);

-- DROP TABLE Dim_PED_ROLE;
CREATE TABLE Dim_PED_ROLE (
	PED_ROLE_SK int NOT NULL IDENTITY(1,1),
	PED_ROLE varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (PED_ROLE_SK)
);

-- DROP TABLE Dim_PERSON_INJURY;
CREATE TABLE Dim_PERSON_INJURY (
	PERSON_INJURY_SK int NOT NULL IDENTITY(1,1),
	PERSON_INJURY varchar(80) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (PERSON_INJURY_SK)
);

-- DROP TABLE Dim_PERSON_SEX;
CREATE TABLE Dim_PERSON_SEX (
	PERSON_SEX_SK int NOT NULL IDENTITY(1,1),
	PERSON_SEX varchar(10) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (PERSON_SEX_SK)
);


-- DROP TABLE Dim_PersonType;
CREATE TABLE Dim_PersonType (
	PERSON_TYPE_SK int NOT NULL IDENTITY(1,1),
	PERSON_TYPE varchar(80) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (PERSON_TYPE_SK)
);

-- DROP TABLE Dim_POINT_OF_IMPACT;
CREATE TABLE Dim_POINT_OF_IMPACT (
	POINT_OF_IMPACT_SK int NOT NULL IDENTITY(1,1),
	POINT_OF_IMPACT varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (POINT_OF_IMPACT_SK)
);

-- DROP TABLE Dim_POSITION_IN_VEHICLE;
CREATE TABLE Dim_POSITION_IN_VEHICLE (
	POSITION_IN_VEHICLE_SK int NOT NULL IDENTITY(1,1),
	POSITION_IN_VEHICLE varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (POSITION_IN_VEHICLE_SK)
);

-- DROP TABLE Dim_PRE_CRASH;
CREATE TABLE Dim_PRE_CRASH (
	PRE_CRASH_SK int NOT NULL IDENTITY(1,1),
	PRE_CRASH varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (PRE_CRASH_SK)
);

-- DROP TABLE Dim_SAFETY_EQUIPMENT;
CREATE TABLE Dim_SAFETY_EQUIPMENT (
	SAFETY_EQUIPMENT_SK int NOT NULL IDENTITY(1,1),
	SAFETY_EQUIPMENT varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (SAFETY_EQUIPMENT_SK)
);

-- DROP TABLE Dim_STATE_REGISTRATION;
CREATE TABLE Dim_STATE_REGISTRATION (
	STATE_REGISTRATION_SK int NOT NULL IDENTITY(1,1),
	STATE_REGISTRATION varchar(80) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (STATE_REGISTRATION_SK)
);

-- DROP TABLE Dim_TRAVEL_DIRECTION;
CREATE TABLE Dim_TRAVEL_DIRECTION (
	TRAVEL_DIRECTION_SK int NOT NULL IDENTITY(1,1),
	TRAVEL_DIRECTION varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (TRAVEL_DIRECTION_SK)
);

-- DROP TABLE Dim_VEHICLE_DAMAGE;
CREATE TABLE Dim_VEHICLE_DAMAGE (
	VEHICLE_DAMAGE_SK int NOT NULL IDENTITY(1,1),
	VEHICLE_DAMAGE varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (VEHICLE_DAMAGE_SK)
);

-- DROP TABLE Dim_VEHICLE_MAKE;
CREATE TABLE Dim_VEHICLE_MAKE (
	VEHICLE_MAKE_SK int NOT NULL IDENTITY(1,1),
	VEHICLE_MAKE varchar(80) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (VEHICLE_MAKE_SK)
);

-- DROP TABLE Dim_VEHICLE_MODEL;
CREATE TABLE Dim_VEHICLE_MODEL (
	VEHICLE_MODEL_SK int NOT NULL IDENTITY(1,1),
	VEHICLE_MODEL varchar(80) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (VEHICLE_MODEL_SK)
);

-- DROP TABLE Dim_VEHICLE_TYPE;
CREATE TABLE Dim_VEHICLE_TYPE (
	VEHICLE_TYPE_SK int NOT NULL IDENTITY(1,1),
	VEHICLE_TYPE varchar(80) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (VEHICLE_TYPE_SK)
);

-- DROP TABLE dim_vehicle_type_code;
CREATE TABLE dim_vehicle_type_code (
	vehicle_type_code_SK int NOT NULL IDENTITY(1,1),
	vehicle_type_code varchar(80) NULL,
	DI_JobID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NOT NULL,
	PRIMARY KEY (vehicle_type_code_SK)
);

-- DROP TABLE ERR_Model_Year;
CREATE TABLE ERR_Model_Year (
	UNIQUE_ID int NULL,
	COLLISION_ID int NULL,
	CRASH_DATE datetime NULL,
	VEHICLE_YEAR varchar(80) NULL
);


-- DROP TABLE Dim_VEHICLE_DAMAGE;
CREATE TABLE Dim_PUBLIC_PROPERTY_DAMAGE (
	PUBLIC_PROPERTY_DAMAGE_SK int NOT NULL IDENTITY(1,1),
	PUBLIC_PROPERTY_DAMAGE varchar(255) NULL,
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
	PRIMARY KEY (PUBLIC_PROPERTY_DAMAGE_SK)
);

--------------------------------------------------------------------------------------------------------
-- Facts
--------------------------------------------------------------------------------------------------------

-- DROP TABLE fct_collision_crashes;
CREATE TABLE fct_collision_crashes (
	collision_sk bigint NOT NULL,
	collision_id bigint NULL,

	collision_dt datetime NULL,
	collision_dt_sk int NULL,
	collision_day date NULL,
	collision_time time NULL,
	collision_hour int NULL,
	collision_dayoftheweek int NULL,

	borough_sk int NULL,
	borough varchar(80) NULL,
	zip_code varchar(40) NULL,
	off_street_name varchar(40) NULL,
	on_street_name varchar(40) NULL,
	cross_street_name varchar(40) NULL,
	latitude numeric(24,6) NULL,
	longitude numeric(24,6) NULL,
	location varchar(256) NULL,
	number_of_cyclist_injured int NULL,
	number_of_cyclist_killed int NULL,
	number_of_motorist_injured int NULL,
	number_of_motorist_killed int NULL,
	number_of_pedestrians_injured int NULL,
	number_of_pedestrians_killed int NULL,
	number_of_persons_injured int NULL,
	number_of_persons_killed int NULL,
	number_of_vehicles_involved int NULL,
	number_of_contributing_factors int NULL,

	DI_JobID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY (collision_sk)
);

-- DROP TABLE fct_collision_crashes_vehicles;
CREATE TABLE fct_collision_crashes_vehicles (
	collision_sk bigint NOT NULL,
	collision_id bigint not NULL,

	Vehicle_number int not NULL,
	vehicle_type_code_SK int NULL,
	contributing_factor_vehicle_sk int NOT NULL,

	DI_JobID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NOT NULL,
	PRIMARY KEY (collision_sk,Vehicle_number )
);

-- DROP TABLE fct_collision_persons;
CREATE TABLE fct_collision_persons (
	UNIQUE_ID int NOT NULL,

	COLLISION_ID int NULL,
	PERSON_ID varchar(80) NULL,

	PERSON_TYPE_SK int NOT NULL,
	PERSON_INJURY_SK int NOT NULL,
	VEHICLE_ID varchar(80) NULL,
	PERSON_AGE int NULL,
	EJECTION_SK int NOT NULL,
	EMOTIONAL_STATUS_SK int NOT NULL,
	BODILY_INJURY_SK int NOT NULL,
	POSITION_IN_VEHICLE_SK int NOT NULL,
	SAFETY_EQUIPMENT_SK int NOT NULL,
	PED_LOCATION_SK int NOT NULL,
	PED_ACTION_SK int NOT NULL,
	COMPLAINT_SK int NOT NULL,
	PED_ROLE_SK int NOT NULL,
	PERSON_SEX_SK int NOT NULL,

	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
                PRIMARY KEY (UNIQUE_ID)
);

-- DROP TABLE fct_collision_persons_contributing_factors;
CREATE TABLE fct_collision_persons_contributing_factors (
	TABLE_SK int NOT NULL IDENTITY(1,1),

	UNIQUE_ID int NOT NULL,
	COLLISION_ID int NULL,
	PERSON_ID varchar(80) NULL,

	FACTOR_NUMBER int NULL,
	CONTRIBUTING_FACTOR_SK int NOT NULL,

	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NULL,
                PRIMARY KEY (TABLE_SK)
);

-- DROP TABLE fct_Collisions_Vehicles;
CREATE TABLE fct_Collisions_Vehicles (
	UNIQUE_ID int NOT NULL,
	COLLISION_ID int NULL,

	VEHICLE_ID varchar(80) NULL,

	STATE_REGISTRATION_SK int NOT NULL,     --
	VEHICLE_TYPE_SK int NOT NULL,               --
	VEHICLE_MAKE_SK int NOT NULL,
	VEHICLE_MODEL_SK int NOT NULL,
	VEHICLE_YEAR varchar(80) NULL,
	TRAVEL_DIRECTION_SK int NOT NULL,        -- this needs to be cleaned
	VEHICLE_OCCUPANTS int NULL,
                PERSON_SEX_SK int NOT NULL,
	DRIVER_LICENSE_STATUS_SK int NOT NULL,
	DRIVER_LICENSE_JURISDICTION_SK int NOT NULL,
	PRE_CRASH_SK int NOT NULL,
	POINT_OF_IMPACT_SK int NOT NULL,
	PUBLIC_PROPERTY_DAMAGE_SK int NOT NULL,
	PUBLIC_PROPERTY_DAMAGE_TYPE varchar(1024) NULL,   -- note: almost no repeating values

	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NOT NULL,
	PRIMARY KEY (UNIQUE_ID)
);

-- DROP TABLE fct_Collisions_Vehicles_Contributing_Factors;
CREATE TABLE fct_Collisions_Vehicles_Contributing_Factors (
	TABLE_SK int NOT NULL IDENTITY(1,1),

	UNIQUE_ID int NOT NULL,
	COLLISION_ID int NULL,
	VEHICLE_ID varchar(80) NULL,

	VEHICLE_CONTRIBUTING_NUMBER int NULL,
	CONTRIBUTING_FACTOR_SK int NOT NULL,

	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NOT NULL,
	PRIMARY KEY (TABLE_SK)
);

-- DROP TABLE fct_Collisions_Vehicles_Vehicle_Damage;
CREATE TABLE fct_Collisions_Vehicles_Vehicle_Damage (
	TABLE_SK int NOT NULL IDENTITY(1,1),

	UNIQUE_ID int NOT NULL,
	COLLISION_ID int NULL,
	VEHICLE_ID varchar(80) NULL,
	VEHICLE_DAMAGE_NUMBER int NULL,
	VEHICLE_DAMAGE_SK int NOT NULL,

	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT (getdate()) NOT NULL,
	PRIMARY KEY (TABLE_SK)
);

