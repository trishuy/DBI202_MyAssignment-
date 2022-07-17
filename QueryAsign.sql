-- QUERY --


-- INDEXES --

CREATE INDEX Stu_Name ON Students([Last_Name], [First_Name])

CREATE INDEX Lec_Name ON Lectures([Last_Name], [First_Name])

SELECT * FROM Students WHERE [Last_Name] = N'Nguyễn Võ' AND [First_Name] = 'A'

-- VIEW --

CREATE VIEW ViewAssessAssessSystem AS
SELECT Classes.ClassID, Enroll.GrID, AsgID, Semester, [Start_Date], [End_Date], Assess.AssID, [AS].CouID, [AS].CatID, [Num_of_Ques], Duration, [Weigh]
FROM 
	Classes INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			INNER JOIN Assess ON Classes.ClassID = Assess.ClassID
			INNER JOIN [Assessment_System] AS [AS] ON [AS].AssID = Assess.AssID

SELECT * FROM ViewAssessAssessSystem

-- TRIGGER -- 

CREATE TRIGGER ViewAverage ON [ViewStudentsClasses]
AFTER INSERT, UPDATE
AS
	DECLARE @AVG FLOAT;
	DECLARE @CLASS VARCHAR(50);
	DECLARE @STU VARCHAR(50);
	DECLARE @AVERAGE FLOAT;
	DECLARE @STA VARCHAR(50);
	SELECT @STU = StudentID, @CLASS = ClassID, @AVG = Average, @STA = [Status] FROM inserted;

	SELECT @AVERAGE = SUM(Score * [Weigh])  
	FROM 
		JOINGroupsStudents AS J INNER JOIN Enroll ON J.GrID = Enroll.GrID
					INNER JOIN [dbo].ViewAssessAssessSystem AS VAA ON VAA.ClassID = Enroll.ClassID AND VAA.GrID = J.GrID
					INNER JOIN Grade ON J.StudentID = Grade.StudentID AND Grade.AssID = VAA.AssID
	WHERE J.StudentID = @STU AND VAA.ClassID = @CLASS
	GROUP BY J.StudentID, VAA.ClassID, VAA.CouID, VAA.GrID
	IF @AVG <> @AVERAGE
	BEGIN
		PRINT 'Average score added to [View] was not corresponding to the average scored counted from [Grade]'
		ROLLBACK TRAN
	END
	ELSE IF (NOT @STA = 'PASSED') AND (NOT @STA = 'NOT PASSED')
	BEGIN
		PRINT 'Status must be passed or not passed'
		ROLLBACK TRAN
	END
	ELSE IF (@AVG <= 4 AND @STA = 'PASSED') OR (@AVG > 4 AND @STA = 'NOT PASSED')
	BEGIN
		PRINT 'Incorrect Status'
		ROLLBACK TRAN
	END
	
	UPDATE [ViewStudentsClasses] SET Average = 8.986, [Status] = 'ASDFK' WHERE StudentID = 'HE00001' AND ClassID = 'FA21APRO'

	SELECT * FROM [ViewStudentsClasses]

-- STORED PROCEDURE -- 

CREATE PROCEDURE CountStudent
	@GR VARCHAR(50),
	@COUNT INT OUT
AS
BEGIN
	SELECT @COUNT = COUNT(StudentID) FROM JOINGroupsStudents WHERE GrID = @GR
END

DECLARE @NumOfStu INT = 0;
EXEC CountStudent @GR = 'IA1604', @COUNT = @NumOfStu OUT
PRINT @NumOfStu;


-- 10 REQUIRED QUERIES -- 

-- 1: A QUERY THAT USES ORDER BY --

SELECT * FROM Students ORDER BY [First_Name], [Last_Name]


-- 2: A QUERY THAT USES INNER JOIN --

SELECT Students.StudentID, [Last_Name], [First_Name], Classes.ClassID, AsgID, Semester, [Start_Date], [End_Date] 
FROM
	Students INNER JOIN JOINGroupsStudents ON Students.StudentID = JOINGroupsStudents.StudentID
			 INNER JOIN Enroll ON Enroll.GrID = JOINGroupsStudents.GrID
			 INNER JOIN Classes ON Enroll.ClassID = Classes.ClassID


-- 3: A QUERY THAT ESES AGGREGATE FUNCTION --

SELECT Lectures.LecID, [Last_Name], [First_Name], Semester, COUNT(Assignment.AsgID) AS Assigned 
FROM 
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN Classes ON Assignment.AsgID = Classes.AsgID
GROUP BY Lectures.LecID, [Last_Name], [First_Name], Semester


-- 4: A QUERY THAT USES GROUP BY AND HAVING -- 

SELECT Lectures.LecID, [Last_Name], [First_Name], Semester, Enroll.GrID, Enroll.ClassID, COUNT(StudentID) AS [Num of Students]    
FROM
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN Classes ON Classes.AsgID = Assignment.AsgID
			  INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			  INNER JOIN JOINGroupsStudents ON Enroll.GrID = JOINGroupsStudents.GrID
