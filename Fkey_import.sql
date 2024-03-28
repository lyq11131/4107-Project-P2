-- 更新事实表中的 DemographicsID
UPDATE PatientHealthFacts
SET DemographicsID = Demographics.DemographicsID
FROM Demographics
WHERE PatientHealthFacts.PatientID = Demographics.DemographicsID;

-- 更新事实表中的 NutrientIntakeID
UPDATE PatientHealthFacts
SET NutrientIntakeID = NutrientIntake.NutrientIntakeID
FROM NutrientIntake
WHERE PatientHealthFacts.PatientID = NutrientIntake.NutrientIntakeID;

-- 更新事实表中的 livingHabitsID
UPDATE PatientHealthFacts
SET livingHabitsID = livingHabits.livingHabitsID
FROM livingHabits
WHERE PatientHealthFacts.PatientID = livingHabits.livingHabitsID;

-- 更新事实表中的 MedicalConditionID
UPDATE PatientHealthFacts
SET MedicalConditionID = MedicalCondition.MedicalConditionID
FROM MedicalCondition
WHERE PatientHealthFacts.PatientID = MedicalCondition.MedicalConditionID;
