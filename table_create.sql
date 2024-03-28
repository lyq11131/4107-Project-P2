-- Create Demographics Dimension table
CREATE TABLE Demographics (
 DemographicsID INT PRIMARY KEY,
 Age FLOAT,
 Gender BOOLEAN,
 Hormonal_Changes BOOLEAN,
 Family_History BOOLEAN,
 Ethnicity_African_American BOOLEAN,
 Ethnicity_Asian BOOLEAN,
 Ethnicity_Caucasian BOOLEAN,
 BodyWeight BOOLEAN
);

-- Create NutrientIntake Dimension table
CREATE TABLE NutrientIntake (
 NutrientIntakeID INT PRIMARY KEY,
 Calcium_Intake BOOLEAN,
 Vitamin_D_Intake BOOLEAN
);

-- Create livingHabits Dimension table
CREATE TABLE livingHabits (
 livingHabitsID INT PRIMARY KEY,
 Physical_Activity BOOLEAN,
 Smoking BOOLEAN,
 Alcohol_Consumption BOOLEAN
);

-- Create MedicalCondition Dimension table
CREATE TABLE MedicalCondition (
 MedicalConditionID INT PRIMARY KEY,
 MedicalConditions_Rheumatoid_Arthritis BOOLEAN,
 MedicalConditions_None BOOLEAN,
 MedicalConditions_Hyperthyroidism BOOLEAN,
 Medications BOOLEAN,
 Prior_Fractures BOOLEAN
);

-- Create PatientHealthFacts fact table
CREATE TABLE PatientHealthFacts (
 PatientID INT PRIMARY KEY,
 DemographicsID INT,
 NutrientIntakeID INT,
 livingHabitsID INT,
 MedicalConditionID INT,
 OsteoporosisIncidence BOOLEAN,
 FOREIGN KEY (DemographicsID) REFERENCES Demographics(DemographicsID),
 FOREIGN KEY (NutrientIntakeID) REFERENCES NutrientIntake(NutrientIntakeID),
 FOREIGN KEY (livingHabitsID) REFERENCES livingHabits(livingHabitsID),
 FOREIGN KEY (MedicalConditionID) REFERENCES MedicalCondition(MedicalConditionID)
);