GROUP BY Lectures.LecID, [Last_Name], [First_Name], Semester, Enroll.GrID, Enroll.ClassID
HAVING Lectures.LecID = 'GVA'


-- 5: A QUERY THAT USES A SUB-QUERY AS A RELATION --

SELECT LEC.LecID, LEC.[Last_Name], LEC.[First_Name], Major, Semester, CouID, [AS].CatID
FROM 
	(SELECT LecID,[Last_Name], [First_Name] FROM Lectures) AS LEC
		INNER JOIN 
			Assignment 
			ON Assignment.LecID = LEC.LecID
		INNER JOIN 
			(SELECT ClassID, AsgID, Semester FROM Classes) AS CLASS 
			ON Assignment.AsgID = CLASS.AsgID
		INNER JOIN 
			Assess 
			ON Assess.ClassID = CLASS.ClassID
		INNER JOIN
			(SELECT AssID, CouID, CatID FROM [Assessment_System]) AS [AS]
			ON Assess.AssID = [AS].AssID
		INNER JOIN 
			Categories
			ON [AS].CatID = Categories.CatID
ORDER BY LEC.LecID, Major, Semester, CatID


-- 6: A QUERY THAT USES A SUB-QUERY IN THE WHERE CLAUSE --

SELECT J.StudentID, J.GrID, Enroll.ClassID, CONCAT([Last_Name], ' ', [First_Name]) AS Lecture, CouID, CatID, Score, [Date]  
FROM
	JOINGroupsStudents AS J INNER JOIN Enroll ON J.GrID = Enroll.GrID
				INNER JOIN ViewAssessAssessSystem AS VAA ON Enroll.ClassID = VAA.ClassID AND Enroll.GrID = VAA.GrID
				INNER JOIN Assignment ON Assignment.AsgID = VAA.AsgID 
				INNER JOIN Lectures ON Assignment.LecID = Lectures.LecID
				INNER JOIN Grade ON Grade.StudentID = J.StudentID AND Grade.AssID = VAA.AssID 
WHERE J.StudentID = (SELECT StudentID FROM Students WHERE [First_Name] = 'A' AND [Last_Name] = N'Nguyễn Võ')


-- 7: A QUERY THAT USES PARTIAL MATCHING IN THE WHERE CLAUSE --

SELECT J.StudentID, CONCAT([Last_Name], ' ', [First_Name]) AS [Student Name], ClassID, Average, [Status]
FROM 
	Students INNER JOIN JOINGroupsStudents AS J ON Students.StudentID = J.StudentID 
			 INNER JOIN [ViewStudentsClasses] AS V ON J.StudentID = V.StudentID
WHERE ClassID LIKE 'FA21%'


-- 8: A QUERY THAT USES A SELF-JOIN --

SELECT Lectures.LecID, Lectures.Email, CONCAT(Lectures.[Last_Name], ' ', Lectures.[First_Name]) AS Lecture, CONCAT(LEADER.[Last_Name], ' ', LEADER.[First_Name]) AS [Leader] 
FROM Lectures LEFT JOIN Lectures AS [LEADER] ON Lectures.Report = LEADER.LecID


-- 9 --

SELECT Lectures.LecID, Lectures.Email, CONCAT(Lectures.[Last_Name], ' ', Lectures.[First_Name]) AS Lecture, Report, Major, Courses.[CName], Semester, Students.StudentID, CONCAT(Students.[Last_Name], ' ', Students.[First_Name]) AS [Student Name], Students.Email, Students.Gender
FROM
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN Courses ON Courses.CouID = Assignment.Major
			  INNER JOIN Classes ON Classes.AsgID = Assignment.AsgID
			  INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			  INNER JOIN JOINGroupsStudents ON JOINGroupsStudents.GrID = Enroll.GrID
			  INNER JOIN Students ON Students.StudentID = JOINGroupsStudents.StudentID
ORDER BY Lectures.LecID, Semester, Students.StudentID, Major


-- 10 --

SELECT Lectures.LecID, Lectures.Email AS [LecID Email], CONCAT(Lectures.[Last_Name], ' ', Lectures.[First_Name]) AS Lecture, J.GrID, CouID, J.StudentID, CONCAT(Students.[Last_Name], ' ', Students.[First_Name]) AS [Student Name], CatID, Score, [Date]
FROM
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN ViewAssessAssessSystem AS VAA ON VAA.AsgID = Assignment.AsgID
			  INNER JOIN Enroll ON Enroll.ClassID = VAA.ClassID
			  INNER JOIN JOINGroupsStudents AS J ON J.GrID = Enroll.GrID
			  INNER JOIN Students ON Students.StudentID = J.StudentID
			  INNER JOIN Grade ON J.StudentID = Grade.StudentID AND VAA.AssID = Grade.AssID
			  