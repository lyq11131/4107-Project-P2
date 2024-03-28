-- Update the DemographicsID in the fact table.
UPDATE PatientHealthFacts
SET DemographicsID = Demographics.DemographicsID
FROM Demographics
WHERE PatientHealthFacts.PatientID = Demographics.DemographicsID;

-- Update the NutrientIntakeID in the fact table.
UPDATE PatientHealthFacts
SET NutrientIntakeID = NutrientIntake.NutrientIntakeID
FROM NutrientIntake
WHERE PatientHealthFacts.PatientID = NutrientIntake.NutrientIntakeID;

-- Update the livingHabitsID in the fact table. 
UPDATE PatientHealthFacts
SET livingHabitsID = livingHabits.livingHabitsID
FROM livingHabits
WHERE PatientHealthFacts.PatientID = livingHabits.livingHabitsID;

-- Update the MedicalConditionID in the fact table. 
UPDATE PatientHealthFacts
SET MedicalConditionID = MedicalCondition.MedicalConditionID
FROM MedicalCondition
WHERE PatientHealthFacts.PatientID = MedicalCondition.MedicalConditionID;
