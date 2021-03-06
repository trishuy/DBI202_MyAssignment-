
# Phân tích những database theo dữ liệu của đề bài 
## Thông tin :
### 1>Detailed Specification :
> This is an individual assignment. 
> You are asked to provide a conceptual database design for Attendance Taking & Student Grade Management System at FPT University (I know, FPT already got one, but let assume we are reconstructing it).
> You can base on existing sources to develop your design including: fap.fpt.edu.vn, flm.fpt.edu.vn, ...
### 2> The database must consist of at least six tables :
>The database must consist of at least six tables that have been populated with data. The database is to support queries that would typically be submitted to the system for the topical area that you have chosen. You must do the following:
 >Self-investigation for the requirement of the system. Listed them all as form of reports, business rules.
-	Using UML, Chen’s notation to create an Entity Relationship (ER) model for your relational database. All entity types, their attributes and relationships must be clearly shown. You will also be required to show all cardinality and participation constraints. You should use some enhanced ER features in your conceptual model where it makes sense to do so.
-	Map the EER model devised in part (1) into a relational data model. It must be normalised up to at least 3rd Normal Form.
-	Using appropriate SQL commands create a set of database tables in MS SQL Server 2008+. You should also show all constraints used in the creation of the tables.
-	Populate the database with a small amount of data. The data should be meaningful but does not need to be extensive. The following sites may be useful for quickly generating data:
	http://www.databasetestdata.com/
	http://www.generatedata.com/
-	Your database must contain one view, one trigger, on store procedure and an index (describe why).
-	Create 10 sample queries that demonstrate the expressiveness of your database system. Your queries must demonstrate different aspects of the system.

### Final Report
```
You must submit a brief final report which must include the following:
-   A brief description of the database including any assumptions made during the design (THIS IS VERY IMPORTANT TO CLERIFY THE ASSUMTIONS in form of business rules).
-   An ERD (Entity Relationship Diagram) that fully describes the database (giving descriptions on your work would be appreciated).
-   The relational schema derived from the ERD that is at least in 3NF (Any detail of the process would be appreciated).
-   The set of database statements used to create the tables used in your database. You do NOT need to include all the data and insert statements.
-   10 queries that demonstrate the usefulness of the database. Also state why and when each query would be used. The following must be demonstrated by at least one of your queries:
 
-   A query that uses ORDER BY
-   A query that uses INNER JOINS
-   A query that uses aggregate functions
-   A query that uses the GROUP BY and HAVING clauses
-   A query that uses a sub-query as a relation
-   A query that uses a sub-query in the WHERE clause
-   A query that uses partial matching in the WHERE clause
-   A query that uses a self-JOIN
-   The trigger, store procedure, and the index should be added (explain why you make it)
```
### 1.Xác Định Và Tổng Hợp Các Dữ Liệu
### Bảng Thông Tin Các Điểm Thành Phần
###   ![image](https://user-images.githubusercontent.com/76523661/174473470-0efadd32-427b-475b-93a6-52d2a7179314.png) 

** Bố cục **
**  Các quan hệ mật thiết từng bảng: **
### 1,1.Category (hạng mục) : Danh sách các đầu điểm vào trên hệ thống fap
```
  - Progress Tests 
  - Assignment  
  - Labs 
  - Pe 
  - FE
```
### 1,2.Type (Loại) :
``` 
- Quiz 
- Lab 
- On-going 
- Pe 
- Fe
```  
### 1,3.Part:
> Số lần thực hiện các đầu điểm trên từng hạng mục.
### 1,4.Weight 
> từng mục điểm trên từng hạng mục
### 1,5.Completion Criteria 
> Điều kiện để thi và điểm tối thiểu để pass 
### 1,6.Duration
> Khoảng thời gian làm việc trong từng hạng mục 
```
        - At home 
        - In lab session
```
### 1,7.Question Type( Loại câu hỏi ) : Hình thức thực hiện 
> Multiple choices
> Presentation(Design And Present)
> Practices
> Scripts
###   1,8.No Question: Số lượng câu hỏi 
> Số lượng câu hỏi trong bài kiểm tra từng đầu điểm 
###   1,9.Knowledge and Skill :
> Các kiến thức và kĩ năng yêu cầu bắt buộc phải đạt được tối thiểu :
```
- Đầu Điểm Theo Từng Phân Mức Chương Trình Học
- Kĩ Năng Thực Hành
- Kĩ năng Trau Dồi Kiến Thức 
```
###   1,10.Grading Guide : Được chấm điểm, đánh giá bởi ai
> Người Chịu Trách Nghiệm Hướng Dẫn Và Quy Định Cách Thực Hiện Trình Bày Để Đạt Được Các Tiêu Chí Trên Các Hạng Mục
###   Note(chú thích)
> Tiêu chí Cho Điểm Trên Từng Hạng Mục
### 2.Bảng điểm Và Khóa Học Tổng Quát Của Học Sinh
### ![image](https://user-images.githubusercontent.com/76523661/174435441-24021f17-609a-4c3d-ac96-fc9184d21479.png)
### 2,1.NO: Number of subjects.
> Số lượng khóa học , môn học
### 2,2.Subject code : .
> Mã Code Tương Ứng Trên Từng Khóa Học
### 2,3.Subject Name : .
> Định Nghĩa và Khái Quát Chung Của Từng Môn Học Mà Sinh Viêc Sẽ Được Học
### 2,4.Semester : .
> Khoảng Thời Gian Diễn Ra Thời Gian Và Kỳ Học
```
- Thời gian
- Kỳ học
```
### 2,5.Group :
> Lớp học
### 2,6.StartDate :
> Thời gian bắt đầu khóa học
### 2,7.EndDate :
> Thời gian kết thúc khóa học
### 2,8.Average Mark:
> Điểm trung bình
### 2,9.Status (Trạng thái của kỳ học vừa rồi ): 
```
- Pass
- Not pass
```
### 3.Bảng điểm chi tiết 1 khoá học
### ![image](https://user-images.githubusercontent.com/76523661/174435461-09a9d235-f99f-4169-8c2a-cebee1f6d4e7.png)
** Bố cục **
### 3,1.Grade Category : Các loại hạng mục của từng đầu điểm :
```
- Progress Tests (Quiz[Quiz 1, Quiz 2 ,...])
- Assignment
- Labs
- PE ( Practice Exam )
- FE ( Final Exam )
- Final Exam Resit
```
### 3,2.Grade Item : Các thành phần hạng mục( Tên và đầu điểm ) 
 ``` 
 - Item
 - Total
 ```
### 3,3.Weight :
> Trọng số từng hạng mục 
### 3,4.Value :
> Điểm 
### 3,4.Comment :
> Chú thích của người quản lý điểm
### 3,5.Course total:
> Điểm tổng kết 
--------------------------------------------------------------------------------------------------------------------------------------
# 4.Xác Định Và Tổng Hợp Các Dữ Liệu Của Các Thuộc Tính Trong Dữ Liệu
##    4,1. Xác Định Các Thực Thể 
###         Thực Thể 1: Students
               - StudentID
               - First Name 
               - Last Name
               - Address
               - Gender
               - Date Of Birth
               - Email
###         Thực Thể 2: Group Students
               - GroupID
               - Major
###         Thực Thể 3: Courses
               - CourseID
               - CourseName
               - Course_Status ( Online, Offline)
###         Thực Thể 4: Lecturers
               - LectureID
               - First Name
               - Last Name
               - Gender
               - Phone
               - Date Of Birth
               - ReportTO
###         Thực Thể 5: Guide
               - GuideID
               - Details
###         Thực Thể 6: Class
               - ClassID
               - Status
               - Semester
               - Start Date
               - End Date
###         Thực Thể 7: Category
               - CatID
               - Category
               - Type
               - Part
               - Weight
               - Duration
               - Quest Type
               - Number Of Questions
               - Skill
               - Grading Guide
               - Note
###         Thực Thể 8: Assessment system
               - AssessmentID
               - CourseID
               - AssigmentID
               - Weight
###         Thực thể 9: Assignment
               - AssigmentID
               - AssigmentName
# 5. Phân Chia Các Entities Và Relationships
### 5,1. Entity Student <-> Entity Group
```
- Một hoặc nhiều học sinh sinh viên có thể đăng ký nhiều khóa học (Courses)
-> Quan hệ nhiều nhiều (n-n).
```
### 5,2. Entity Class <-> Entity Lecturers
```
- Một Class được phụ trách bởi 1 Lecturer (không hơn không kém) và 1 Lecturer có thẻ phụ trách nhiều lớp khác nhau cùng nhiều môn học khác nhau
-> Quan hệ một nhiều (1-n).
```
##  5,3. Entity Class <-> Entity Groups
```
- Một Class có thể được đăng kí bởi nhiều Groups và 1 Group có thể đăng kí nhiều Classes.
-> Quan hệ nhiều nhiều ( n-n ).
```
##  5,4. Entity Student <-> Entity Assessment System
```
- Một Student có thể có nhiều hệ thống đánh giá các đầu điểm và 1 Assessment System có thể phụ trách đầu điểm của nhiều Students.
-> Quan hệ nhiều nhiều ( n-n ).
```
##  5,5. Entity Class <-> Entity Assessment System
```
- Một Class có thể có nhiều hệ thống đánh giá các đầu điểm và 1 Assessment System có thể phụ trách đầu điểm của nhiều Classes.
-> Quan hệ nhiều nhiều ( n-n ).
```
##  5,6. Entity Class <-> Entity Students
```
- Một Class có thể có nhiều đầu điểm của Students và 1 Students có thể xem được đầu điểm của nhiều Classes.
-> Quan hệ nhiều nhiều ( n-n ).
```
##  5,7. Entity Courses <-> Entity Assessment System
```
- Một Course chỉ có thể có duy nhất 1 hệ thống đánh giá các đầu điểm  và 1 Assessment System có thể là hệ thống đánh giá của  nhiều Courses.
-> Quan hệ một nhiều ( 1-n ).
```
##  5,8. Entity Class <-> Entity Assignment
```
- Một Class chỉ nhận đúng 1 Assignment  và 1 Assignment có thể được giao cho nhiều Classes.
-> Quan hệ một nhiều ( 1-n ).
```
##  5,9. Entity Courses <-> Entity Assignment
```
- Một Courses chỉ có thể có đúng 1 Assigment và 1 Assigment có thể được lấy từ nhiều Courses.
-> Quan hệ một nhiều ( 1-n ).
```
## 5,10. Entity Category <-> Entity Assignment Systems
```
- Một Category có thể tổng hợp từ nhiều Assignment Systems và 1 Assignment Systems chỉ có thể đưa vào 1 Category duy nhất.
-> Quan hệ một nhiều ( 1-n ).
```
## 5,11. Entity Lecturers <-> Entity Assignment
```
- Một Assigment có thể có được từ nhiều Lecturers và 1 Lecturers chỉ có thể đưa ra đúng 1 Assignment.
-> Quan hệ một nhiều ( 1-n ).
```

------------------------------------------------------
# 6. ERD Diagram
## ![image](https://github.com/trishuy/DBI202_MyAssignment-/blob/main/Entity%20Relationship%20Diagram%20(ERD).png?raw=true)
## 7. Chuẩn Hóa Thuộc Tính Các Attribute Trên Từng Bảng 

1.  TABLE STUDENTS

| Attributes | Type |
|:---|:---|
| StudentID   |    Varchar  | 
| Last Name   |    NVarchar |
| First Name  |    NVarchar |
| Gender      |    Bit      |
| Email       |    Varchar  |
| DoB         |    Date     |

--------------------------------------------------------------------------

2. TABLE GROUPS

| Attributes | Type |
|:---|:---|
|    GrID        |    Varchar  |
|    Major       |    Varchar  |

--------------------------------------------------------------------------

3. TABLE JOIN

| Attributes | Type |
|:---|:---|
|    GrID        |    Varchar  |
|    StudentID   |    Varchar  |

--------------------------------------------------------------------------
4. TABLE LECTURERS

| Attributes | Type |
|:---|:---|
|    LecID       |    Varchar  |
|    Last Name   |    NVarchar |
|    First Name  |    NVarchar |
|    Gender      |    Bit      |
|    Email       |    Varchar  |
|    DoB         |    Date     |
|    Report      |    Varchar  |

--------------------------------------------------------------------------
5. TABLE CLASSES

| Attributes | Type |
|:---|:---|
|    ClassID     |    Varchar  |
|    Semester    |    Varchar  |
|    Start Date  |    Date     |
|    End Date    |    Date     |
|    AsgID       |    Varchar  |

--------------------------------------------------------------------------
6. TABLE VIEW

| Attributes | Type |
|:-----|:-----|
|    StudentID   |    Varchar  |
|    ClassID     |    Varchar  |
|    Average     |    Float    |
|    Status      |    Varchar  |

--------------------------------------------------------------------------
7. TABLE ENROLL

| Attributes | Type |
|:-----|:-----|
|    GrID        |    Varchar  |
|    ClassID     |    Varchar  |

--------------------------------------------------------------------------
8. TABLE GRADE

| Attributes | Type |
|:-----|:-----|
|    StudentID   |    Varchar  |
|    AssID       |    Varchar  |
|    Score       |    Float    |
|    Date        |    Date     |

--------------------------------------------------------------------------
9. TABLE ASSESSMENT_SYSTEM

| Attributes | Type |
|:-----|:-----|
|   AssID        |    Varchar  |
|   CatID        |    Varchar  |
|   CouID        |    Varchar  |
|   Weigh        |    Float    |
|   Number Quest |    Varchar  |
|   Duration     |    Varchar  |


--------------------------------------------------------------------------
10. TABLE ASSIGNMENT

| Attributes | Type |
|:-----|:-----|
|    AsgID       |    Varchar  |
|    LecID       |    Varchar  |
|    Major       |    Varchar  |

--------------------------------------------------------------------------
11. TABLE COURSE

| Attributes | Type |
|:-----|:-----|
|    CouID   |    Varchar  |
|    CName   |    Varchar  |
|    GuideID |    Varchar  |

--------------------------------------------------------------------------
12. TABLE GUIDE

| Attributes | Type |
|:-----|:-----|
|    GuideID     |    Varchar  |
|    Details     |    Text     |

--------------------------------------------------------------------------
13. TABLE CATEGORY

| Attributes | Type |
|:-----|:-----|
|    CatID       |    Varchar  |
|    Name        |    Varchar  |
|    Type        |    Varchar  |
|    Completion Criteria       |    Varchar  |
|    AssID       |    VarChar  |

--------------------------------------------------------------------------
14. TABLE ASSESS

| Attributes | Type |
|:-----|:-----|
|    AssID       |    Varchar  |
|    ClassID     |    Varchar  |

--------------------------------------------------------------------------
##  7,1. Xác Định Primary Key, Foriegn Key, Attributes Các TABLES

1.  TABLE STUDENTS

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
| StudentID   |    Varchar  | 50 | Not Null | Primary Key
| Last Name   |    NVarchar | 50 | Not Null |
| First Name  |    NVarchar | 50 | Not Null |
| Gender      |    Bit      |    |  Null    |
| Email       |    Varchar  | 50 | Not Null |
| DoB         |    Date     | yyyy/mm/dd | Null | 

--------------------------------------------------------------------------

2. TABLE GROUPS

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    GrID        |    Varchar  | 50 | Not Null | Primary Key
|    Major       |    Varchar  | 50 | Not Null | 

--------------------------------------------------------------------------

3. TABLE JOIN

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    GrID        |    Varchar  | 50 | Not Null | Primary Key
|    StudentID   |    Varchar  | 50 | Not Null | Primary Key

--------------------------------------------------------------------------

4. TABLE LECTURERS

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    LecID       |    Varchar  | 50 | Not Null | Primary Key
|    Last Name   |    NVarchar | 50 | Not Null |
|    First Name  |    NVarchar | 50 | Not Null |
|    Gender      |    Bit      |    | Null     |
|    Email       |    Varchar  | 50 | Not Null |
|    DoB         |    Date     | yyyy/mm/dd | Null |
|    Report      |    Varchar  | 50 | Not Null | Foreign Key

--------------------------------------------------------------------------

5. TABLE CLASSES

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    ClassID     |    Varchar  | 50 | Not Null | Primary Key
|    Semester    |    Varchar  | 50 | Not Null | Primary Key
|    Start Date  |    Date     | yyyy/mm/dd | Null | 
|    End Date    |    Date     | yyyy/mm/dd | Null |
|    AsgID       |    Varchar  | 50 | Not Null | Foreign Key

--------------------------------------------------------------------------

6. TABLE VIEW

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    StudentID   |    Varchar  | 50 | Not Null | Primary Key
|    ClassID     |    Varchar  | 50 | Not Null | Primary Key
|    Average     |    Float    | 15 | Not Null |
|    Status      |    Varchar  | 50 | Not Null |

--------------------------------------------------------------------------
7. TABLE ENROLL

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    GrID        |    Varchar  | 50 | Not Null | Primary Key
|    ClassID     |    Varchar  | 50 | Not Null | Primary Key

--------------------------------------------------------------------------
8. TABLE GRADE

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    StudentID   |    Varchar  | 50 | Not Null | Primary Key
|    AssID       |    Varchar  | 50 | Not Null | Primary Key
|    Score       |    Float    | 15 | Not Null |
|    Date        |    Date     | yyyy/mm/dd | Null | Primary Key

--------------------------------------------------------------------------
9. TABLE ASSESSMENT_SYSTEM

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|   AssID        |    Varchar  | 50  | Not Null | Primary Key
|   CatID        |    Varchar  | 50  | Not Null | Foreign Key
|   CouID        |    Varchar  | 50  | Not Null | Foreign Key
|   Weigh        |    Float    | 15  | Not Null |
|   Number Quest |    Varchar  | 50  | Not Null |
|   Duration     |    Varchar  | 150 | Not Null |


--------------------------------------------------------------------------
10. TABLE ASSIGNMENT

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    AsgID       |    Varchar  | 50 | Not Null | Primary Key
|    LecID       |    Varchar  | 50 | Not Null | Foreign Key
|    Major       |    Varchar  | 50 | Not Null | Poreign Key

--------------------------------------------------------------------------
11. TABLE COURSE

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    CouID   |    Varchar  | 50 | Not Null | Primary Key
|    CName   |    Varchar  | 50 | Not Null |
|    GuideID |    Varchar  | 50 | Not Null | Foreign Key

--------------------------------------------------------------------------
12. TABLE GUIDE

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    GuideID     |    Varchar  | 50  | Not Null | Primary Key
|    Details     |    Text     | 350 | Not Null |

--------------------------------------------------------------------------
13. TABLE CATEGORY

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    CatID       |    Varchar  | 50 | Not Null | Primary Key
|    Name        |    Varchar  | 50 | Not Null |
|    Type        |    Varchar  | 50 | Not Null |
|    Completion Criteria      |    Varchar  | 150 | Not Null |
|    AssID       |    Varchar  | 50 | Not Null | Foreign Key

--------------------------------------------------------------------------
14. TABLE ASSESS

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    AssID       |    Varchar  | 50 | Not Null | Primary Key
|    ClassID     |    Varchar  | 50 | Not Null | Primary Key

--------------------------------------------------------------------------
# 8. Thiết lập DataBase Trên Sql server
## 8,1. Creat Table And Attributes
### 8,2. Code sql
### 8,3. Image + Results
![image](https://github.com/trishuy/DBI202_MyAssignment-/blob/main/ERD%20update.PNG?raw=true)
```       sql
create table Students(
  StudentID  Varchar(50) Not Null Primary Key,
  Last_Name    NVarchar(50 ) Not Null ,
  First_Name   NVarchar(50) Not Null,
  Gender      Bit      Null,
  Email       Varchar(50) Not Null,
  DoB         Date
)

create table Groups(
  GrID  Varchar(50) Not Null Primary Key,
  Major    NVarchar(50 ) Not Null
)

create table Lectures(
  LecID  Varchar(50) Not Null Primary Key,
  Last_Name    NVarchar(50 ) Not Null ,
  First_Name   NVarchar(50) Not Null,
  Gender      Bit      Null,
  Email       Varchar(50) Not Null,
  DoB         Date,
  Report Varchar(50),
  constraint FK_Lectures foreign key (Report) references Lectures(LecID)
)

create table Assignment(
AsgID varchar(50) not null primary key,
Major varchar(50) not null,
LecID varchar(50) not null foreign key references  Lectures(LecID)
)

create table Classes(
ClassID varchar(50) not null,
Semester varchar(50) not null,
Start_Date Date ,
End_date Date,
AsgID varchar(50) not null,
constraint PK_Classes primary key (ClassID),
constraint FK_Classes foreign key (AsgID) references Assignment(AsgID)
)

Create table Guide(
GuideID varchar(50) not null primary key,
Details Varchar(350)
)

create table Courses
(
CouID varchar(50) not null primary key,
CName varchar(50) not null,
GuideID varchar(50) not null foreign key references Guide(GuideID)
)

create table Categories(
CatID varchar(50) not null primary key,
Name varchar(50) not null,
Type varchar(50) not null,
Completion_Criteria varchar(50)
)

Create Table ASSESSMENT_SYSTEM
(
 AssID Varchar(50) not null primary key,
 CatID varchar(50) not null foreign key references Categories(CatID),
 CouID varchar(50) not null foreign key references Courses(CouID),
 Num_Of_Ques int,
 Duration varchar(50),
 Weigh    Float,
 GuideID varchar(50) not null foreign key references Guide(GuideID)

)

create table Assess
(
AssID varchar(50) not null foreign key references ASSESSMENT_SYSTEM(AssID),
ClassID varchar(50) not null foreign key references Classes(ClassID),
Constraint PK_Enroll primary key(AssID,ClassID),
)

create table Grade
(
StudentID varchar(50) not null foreign key references Students(StudentID),
AssID varchar(50) not null foreign key references ASSESSMENT_SYSTEM(AssID),
Score Float(15),
Date Date,
Constraint PK_Grade primary key(AssID,StudentID,Date)
)

create table ENROLL
(
GrID varchar(50) not null foreign key references Groups(GrID),
ClassID varchar(50) not null foreign key references Classes(ClassID),
Constraint PK_Enroll_ primary key(GrID,ClassID)
)

Create table ViewStudentsClasses(
StudentID varchar(50) not null,
ClassID varchar(50) not null,
Average Float(15) not null,
Status Varchar(50) not null,
constraint PK_View_Students_Classes Primary Key(StudentID,ClassID),
constraint FK_View_Students foreign key (StudentID) references Students(StudentID),
constraint FK_View_Classes foreign key (ClassID) references Classes(ClassID)
)

create table JOINGroupsStudents (
  GrID  Varchar(50) Not Null,
  StudentID    Varchar(50 ) Not Null,
  constraint PK_JOIN primary key (GrID,StudentID),
  constraint FK_JOIN_Students foreign key (StudentID) references Students(StudentID),
  constraint FK_JOIN_Groups foreign key (GrID) references Groups(GrID)
)

```

##  8,4. Đưa Dữ Liệu Vào DataBase
###     Code sql
``` sql
INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00001', N'anv@fpt.edu.vn', N'A', N'Nguyễn Võ', 1, CAST(N'2002-01-01' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00002', N'bnv@fpt.edu.vn', N'B', N'Nguyễn Võ', 1, CAST(N'2002-01-02' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00003', N'cnv@fpt.edu.vn', N'C', N'Nguyễn Võ', 1, CAST(N'2002-01-13' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00004', N'dnv@fpt.edu.vn', N'D', N'Nguyễn Võ', 1, CAST(N'2002-01-04' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00005', N'env@fpt.edu.vn', N'E', N'Nguyễn Võ', 1, CAST(N'2002-01-05' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00006', N'fnv@fpt.edu.vn', N'F', N'Nguyễn Võ', 1, CAST(N'2002-01-06' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00007', N'gnv@fpt.edu.vn', N'G', N'Nguyễn Võ', 1, CAST(N'2002-01-07' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00008', N'hnv@fpt.edu.vn', N'H', N'Nguyễn Võ', 1, CAST(N'2002-01-08' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00009', N'inv@fpt.edu.vn', N'I', N'Nguyễn Võ', 1, CAST(N'2002-01-09' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00010', N'jnv@fpt.edu.vn', N'J', N'Nguyễn Võ', 1, CAST(N'2002-01-10' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00011', N'knv@fpt.edu.vn', N'K', N'Nguyễn Võ', 1, CAST(N'2002-01-11' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00012', N'lnv@fpt.edu.vn', N'L', N'Nguyễn Võ', 1, CAST(N'2002-01-12' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00013', N'mnv@fpt.edu.vn', N'M', N'Nguyễn Võ', 1, CAST(N'2002-01-13' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00014', N'nnv@fpt.edu.vn', N'N', N'Nguyễn Võ', 1, CAST(N'2002-01-14' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00015', N'mnv@fpt.edu.vn', N'O', N'Nguyễn Võ', 1, CAST(N'2002-01-15' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00016', N'pnv@fpt.edu.vn', N'P', N'Nguyễn Võ', 1, CAST(N'2002-01-16' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00017', N'qnv@fpt.edu.vn', N'Q', N'Nguyễn Võ', 1, CAST(N'2002-01-17' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00018', N'rnv@fpt.edu.vn', N'R', N'Nguyễn Võ', 1, CAST(N'2002-01-18' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00019', N'snv@fpt.edu.vn', N'S', N'Nguyễn Võ', 1, CAST(N'2002-01-19' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00020', N'tnv@fpt.edu.vn', N'T', N'Nguyễn Võ', 1, CAST(N'2002-01-20' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00021', N'unv@fpt.edu.vn', N'U', N'Nguyễn Võ', 1, CAST(N'2002-01-21' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00022', N'vnv@fpt.edu.vn', N'V', N'Nguyễn Võ', 1, CAST(N'2002-01-22' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00023', N'wnv@fpt.edu.vn', N'W', N'Nguyễn Võ', 1, CAST(N'2002-01-23' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00024', N'xnv@fpt.edu.vn', N'X', N'Nguyễn Võ', 1, CAST(N'2002-01-24' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00025', N'ynv@fpt.edu.vn', N'Y', N'Nguyễn Võ', 1, CAST(N'2002-01-25' AS Date))

INSERT [dbo].[Students] ([StudentID], [Email], [First_Name], [Last_Name], [Gender], [DoB]) VALUES (N'HE00026', N'znv@fpt.edu.vn', N'Z', N'Nguyễn Võ', 1, CAST(N'2002-01-26' AS Date))



INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00027', 'anv@fpt.edu.vn', 'A', N'Nguyễn Thị', 0, CAST('02-01-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00028', 'bnv@fpt.edu.vn', 'B', N'Nguyễn Thị', 0, CAST('02-02-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00029', 'cnv@fpt.edu.vn', 'C', N'Nguyễn Thị', 0, CAST('02-03-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00030', 'dnv@fpt.edu.vn', 'D', N'Nguyễn Thị', 0, CAST('02-04-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00031', 'env@fpt.edu.vn', 'E', N'Nguyễn Thị', 0, CAST('02-05-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00032', 'fnv@fpt.edu.vn', 'F', N'Nguyễn Thị', 0, CAST('02-06-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00033', 'gnv@fpt.edu.vn', 'G', N'Nguyễn Thị', 0, CAST('02-07-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00034', 'hnv@fpt.edu.vn', 'H', N'Nguyễn Thị', 0, CAST('02-08-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00035', 'inv@fpt.edu.vn', 'I', N'Nguyễn Thị', 0, CAST('02-09-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00036', 'knv@fpt.edu.vn', 'K', N'Nguyễn Thị', 0, CAST('02-11-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00037', 'lnv@fpt.edu.vn', 'L', N'Nguyễn Thị', 0, CAST('02-12-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00038', 'mnv@fpt.edu.vn', 'M', N'Nguyễn Thị', 0, CAST('02-13-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00039', 'nnv@fpt.edu.vn', 'N', N'Nguyễn Thị', 0, CAST('02-14-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00040', 'onv@fpt.edu.vn', 'O', N'Nguyễn Thị', 0, CAST('02-15-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00041', 'pnv@fpt.edu.vn', 'P', N'Nguyễn Thị', 0, CAST('02-16-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00042', 'qnv@fpt.edu.vn', 'Q', N'Nguyễn Thị', 0, CAST('02-17-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00043', 'rnv@fpt.edu.vn', 'R', N'Nguyễn Thị', 0, CAST('02-18-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00044', 'snv@fpt.edu.vn', 'S', N'Nguyễn Thị', 0, CAST('02-19-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00045', 'tnv@fpt.edu.vn', 'T', N'Nguyễn Thị', 0, CAST('02-20-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00046', 'unv@fpt.edu.vn', 'U', N'Nguyễn Thị', 0, CAST('02-21-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00047', 'vnv@fpt.edu.vn', 'V', N'Nguyễn Thị', 0, CAST('02-22-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00048', 'wnv@fpt.edu.vn', 'W', N'Nguyễn Thị', 0, CAST('02-23-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00049', 'xnv@fpt.edu.vn', 'X', N'Nguyễn Thị', 0, CAST('02-24-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00050', 'ynv@fpt.edu.vn', 'Y', N'Nguyễn Thị', 0, CAST('02-25-2002' AS DATE));


SELECT * FROM Students
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'CEA201', N'Computer Organization and Architecture')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'CSD201', N'Data Structures and Algorithms')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'CSI104', N'Introduction to Computer Science')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'DBI202', N'Introduction to Databases')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'IAO202', N'Introduction to Information Assurance')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'JPD113', N'Elementary Japanese 1')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'LAB211', N'OOP with Java Lab')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'MAD101', N'Discrete mathematics')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'MAE101', N'Mathematics for Engineering')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'NWC204', N'Computer Networking')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'OSG202', N'Operating Systems')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'PRF192', N'Programming Fundamentals')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'PRO192', N'Object-Oriented Programming')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'SSG104', N'Communication and In-Group Working Skills')
INSERT [dbo].[Courses] ([CouID], [CName]) VALUES (N'SSL101c', N'Academic Skills for University Success')
select * from Courses
INSERT Groups(GrID, Major) VALUES ('IA1604', 'Information Assurance');
INSERT Groups(GrID, Major) VALUES ('AI1605', 'Artificial Intelligence');
INSERT Groups(GrID, Major) VALUES ('SE1606', 'Software Engineering');
INSERT Groups(GrID, Major) VALUES ('IOT1607', 'Internet of Things');
INSERT Groups(GrID, Major) VALUES ('IA1608', 'Information Assurance');
INSERT Groups(GrID, Major) VALUES ('SE1609', 'Software Engineering');


SELECT * FROM Groups

INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00001', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00002', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00003', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00004', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00005', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00006', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00007', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00008', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00009', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00010', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00011', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00012', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00013', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00014', 'IA1604');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00015', 'IA1604');

INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00016', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00017', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00018', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00019', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00020', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00021', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00022', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00023', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00024', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00025', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00026', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00027', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00028', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00029', 'AI1605');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00030', 'AI1605');

INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00031', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00032', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00033', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00034', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00035', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00036', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00037', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00038', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00039', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00040', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00041', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00042', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00043', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00044', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00045', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00046', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00047', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00048', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00049', 'SE1606');
INSERT [JOINGroupsStudents](StudentID, GrID) VALUES ('HE00050', 'SE1606');

SELECT * FROM [JOINGroupsStudents]


SELECT * FROM Courses

INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVA', 'gva@fe.edu.vn', 'A', N'Giảng Viên', 1, CAST('01-01-1985' AS date), NULL);
INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVB', 'gvb@fe.edu.vn', 'B', N'Giảng Viên', 0, CAST('01-02-1985' AS date), 'GVA');
INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVC', 'gvc@fe.edu.vn', 'C', N'Giảng Viên', 1, CAST('01-03-1985' AS date), 'GVA');
INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVD', 'gvd@fe.edu.vn', 'D', N'Giảng Viên', 0, CAST('01-04-1985' AS date), 'GVA');
INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVE', 'gve@fe.edu.vn', 'E', N'Giảng Viên', 1, CAST('01-05-1985' AS date), 'GVA');
INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVF', 'gvf@fe.edu.vn', 'F', N'Giảng Viên', 0, CAST('01-06-1985' AS date), NULL);
INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVG', 'gvg@fe.edu.vn', 'G', N'Giảng Viên', 1, CAST('01-07-1985' AS date), 'GVF');
INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVH', 'gvh@fe.edu.vn', 'H', N'Giảng Viên', 0, CAST('01-08-1985' AS date), NULL);
INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVI', 'gvi@fe.edu.vn', 'I', N'Giảng Viên', 1, CAST('01-09-1985' AS date), 'GVH');
INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVJ', 'gvj@fe.edu.vn', 'J', N'Giảng Viên', 0, CAST('01-10-1985' AS date), 'GVH');
INSERT Lectures(LecID, Email, [First_Name], [Last_Name], Gender, [DoB], Report) VALUES ('GVK', 'gvk@fe.edu.vn', 'K', N'Giảng Viên', 1, CAST('01-11-1985' AS date), 'GVH');


SELECT * FROM Lectures


INSERT Assignment(AsgID, Major, LecID) VALUES ('ACSD', 'CSD201', 'GVA');
INSERT Assignment(AsgID, Major, LecID) VALUES ('BCSD', 'CSD201', 'GVB');
INSERT Assignment(AsgID, Major, LecID) VALUES ('ECSD', 'CSD201', 'GVE');
INSERT Assignment(AsgID, Major, LecID) VALUES ('ADBI', 'DBI202', 'GVA');
INSERT Assignment(AsgID, Major, LecID) VALUES ('DDBI', 'DBI202', 'GVD');
INSERT Assignment(AsgID, Major, LecID) VALUES ('EDBI', 'DBI202', 'GVE');
INSERT Assignment(AsgID, Major, LecID) VALUES ('BIAO', 'IAO202', 'GVB');
INSERT Assignment(AsgID, Major, LecID) VALUES ('CLAB', 'LAB211', 'GVC');
INSERT Assignment(AsgID, Major, LecID) VALUES ('DLAB', 'LAB211', 'GVD');

INSERT Assignment(AsgID, Major, LecID) VALUES ('FJPD', 'JPD113', 'GVF');
INSERT Assignment(AsgID, Major, LecID) VALUES ('GJPD', 'JPD113', 'GVG');

INSERT Assignment(AsgID, Major, LecID) VALUES ('HCEA', 'CEA201', 'GVH');
INSERT Assignment(AsgID, Major, LecID) VALUES ('JCEA', 'CEA201', 'GVJ');
INSERT Assignment(AsgID, Major, LecID) VALUES ('KCEA', 'CEA201', 'GVK');
INSERT Assignment(AsgID, Major, LecID) VALUES ('KCSI', 'CSI104', 'GVK');
INSERT Assignment(AsgID, Major, LecID) VALUES ('ICSI', 'CSI104', 'GVI');
INSERT Assignment(AsgID, Major, LecID) VALUES ('IMAE', 'MAE101', 'GVI');
INSERT Assignment(AsgID, Major, LecID) VALUES ('JMAE', 'MAE101', 'GVJ');
INSERT Assignment(AsgID, Major, LecID) VALUES ('HPRF', 'PRF192', 'GVH');
INSERT Assignment(AsgID, Major, LecID) VALUES ('ISSL', 'SSL101c', 'GVI');

INSERT Assignment(AsgID, Major, LecID) VALUES ('JMAD', 'MAD101', 'GVJ');
INSERT Assignment(AsgID, Major, LecID) VALUES ('BNWC', 'NWC204', 'GVB');
INSERT Assignment(AsgID, Major, LecID) VALUES ('HOSG', 'OSG202', 'GVH');
INSERT Assignment(AsgID, Major, LecID) VALUES ('FSSG', 'SSG104', 'GVF');
INSERT Assignment(AsgID, Major, LecID) VALUES ('GSSG', 'SSG104', 'GVG');
INSERT Assignment(AsgID, Major, LecID) VALUES ('APRO', 'PRO192', 'GVA');


SELECT * FROM Assignment


INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22ACSD', 'ACSD', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22BCSD', 'BCSD', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22ECSD', 'ECSD', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22ADBI', 'ADBI', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22DDBI', 'DDBI', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22BIAO', 'BIAO', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22CLAB', 'CLAB', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22DLAB', 'DLAB', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22FJPD', 'FJPD', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22GJPD', 'GJPD', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));

INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22JMAD', 'JMAD', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22BNWC', 'BNWC', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22HOSG', 'HOSG', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22FSSG', 'FSSG', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22GSSG', 'GSSG', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22APRO', 'APRO', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));

INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22HCEA', 'HCEA', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22JCEA', 'JCEA', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22KCSI', 'KCSI', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22IMAE', 'IMAE', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22HPRF', 'HPRF', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SP22ISSL', 'ISSL', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));

INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21ECSD', 'ECSD', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21DDBI', 'DDBI', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21BIAO', 'BIAO', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21CLAB', 'CLAB', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21FJPD', 'FJPD', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));

INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21KCEA', 'KCEA', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21ICSI', 'ICSI', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21IMAE', 'IMAE', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21ISSL', 'ISSL', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21HPRF', 'HPRF', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));

INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21JMAD', 'JMAD', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21BNWC', 'BNWC', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21HOSG', 'HOSG', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21GSSG', 'GSSG', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('FA21APRO', 'APRO', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));

INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21JCEA', 'JCEA', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21KCSI', 'KCSI', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21IMAE', 'IMAE', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21HPRF', 'HPRF', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21ISSL', 'ISSL', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));

INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21JMAD', 'JMAD', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21BNWC', 'BNWC', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21HOSG', 'HOSG', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21FSSG', 'FSSG', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21APRO', 'APRO', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));

INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21ACSD', 'ACSD', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21ADBI', 'ADBI', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21BIAO', 'BIAO', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21CLAB', 'CLAB', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsgID, Semester, [Start_Date], [End_Date]) VALUES ('SU21FJPD', 'FJPD', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));


SELECT * FROM Classes
SELECT * FROM Groups

INSERT Enroll(ClassID, GrID) VALUES ('SU21KCSI', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SU21IMAE', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SU21JCEA', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SU21ISSL', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SU21HPRF', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('FA21HOSG', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('FA21BNWC', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SU21FJPD', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('FA21APRO', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('FA21JMAD', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SP22BCSD', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SP22ADBI', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SP22FJPD', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SP22BIAO', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SP22CLAB', 'IA1604')

INSERT Enroll(ClassID, GrID) VALUES ('FA21IMAE', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('FA21ICSI', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('FA21HPRF', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('FA21ISSL', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('FA21KCEA', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('SP22APRO', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('SP22BNWC', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('SP22GSSG', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('SP22HOSG', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('SP22JMAD', 'IA1608')

INSERT Enroll(ClassID, GrID) VALUES ('SP22IMAE', 'AI1605')
INSERT Enroll(ClassID, GrID) VALUES ('SP22HPRF', 'AI1605')
INSERT Enroll(ClassID, GrID) VALUES ('SP22ISSL', 'AI1605')
INSERT Enroll(ClassID, GrID) VALUES ('SP22JCEA', 'AI1605')
INSERT Enroll(ClassID, GrID) VALUES ('SP22KCSI', 'AI1605')

INSERT Enroll(ClassID, GrID) VALUES ('FA21DDBI', 'IOT1607')
INSERT Enroll(ClassID, GrID) VALUES ('FA21ECSD', 'IOT1607')
INSERT Enroll(ClassID, GrID) VALUES ('FA21CLAB', 'IOT1607')
INSERT Enroll(ClassID, GrID) VALUES ('FA21FJPD', 'IOT1607')
INSERT Enroll(ClassID, GrID) VALUES ('FA21BIAO', 'IOT1607')


SELECT * FROM Enroll


INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('AS', 'Assignment ', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('AS1', 'Assignment 1', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('AS2', 'Assignment 2', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('LAB', 'Lab', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('LAB1', 'Lab 1', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('LAB2', 'Lab 2', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('LOC', 'Line of Code', 'On-Going', '>=750');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('PT', 'Progress Test', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('PT1', 'Progress Test 1', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('PT2', 'Progress Test 2', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('PE', 'Practical Exam', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('FE', 'Final Exam', 'Final Exam', '>4');
INSERT Categories(CatID, [Name], [Type], [Completion_Criteria]) VALUES ('FER', 'Final Exam Retake', 'Final Exam', '>4');


SELECT * FROM Categories
SELECT * FROM Courses 

--- insert guide table 
INSERT Guide(GuideID,Details) VALUES ('1','not complete ')
INSERT Guide(GuideID,Details) VALUES ('2','Follow chapter and complete marks ')
INSERT Guide(GuideID,Details) VALUES ('3','Follow chapter and complete marks also practice')
SELECT * FROM Guide

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CEAAS1', 'AS1', 'CEA201', 20, '30 mins', 0.1,'1'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CEAAS2', 'AS2', 'CEA201', 20, '30 mins', 0.1,'1'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CEAPT1', 'PT1', 'CEA201', 30, '60 mins', 0.2,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CEAPT2', 'PT2', 'CEA201', 30, '60 mins', 0.2,'3'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CEAFE', 'FE', 'CEA201', 50, '90 mins', 0.4,'2'); 

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSDLAB1', 'LAB1', 'CSD201', 10, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSDLAB2', 'LAB2', 'CSD201', 10, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSDAS', 'AS', 'CSD201', 25, '30 mins', 0.1,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSDPT', 'PT', 'CSD201', 35, '60 mins', 0.1,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSDPE', 'PE', 'CSD201', 15, '90 mins', 0.3,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSDFE', 'FE', 'CSD201', 50, '90 mins', 0.4,'2'); 

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSIAS1', 'AS1', 'CSI104', 20, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSIAS2', 'AS2', 'CSI104', 20, '30 mins', 0.05,'1'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSILAB1', 'LAB1', 'CSI104', 10, '30 mins', 0.1,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSILAB2', 'LAB2', 'CSI104', 10, '30 mins', 0.1,'1'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSIPT1', 'PT1', 'CSI104', 30, '60 mins', 0.15,'1'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSIPT2', 'PT2', 'CSI104', 30, '60 mins', 0.15,'1'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('CSIFE', 'FE', 'CSI104', 60, '90 mins', 0.4,'1'); 

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('DBIAS', 'AS', 'DBI202', 10, '28 Slots', 0.2,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('DBILAB1', 'LAB1', 'DBI202', 20, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('DBILAB2', 'LAB2', 'DBI202', 20, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('DBIPT', 'PT', 'DBI202', 40, '60 mins', 0.3,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('DBIFE', 'FE', 'DBI202', 60, '90 mins', 0.4,'2'); 

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('IAOLAB1', 'LAB1', 'IAO202', 15, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('IAOLAB2', 'LAB2', 'IAO202', 15, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('IAOAS', 'AS', 'IAO202', 30, '45 mins', 0.1,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('IAOPT1', 'PT1', 'IAO202', 40, '60 mins', 0.2,'1');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('IAOPT2', 'PT2', 'IAO202', 40, '60 mins', 0.2,'1');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('IAOFE', 'FE', 'IAO202', 60, '90 mins', 0.4,'1');

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('JPDAS1', 'AS1', 'JPD113', 10, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('JPDAS2', 'AS2', 'JPD113', 10, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('JPDLAB1', 'LAB1', 'JPD113', 15, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('JPDLAB2', 'LAB2', 'JPD113', 15, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('JPDPT1', 'PT1', 'JPD113', 30, '60 mins', 0.2,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('JPDPT2', 'PT2', 'JPD113', 30, '60 mins', 0.2,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('JPDFE', 'FE', 'JPD113', 10, '30 mins', 0.4,'2');

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('LABLOC', 'LOC', 'LAB211', 75, '30 Slots', 1,'2');

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MADAS1', 'AS1', 'MAD101', 10, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MADAS2', 'AS2', 'MAD101', 10, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MADLAB1', 'LAB1', 'MAD101', 15, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MADLAB2', 'LAB2', 'MAD101', 15, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MADPT1', 'PT1', 'MAD101', 30, '60 mins', 0.2,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MADPT2', 'PT2', 'MAD101', 30, '60 mins', 0.2,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MADFE', 'FE', 'MAD101', 10, '30 mins', 0.4,'2');

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MAEAS1', 'AS1', 'MAE101', 10, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MAEAS2', 'AS2', 'MAE101', 10, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MAELAB1', 'LAB1', 'MAE101', 15, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MAELAB2', 'LAB2', 'MAE101', 15, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MAEPT1', 'PT1', 'MAE101', 30, '60 mins', 0.2,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MAEPT2', 'PT2', 'MAE101', 30, '60 mins', 0.2,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('MAEFE', 'FE', 'MAE101', 10, '30 mins', 0.4,'2');

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('NWCLAB1', 'LAB1', 'NWC204', 15, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('NWCLAB2', 'LAB2', 'NWC204', 15, '30 mins', 0.05,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('NWCAS', 'AS', 'NWC204', 30, '45 mins', 0.1,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('NWCPT1', 'PT1', 'NWC204', 40, '60 mins', 0.2,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('NWCPT2', 'PT2', 'NWC204', 40, '60 mins', 0.2,'2');
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('NWCFE', 'FE', 'NWC204', 60, '90 mins', 0.4,'2');

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('OSGLAB1', 'LAB1', 'OSG202', 10, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('OSGLAB2', 'LAB2', 'OSG202', 10, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('OSGAS', 'AS', 'OSG202', 25, '30 mins', 0.1,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('OSGPT', 'PT', 'OSG202', 35, '60 mins', 0.1,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('OSGPE', 'PE', 'OSG202', 15, '90 mins', 0.3,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('OSGFE', 'FE', 'OSG202', 50, '90 mins', 0.4,'2');

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PRFLAB1', 'LAB1', 'PRF192', 10, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PRFLAB2', 'LAB2', 'PRF192', 10, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PRFAS', 'AS', 'PRF192', 25, '30 mins', 0.1,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PRFPT', 'PT', 'PRF192', 35, '60 mins', 0.1,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PRFPE', 'PE', 'PRF192', 15, '90 mins', 0.3,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PRFFE', 'FE', 'PRF192', 50, '90 mins', 0.4,'2');

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PROLAB1', 'LAB1', 'PRO192', 10, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PROLAB2', 'LAB2', 'PRO192', 10, '30 mins', 0.05,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PROAS', 'AS', 'PRO192', 25, '30 mins', 0.1,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PROPT', 'PT', 'PRO192', 35, '60 mins', 0.1,'1'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PROPE', 'PE', 'PRO192', 15, '90 mins', 0.3,'3'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('PROFE', 'FE', 'PRO192', 50, '90 mins', 0.4,'3');

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('SSGAS1', 'AS1', 'SSG104', 20, '30 mins', 0.1,'3'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('SSGAS2', 'AS2', 'SSG104', 20, '30 mins', 0.1,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('SSGPT1', 'PT1', 'SSG104', 30, '60 mins', 0.2,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('SSGPT2', 'PT2', 'SSG104', 30, '60 mins', 0.2,'2'); 
INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('SSGFE', 'FE', 'SSG104', 50, '90 mins', 0.4,'2'); 

INSERT [Assessment_System](AssID, CatID, CouID, [Num_Of_Ques], Duration, [Weigh], GuideID) VALUES ('SSLFE', 'FE', 'SSL101c', 50, '90 mins', 0.4,'3'); 


SELECT * FROM [Assessment_System]
SELECT * FROM Classes

INSERT Assess(AssID, ClassID) VALUES ('PROAS', 'FA21APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROLAB1', 'FA21APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROLAB2', 'FA21APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROPT', 'FA21APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROPE', 'FA21APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROFE', 'FA21APRO')

INSERT Assess(AssID, ClassID) VALUES ('IAOLAB1', 'FA21BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOLAB2', 'FA21BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOAS', 'FA21BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOPT1', 'FA21BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOPT2', 'FA21BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOFE', 'FA21BIAO');

INSERT Assess(AssID, ClassID) VALUES ('NWCAS', 'FA21BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCLAB1', 'FA21BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCLAB2', 'FA21BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCPT1', 'FA21BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCPT2', 'FA21BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCFE', 'FA21BNWC');

INSERT Assess(AssID, ClassID) VALUES ('LABLOC', 'FA21CLAB');

INSERT Assess(AssID, ClassID) VALUES ('DBIAS', 'FA21DDBI');
INSERT Assess(AssID, ClassID) VALUES ('DBILAB1', 'FA21DDBI');
INSERT Assess(AssID, ClassID) VALUES ('DBILAB2', 'FA21DDBI');
INSERT Assess(AssID, ClassID) VALUES ('DBIPT', 'FA21DDBI');
INSERT Assess(AssID, ClassID) VALUES ('DBIFE', 'FA21DDBI');

INSERT Assess(AssID, ClassID) VALUES ('CSDAS', 'FA21ECSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDLAB1', 'FA21ECSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDLAB2', 'FA21ECSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDPT', 'FA21ECSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDPE', 'FA21ECSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDFE', 'FA21ECSD');

INSERT Assess(AssID, ClassID) VALUES ('JPDAS1', 'FA21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDAS2', 'FA21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDLAB1', 'FA21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDLAB2', 'FA21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDPT1', 'FA21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDPT2', 'FA21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDFE', 'FA21FJPD');

INSERT Assess(AssID, ClassID) VALUES ('SSGAS1', 'FA21GSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGAS2', 'FA21GSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGPT1', 'FA21GSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGPT2', 'FA21GSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGFE', 'FA21GSSG');

INSERT Assess(AssID, ClassID) VALUES ('OSGAS', 'FA21HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGLAB1', 'FA21HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGLAB2', 'FA21HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGPT', 'FA21HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGPE', 'FA21HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGFE', 'FA21HOSG');

INSERT Assess(AssID, ClassID) VALUES ('PRFAS', 'FA21HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFLAB1', 'FA21HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFLAB2', 'FA21HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFPT', 'FA21HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFPE', 'FA21HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFFE', 'FA21HPRF');

INSERT Assess(AssID, ClassID) VALUES ('CSIAS1', 'FA21ICSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIAS2', 'FA21ICSI');
INSERT Assess(AssID, ClassID) VALUES ('CSILAB1', 'FA21ICSI');
INSERT Assess(AssID, ClassID) VALUES ('CSILAB2', 'FA21ICSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIPT1', 'FA21ICSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIPT2', 'FA21ICSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIFE', 'FA21ICSI');

INSERT Assess(AssID, ClassID) VALUES ('MAEAS1', 'FA21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEAS2', 'FA21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAELAB1', 'FA21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAELAB2', 'FA21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEPT1', 'FA21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEPT2', 'FA21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEFE', 'FA21IMAE');

INSERT Assess(AssID, ClassID) VALUES ('SSLFE', 'FA21ISSL');

INSERT Assess(AssID, ClassID) VALUES ('MADAS1', 'FA21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADAS2', 'FA21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADLAB1', 'FA21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADLAB2', 'FA21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADPT1', 'FA21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADPT2', 'FA21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADFE', 'FA21JMAD');

INSERT Assess(AssID, ClassID) VALUES ('CEAAS1', 'FA21KCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAAS2', 'FA21KCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAPT1', 'FA21KCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAPT2', 'FA21KCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAFE', 'FA21KCEA');

INSERT Assess(AssID, ClassID) VALUES ('CSDAS', 'SP22ACSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDLAB1', 'SP22ACSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDLAB2', 'SP22ACSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDPT', 'SP22ACSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDPE', 'SP22ACSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDFE', 'SP22ACSD');

INSERT Assess(AssID, ClassID) VALUES ('DBIAS', 'SP22ADBI');
INSERT Assess(AssID, ClassID) VALUES ('DBILAB1', 'SP22ADBI');
INSERT Assess(AssID, ClassID) VALUES ('DBILAB2', 'SP22ADBI');
INSERT Assess(AssID, ClassID) VALUES ('DBIPT', 'SP22ADBI');
INSERT Assess(AssID, ClassID) VALUES ('DBIFE', 'SP22ADBI');

INSERT Assess(AssID, ClassID) VALUES ('PROAS', 'SP22APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROLAB1', 'SP22APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROLAB2', 'SP22APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROPT', 'SP22APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROPE', 'SP22APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROFE', 'SP22APRO')

INSERT Assess(AssID, ClassID) VALUES ('CSDAS', 'SP22BCSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDLAB1', 'SP22BCSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDLAB2', 'SP22BCSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDPT', 'SP22BCSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDPE', 'SP22BCSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDFE', 'SP22BCSD');

INSERT Assess(AssID, ClassID) VALUES ('IAOLAB1', 'SP22BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOLAB2', 'SP22BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOAS', 'SP22BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOPT1', 'SP22BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOPT2', 'SP22BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOFE', 'SP22BIAO');

INSERT Assess(AssID, ClassID) VALUES ('NWCAS', 'SP22BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCLAB1', 'SP22BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCLAB2', 'SP22BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCPT1', 'SP22BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCPT2', 'SP22BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCFE', 'SP22BNWC');

INSERT Assess(AssID, ClassID) VALUES ('LABLOC', 'SP22CLAB');

INSERT Assess(AssID, ClassID) VALUES ('DBIAS', 'SP22DDBI');
INSERT Assess(AssID, ClassID) VALUES ('DBILAB1', 'SP22DDBI');
INSERT Assess(AssID, ClassID) VALUES ('DBILAB2', 'SP22DDBI');
INSERT Assess(AssID, ClassID) VALUES ('DBIPT', 'SP22DDBI');
INSERT Assess(AssID, ClassID) VALUES ('DBIFE', 'SP22DDBI');

INSERT Assess(AssID, ClassID) VALUES ('LABLOC', 'SP22DLAB');

INSERT Assess(AssID, ClassID) VALUES ('CSDAS', 'SP22ECSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDLAB1', 'SP22ECSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDLAB2', 'SP22ECSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDPT', 'SP22ECSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDPE', 'SP22ECSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDFE', 'SP22ECSD');

INSERT Assess(AssID, ClassID) VALUES ('JPDAS1', 'SP22FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDAS2', 'SP22FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDLAB1', 'SP22FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDLAB2', 'SP22FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDPT1', 'SP22FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDPT2', 'SP22FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDFE', 'SP22FJPD');

INSERT Assess(AssID, ClassID) VALUES ('SSGAS1', 'SP22FSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGAS2', 'SP22FSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGPT1', 'SP22FSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGPT2', 'SP22FSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGFE', 'SP22FSSG');

INSERT Assess(AssID, ClassID) VALUES ('JPDAS1', 'SP22GJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDAS2', 'SP22GJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDLAB1', 'SP22GJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDLAB2', 'SP22GJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDPT1', 'SP22GJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDPT2', 'SP22GJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDFE', 'SP22GJPD');

INSERT Assess(AssID, ClassID) VALUES ('SSGAS1', 'SP22GSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGAS2', 'SP22GSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGPT1', 'SP22GSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGPT2', 'SP22GSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGFE', 'SP22GSSG');

INSERT Assess(AssID, ClassID) VALUES ('CEAAS1', 'SP22HCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAAS2', 'SP22HCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAPT1', 'SP22HCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAPT2', 'SP22HCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAFE', 'SP22HCEA');

INSERT Assess(AssID, ClassID) VALUES ('OSGAS', 'SP22HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGLAB1', 'SP22HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGLAB2', 'SP22HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGPT', 'SP22HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGPE', 'SP22HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGFE', 'SP22HOSG');

INSERT Assess(AssID, ClassID) VALUES ('PRFAS', 'SP22HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFLAB1', 'SP22HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFLAB2', 'SP22HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFPT', 'SP22HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFPE', 'SP22HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFFE', 'SP22HPRF');

INSERT Assess(AssID, ClassID) VALUES ('MAEAS1', 'SP22IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEAS2', 'SP22IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAELAB1', 'SP22IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAELAB2', 'SP22IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEPT1', 'SP22IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEPT2', 'SP22IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEFE', 'SP22IMAE');

INSERT Assess(AssID, ClassID) VALUES ('SSLFE', 'SP22ISSL');

INSERT Assess(AssID, ClassID) VALUES ('CEAAS1', 'SP22JCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAAS2', 'SP22JCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAPT1', 'SP22JCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAPT2', 'SP22JCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAFE', 'SP22JCEA');

INSERT Assess(AssID, ClassID) VALUES ('MADAS1', 'SP22JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADAS2', 'SP22JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADLAB1', 'SP22JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADLAB2', 'SP22JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADPT1', 'SP22JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADPT2', 'SP22JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADFE', 'SP22JMAD');

INSERT Assess(AssID, ClassID) VALUES ('CSIAS1', 'SP22KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIAS2', 'SP22KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSILAB1', 'SP22KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSILAB2', 'SP22KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIPT1', 'SP22KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIPT2', 'SP22KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIFE', 'SP22KCSI');

INSERT Assess(AssID, ClassID) VALUES ('CSDAS', 'SU21ACSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDLAB1', 'SU21ACSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDLAB2', 'SU21ACSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDPT', 'SU21ACSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDPE', 'SU21ACSD');
INSERT Assess(AssID, ClassID) VALUES ('CSDFE', 'SU21ACSD');

INSERT Assess(AssID, ClassID) VALUES ('DBIAS', 'SU21ADBI');
INSERT Assess(AssID, ClassID) VALUES ('DBILAB1', 'SU21ADBI');
INSERT Assess(AssID, ClassID) VALUES ('DBILAB2', 'SU21ADBI');
INSERT Assess(AssID, ClassID) VALUES ('DBIPT', 'SU21ADBI');
INSERT Assess(AssID, ClassID) VALUES ('DBIFE', 'SU21ADBI');

INSERT Assess(AssID, ClassID) VALUES ('PROAS', 'SU21APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROLAB1', 'SU21APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROLAB2', 'SU21APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROPT', 'SU21APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROPE', 'SU21APRO')
INSERT Assess(AssID, ClassID) VALUES ('PROFE', 'SU21APRO')

INSERT Assess(AssID, ClassID) VALUES ('IAOLAB1', 'SU21BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOLAB2', 'SU21BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOAS', 'SU21BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOPT1', 'SU21BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOPT2', 'SU21BIAO');
INSERT Assess(AssID, ClassID) VALUES ('IAOFE', 'SU21BIAO');

INSERT Assess(AssID, ClassID) VALUES ('NWCAS', 'SU21BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCLAB1', 'SU21BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCLAB2', 'SU21BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCPT1', 'SU21BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCPT2', 'SU21BNWC');
INSERT Assess(AssID, ClassID) VALUES ('NWCFE', 'SU21BNWC');

INSERT Assess(AssID, ClassID) VALUES ('LABLOC', 'SU21CLAB');

INSERT Assess(AssID, ClassID) VALUES ('JPDAS1', 'SU21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDAS2', 'SU21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDLAB1', 'SU21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDLAB2', 'SU21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDPT1', 'SU21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDPT2', 'SU21FJPD');
INSERT Assess(AssID, ClassID) VALUES ('JPDFE', 'SU21FJPD');

INSERT Assess(AssID, ClassID) VALUES ('SSGAS1', 'SU21FSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGAS2', 'SU21FSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGPT1', 'SU21FSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGPT2', 'SU21FSSG');
INSERT Assess(AssID, ClassID) VALUES ('SSGFE', 'SU21FSSG');

INSERT Assess(AssID, ClassID) VALUES ('OSGAS', 'SU21HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGLAB1', 'SU21HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGLAB2', 'SU21HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGPT', 'SU21HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGPE', 'SU21HOSG');
INSERT Assess(AssID, ClassID) VALUES ('OSGFE', 'SU21HOSG');

INSERT Assess(AssID, ClassID) VALUES ('PRFAS', 'SU21HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFLAB1', 'SU21HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFLAB2', 'SU21HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFPT', 'SU21HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFPE', 'SU21HPRF');
INSERT Assess(AssID, ClassID) VALUES ('PRFFE', 'SU21HPRF');

INSERT Assess(AssID, ClassID) VALUES ('MAEAS1', 'SU21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEAS2', 'SU21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAELAB1', 'SU21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAELAB2', 'SU21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEPT1', 'SU21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEPT2', 'SU21IMAE');
INSERT Assess(AssID, ClassID) VALUES ('MAEFE', 'SU21IMAE');

INSERT Assess(AssID, ClassID) VALUES ('SSLFE', 'SU21ISSL');

INSERT Assess(AssID, ClassID) VALUES ('CEAAS1', 'SU21JCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAAS2', 'SU21JCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAPT1', 'SU21JCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAPT2', 'SU21JCEA');
INSERT Assess(AssID, ClassID) VALUES ('CEAFE', 'SU21JCEA');

INSERT Assess(AssID, ClassID) VALUES ('MADAS1', 'SU21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADAS2', 'SU21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADLAB1', 'SU21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADLAB2', 'SU21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADPT1', 'SU21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADPT2', 'SU21JMAD');
INSERT Assess(AssID, ClassID) VALUES ('MADFE', 'SU21JMAD');

INSERT Assess(AssID, ClassID) VALUES ('CSIAS1', 'SU21KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIAS2', 'SU21KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSILAB1', 'SU21KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSILAB2', 'SU21KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIPT1', 'SU21KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIPT2', 'SU21KCSI');
INSERT Assess(AssID, ClassID) VALUES ('CSIFE', 'SU21KCSI');


SELECT * FROM Assess


INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CEAAS1', 6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CEAAS2', 5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CEAFE', 7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CEAPT1', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CEAPT2', 1.2, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSIAS1', 7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSIAS2', 9, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSIFE', 10, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSILAB1', 10, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSILAB2', 0.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSIPT1', 8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSIPT2', 9, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDAS1', 2.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDAS2', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDFE', 8.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDLAB1', 5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDLAB2', 6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDPT1', 8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDPT2', 9, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MAEAS1', 10, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MAEAS2', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MAEFE', 2.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MAELAB1', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MAELAB2', 7.8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MAEPT1', 9.2, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MAEPT2', 5.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PRFAS', 3.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PRFFE', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PRFLAB1', 4.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PRFLAB2', 7.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PRFPE', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PRFPT', 8.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'SSLFE', 8.9, CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSDAS', 9.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSDFE', 8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSDLAB1', 7.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSDLAB2', 6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSDPE', 8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'CSDPT', 8.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'DBIAS', 9.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'DBIFE', 10, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'DBILAB1', 9.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'DBILAB2', 7.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'DBIPT', 8.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'IAOAS', 9.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'IAOFE', 5.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'IAOLAB1', 8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'IAOLAB2', 9, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'IAOPT1', 7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'IAOPT2', 6.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDAS1', 8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDAS2', 9, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDFE', 10, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDLAB1', 8.9, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDLAB2', 9.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDPT1', 9.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'JPDPT2', 8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'LABLOC', 750, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MADAS1', 7.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MADAS2', 8.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MADFE', 9.0, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MADLAB1', 9.7, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MADLAB2', 5.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MADPT1', 7.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'MADPT2', 9.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'NWCAS', 10.0, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'NWCFE', 9.0, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'NWCLAB1', 8.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'NWCLAB2', 7.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'NWCPT1', 8.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'NWCPT2', 7.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'OSGAS', 9.4, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'OSGFE', 7.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'OSGLAB1', 8.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'OSGLAB2', 6.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'OSGPE', 7.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'OSGPT', 8.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PROAS', 10.0, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PROFE', 9.0, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PROLAB1', 9.4, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PROLAB2', 7.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PROPE', 8.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00001', 'PROPT', 6.5, CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CEAAS1', 6.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CEAAS2', 7.2, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CEAFE', 8.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CEAPT1', 9.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CEAPT2', 6.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSIAS1', 7.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSIAS2', 6.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSIFE', 7.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSILAB1', 5.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSILAB2', 8.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSIPT1', 9.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSIPT2', 7.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDAS1', 8.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDAS2', 5.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDFE', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDLAB1', 6.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDLAB2', 8.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDPT1', 9.8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDPT2', 6.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MAEAS1', 5.9, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MAEAS2', 6.8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MAEFE', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MAELAB1', 6.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MAELAB2', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MAEPT1', 6.8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MAEPT2', 9.2, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PRFAS', 9.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PRFFE', 6.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PRFLAB1', 5.2, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PRFLAB2', 8.2, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PRFPE', 7.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PRFPT', 5.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'SSLFE', 9.6, CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MADAS1', 6.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MADAS2', 7.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MADFE', 6.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MADLAB1', 8.4, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MADLAB2', 7.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MADPT1', 6.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'MADPT2', 7.4, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'NWCAS', 8.4, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'NWCFE', 6.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'NWCLAB1', 7.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'NWCLAB2', 9.7, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'NWCPT1', 8.4, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'NWCPT2', 6.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'OSGAS', 7.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'OSGFE', 8.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'OSGLAB1', 6.7, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'OSGLAB2', 7.9, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'OSGPE', 6.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'OSGPT', 9.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PROAS', 8.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PROFE', 8.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PROLAB1', 6.7, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PROLAB2', 8.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PROPE', 7.9, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'PROPT', 8.5, CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSDAS', 3.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSDFE', 4.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSDLAB1', 3.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSDLAB2', 2.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSDPE', 3.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'CSDPT', 4.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'DBIAS', 5.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'DBIFE', 2.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'DBILAB1', 5.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'DBILAB2', 2.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'DBIPT', 4.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'IAOAS', 1.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'IAOFE', 3.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'IAOLAB1', 4.1, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'IAOLAB2', 8.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'IAOPT1', 2.9, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'IAOPT2', 1.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDAS1', 2.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDAS2', 4.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDFE', 5.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDLAB1', 3.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDLAB2', 5.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDPT1', 2.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'JPDPT2', 5.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00002', 'LABLOC', 120, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CEAAS1', 9.2, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CEAAS2', 8.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CEAFE', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CEAPT1', 7.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CEAPT2', 8.0, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSIAS1', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSIAS2', 9.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSIFE', 8.8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSILAB1', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSILAB2', 8.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSIPT1', 9.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSIPT2', 7.0, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDAS1', 8.1, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDAS2', 9.1, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDFE', 9.9, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDLAB1', 8.8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDLAB2', 7.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDPT1', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDPT2', 7.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MAEAS1', 9.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MAEAS2', 9.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MAEFE', 9.2, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MAELAB1', 9.1, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MAELAB2', 8.0, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MAEPT1', 8.9, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MAEPT2', 9.8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PRFAS', 9.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PRFFE', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PRFLAB1', 9.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PRFLAB2', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PRFPE', 9.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PRFPT', 9.2, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'SSLFE', 9.1, CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MADAS1', 5.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MADAS2', 7.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MADFE', 7.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MADLAB1', 6.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MADLAB2', 5.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MADPT1', 3.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'MADPT2', 3.4, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'NWCAS', 2.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'NWCFE', 3.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'NWCLAB1', 3.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'NWCLAB2', 5.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'NWCPT1', 3.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'NWCPT2', 5.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'OSGAS', 4.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'OSGFE', 3.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'OSGLAB1', 3.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'OSGLAB2', 6.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'OSGPE', 5.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'OSGPT', 4.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PROAS', 6.7, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PROFE', 5.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PROLAB1', 4.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PROLAB2', 6.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PROPE', 5.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'PROPT', 4.1, CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSDAS', 8.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSDFE', 7.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSDLAB1', 7.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSDLAB2', 8.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSDPE', 9.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'CSDPT', 9.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'DBIAS', 8.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'DBIFE', 8.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'DBILAB1', 8.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'DBILAB2', 9.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'DBIPT', 8.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'IAOAS', 8.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'IAOFE', 9.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'IAOLAB1', 9.1, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'IAOLAB2', 8.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'IAOPT1', 9.9, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'IAOPT2', 9.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDAS1', 8.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDAS2', 8.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDFE', 7.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDLAB1', 7.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDLAB2', 9.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDPT1', 8.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'JPDPT2', 7.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00003', 'LABLOC', 900, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CEAAS1', 4.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CEAAS2', 2.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CEAFE', 3.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CEAPT1', 4.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CEAPT2', 5.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSIAS1', 6.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSIAS2', 3.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSIFE', 4.8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSILAB1', 2.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSILAB2', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSIPT1', 5.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSIPT2', 4.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDAS1', 5.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDAS2', 3.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDFE', 4.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDLAB1', 4.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDLAB2', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDPT1', 6.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDPT2', 5.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MAEAS1', 6.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MAEAS2', 4.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MAEFE', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MAELAB1', 7.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MAELAB2', 4.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MAEPT1', 5.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MAEPT2', 6.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PRFAS', 3.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PRFFE', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PRFLAB1', 2.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PRFLAB2', 6.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PRFPE', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PRFPT', 6.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'SSLFE', 7.5, CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MADAS1', 7.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MADAS2', 5.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MADFE', 8.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MADLAB1', 9.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MADLAB2', 6.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MADPT1', 8.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'MADPT2', 4.4, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'NWCAS', 7.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'NWCFE', 8.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'NWCLAB1', 9.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'NWCLAB2', 7.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'NWCPT1', 6.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'NWCPT2', 6.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'OSGAS', 7.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'OSGFE', 8.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'OSGLAB1', 9.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'OSGLAB2', 6.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'OSGPE', 6.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'OSGPT', 8.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PROAS', 7.7, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PROFE', 9.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PROLAB1', 6.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PROLAB2', 7.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PROPE', 8.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'PROPT', 7.1, CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSDAS', 6.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSDFE', 6.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSDLAB1', 5.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSDLAB2', 5.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSDPE', 7.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'CSDPT', 6.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'DBIAS', 6.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'DBIFE', 5.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'DBILAB1', 5.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'DBILAB2', 6.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'DBIPT', 7.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'IAOAS', 6.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'IAOFE', 7.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'IAOLAB1', 7.1, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'IAOLAB2', 7.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'IAOPT1', 6.9, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'IAOPT2', 5.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDAS1', 4.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDAS2', 5.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDFE', 7.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDLAB1', 7.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDLAB2', 7.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDPT1', 6.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'JPDPT2', 5.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00004', 'LABLOC', 800, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CEAAS1', 4.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CEAAS2', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CEAFE', 3.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CEAPT1', 7.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CEAPT2', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSIAS1', 6.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSIAS2', 8.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSIFE', 7.8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSILAB1', 6.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSILAB2', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSIPT1', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSIPT2', 4.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDAS1', 5.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDAS2', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDFE', 8.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDLAB1', 8.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDLAB2', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDPT1', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDPT2', 8.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MAEAS1', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MAEAS2', 6.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MAEFE', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MAELAB1', 7.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MAELAB2', 4.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MAEPT1', 5.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MAEPT2', 6.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PRFAS', 3.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PRFFE', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PRFLAB1', 2.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PRFLAB2', 6.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PRFPE', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PRFPT', 6.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'SSLFE', 7.5, CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MADAS1', 7.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MADAS2', 5.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MADFE', 6.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MADLAB1', 6.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MADLAB2', 6.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MADPT1', 8.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'MADPT2', 8.4, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'NWCAS', 7.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'NWCFE', 5.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'NWCLAB1', 9.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'NWCLAB2', 7.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'NWCPT1', 5.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'NWCPT2', 5.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'OSGAS', 7.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'OSGFE', 8.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'OSGLAB1', 5.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'OSGLAB2', 3.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'OSGPE', 4.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'OSGPT', 6.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PROAS', 5.7, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PROFE', 7.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PROLAB1', 5.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PROLAB2', 6.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PROPE', 8.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'PROPT', 7.1, CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSDAS', 6.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSDFE', 9.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSDLAB1', 8.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSDLAB2', 8.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSDPE', 6.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'CSDPT', 5.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'DBIAS', 5.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'DBIFE', 4.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'DBILAB1', 8.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'DBILAB2', 6.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'DBIPT', 7.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'IAOAS', 6.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'IAOFE', 6.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'IAOLAB1', 5.1, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'IAOLAB2', 6.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'IAOPT1', 8.9, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'IAOPT2', 7.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDAS1', 8.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDAS2', 7.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDFE', 8.9, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDLAB1', 8.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDLAB2', 8.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDPT1', 7.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'JPDPT2', 6.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00005', 'LABLOC', 850, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CEAAS1', 7.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CEAAS2', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CEAFE', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CEAPT1', 7.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CEAPT2', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSIAS1', 6.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSIAS2', 8.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSIFE', 7.8, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSILAB1', 6.7, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSILAB2', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSIPT1', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSIPT2', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDAS1', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDAS2', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDFE', 8.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDLAB1', 8.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDLAB2', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDPT1', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDPT2', 8.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MAEAS1', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MAEAS2', 6.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MAEFE', 6.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MAELAB1', 7.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MAELAB2', 8.3, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MAEPT1', 8.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MAEPT2', 6.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PRFAS', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PRFFE', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PRFLAB1', 8.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PRFLAB2', 8.5, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PRFPE', 7.4, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PRFPT', 7.6, CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'SSLFE', 7.5, CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MADAS1', 7.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MADAS2', 7.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MADFE', 7.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MADLAB1', 8.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MADLAB2', 8.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MADPT1', 8.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'MADPT2', 6.4, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'NWCAS', 7.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'NWCFE', 7.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'NWCLAB1', 8.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'NWCLAB2', 7.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'NWCPT1', 7.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'NWCPT2', 7.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'OSGAS', 7.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'OSGFE', 8.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'OSGLAB1', 8.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'OSGLAB2', 8.5, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'OSGPE', 7.6, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'OSGPT', 7.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PROAS', 7.7, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PROFE', 7.3, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PROLAB1', 7.8, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PROLAB2', 7.1, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PROPE', 8.2, CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'PROPT', 8.1, CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSDAS', 6.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSDFE', 6.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSDLAB1', 5.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSDLAB2', 4.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSDPE', 6.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'CSDPT', 5.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'DBIAS', 5.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'DBIFE', 4.7, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'DBILAB1', 7.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'DBILAB2', 6.5, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'DBIPT', 7.4, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'IAOAS', 6.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'IAOFE', 6.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'IAOLAB1', 5.1, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'IAOLAB2', 6.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'IAOPT1', 5.9, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'IAOPT2', 6.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDAS1', 6.8, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDAS2', 5.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDFE', 4.9, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDLAB1', 6.2, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDLAB2', 5.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDPT1', 6.3, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'JPDPT2', 6.6, CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00006', 'LABLOC', 450, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CEAAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CEAAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CEAFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CEAPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CEAPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSIAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSIAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSIFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSIPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSIPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MAEAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MAEAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MAEFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MAELAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MAELAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MAEPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MAEPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PRFAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PRFFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PRFLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PRFLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PRFPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PRFPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'SSLFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MADAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MADAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MADFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MADLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MADLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MADPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'MADPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'NWCAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'NWCFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'NWCLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'NWCLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'NWCPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'NWCPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'OSGAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'OSGFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'OSGLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'OSGLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'OSGPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'OSGPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PROAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PROFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PROLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PROLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PROPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'PROPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSDAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSDPE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'CSDPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'DBIAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'DBIFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'DBILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'DBILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'DBIPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'IAOAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'IAOFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'IAOLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'IAOLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'IAOPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'IAOPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00007', 'LABLOC', 450, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CEAAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CEAAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CEAFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CEAPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CEAPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSIAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSIAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSIFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSIPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSIPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MAEAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MAEAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MAEFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MAELAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MAELAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MAEPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MAEPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PRFAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PRFFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PRFLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PRFLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PRFPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PRFPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'SSLFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MADAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MADAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MADFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MADLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MADLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MADPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'MADPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'NWCAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'NWCFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'NWCLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'NWCLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'NWCPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'NWCPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'OSGAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'OSGFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'OSGLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'OSGLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'OSGPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'OSGPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PROAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PROFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PROLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PROLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PROPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'PROPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSDAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSDPE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'CSDPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'DBIAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'DBIFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'DBILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'DBILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'DBIPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'IAOAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'IAOFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'IAOLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'IAOLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'IAOPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'IAOPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00008', 'LABLOC', 750, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CEAAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CEAAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CEAFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CEAPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CEAPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSIAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSIAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSIFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSIPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSIPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MAEAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MAEAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MAEFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MAELAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MAELAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MAEPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MAEPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PRFAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PRFFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PRFLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PRFLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PRFPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PRFPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'SSLFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MADAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MADAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MADFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MADLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MADLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MADPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'MADPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'NWCAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'NWCFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'NWCLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'NWCLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'NWCPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'NWCPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'OSGAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'OSGFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'OSGLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'OSGLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'OSGPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'OSGPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PROAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PROFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PROLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PROLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PROPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'PROPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSDAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSDPE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'CSDPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'DBIAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'DBIFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'DBILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'DBILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'DBIPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'IAOAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'IAOFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'IAOLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'IAOLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'IAOPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'IAOPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00009', 'LABLOC', 750, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CEAAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CEAAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CEAFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CEAPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CEAPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSIAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSIAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSIFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSIPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSIPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MAEAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MAEAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MAEFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MAELAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MAELAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MAEPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MAEPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PRFAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PRFFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PRFLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PRFLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PRFPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PRFPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'SSLFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MADAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MADAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MADFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MADLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MADLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MADPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'MADPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'NWCAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'NWCFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'NWCLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'NWCLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'NWCPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'NWCPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'OSGAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'OSGFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'OSGLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'OSGLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'OSGPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'OSGPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PROAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PROFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PROLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PROLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PROPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'PROPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSDAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSDPE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'CSDPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'DBIAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'DBIFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'DBILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'DBILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'DBIPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'IAOAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'IAOFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'IAOLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'IAOLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'IAOPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'IAOPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00010', 'LABLOC', 750, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CEAAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CEAAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CEAFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CEAPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CEAPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSIAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSIAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSIFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSIPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSIPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MAEAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MAEAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MAEFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MAELAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MAELAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MAEPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MAEPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PRFAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PRFFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PRFLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PRFLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PRFPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PRFPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'SSLFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MADAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MADAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MADFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MADLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MADLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MADPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'MADPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'NWCAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'NWCFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'NWCLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'NWCLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'NWCPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'NWCPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'OSGAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'OSGFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'OSGLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'OSGLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'OSGPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'OSGPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PROAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PROFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PROLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PROLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PROPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'PROPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSDAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSDPE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'CSDPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'DBIAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'DBIFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'DBILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'DBILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'DBIPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'IAOAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'IAOFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'IAOLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'IAOLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'IAOPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'IAOPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00011', 'LABLOC', 950, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CEAAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CEAAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CEAFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CEAPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CEAPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSIAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSIAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSIFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSIPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSIPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MAEAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MAEAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MAEFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MAELAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MAELAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MAEPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MAEPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PRFAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PRFFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PRFLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PRFLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PRFPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PRFPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'SSLFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MADAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MADAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MADFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MADLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MADLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MADPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'MADPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'NWCAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'NWCFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'NWCLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'NWCLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'NWCPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'NWCPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'OSGAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'OSGFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'OSGLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'OSGLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'OSGPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'OSGPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PROAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PROFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PROLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PROLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PROPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'PROPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSDAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSDPE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'CSDPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'DBIAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'DBIFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'DBILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'DBILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'DBIPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'IAOAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'IAOFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'IAOLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'IAOLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'IAOPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'IAOPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00012', 'LABLOC', 550, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CEAAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CEAAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CEAFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CEAPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CEAPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSIAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSIAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSIFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSIPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSIPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MAEAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MAEAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MAEFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MAELAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MAELAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MAEPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MAEPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PRFAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PRFFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PRFLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PRFLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PRFPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PRFPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'SSLFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MADAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MADAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MADFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MADLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MADLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MADPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'MADPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'NWCAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'NWCFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'NWCLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'NWCLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'NWCPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'NWCPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'OSGAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'OSGFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'OSGLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'OSGLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'OSGPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'OSGPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PROAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PROFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PROLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PROLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PROPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'PROPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSDAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSDPE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'CSDPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'DBIAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'DBIFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'DBILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'DBILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'DBIPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'IAOAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'IAOFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'IAOLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'IAOLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'IAOPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'IAOPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00013', 'LABLOC', 1000, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CEAAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CEAAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CEAFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CEAPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CEAPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSIAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSIAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSIFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSIPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSIPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MAEAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MAEAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MAEFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MAELAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MAELAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MAEPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MAEPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PRFAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PRFFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PRFLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PRFLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PRFPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PRFPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'SSLFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MADAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MADAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MADFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MADLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MADLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MADPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'MADPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'NWCAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'NWCFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'NWCLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'NWCLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'NWCPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'NWCPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'OSGAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'OSGFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'OSGLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'OSGLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'OSGPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'OSGPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PROAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PROFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PROLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PROLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PROPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'PROPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSDAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSDPE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'CSDPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'DBIAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'DBIFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'DBILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'DBILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'DBIPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'IAOAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'IAOFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'IAOLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'IAOLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'IAOPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'IAOPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00014', 'LABLOC', 800, CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CEAAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CEAAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CEAFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CEAPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CEAPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSIAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSIAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSIFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSIPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSIPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MAEAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MAEAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MAEFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MAELAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MAELAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MAEPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MAEPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PRFAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PRFFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PRFLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PRFLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PRFPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PRFPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'SSLFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-08-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MADAS1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MADAS2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MADFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MADLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MADLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MADPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'MADPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'NWCAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'NWCFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'NWCLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'NWCLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'NWCPT1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'NWCPT2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'OSGAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'OSGFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'OSGLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'OSGLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'OSGPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'OSGPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PROAS', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PROFE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PROLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PROLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PROPE', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'PROPT', ROUND((RAND()*(10-5)+5),2), CAST('2021-12-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSDAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))

INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSDPE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'CSDPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'DBIAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'DBIFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'DBILAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'DBILAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'DBIPT', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'IAOAS', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'IAOFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'IAOLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'IAOLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'IAOPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'IAOPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDAS1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDAS2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDFE', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDLAB1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDLAB2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDPT1', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'JPDPT2', ROUND((RAND()*(10-5)+5),2), CAST('2022-04-01' AS date))
INSERT Grade(StudentID, AssID, Score, [Date]) VALUES ('HE00015', 'LABLOC', 800, CAST('2022-04-01' AS date))

DECLARE @STUDENTID2 VARCHAR(50);
DECLARE @ASSID VARCHAR(50);
DECLARE @DATE DATE;

DECLARE Ins_View_Students_Classes_IA1608_Cursor CURSOR FOR 
SELECT Students.StudentID, [AS].AssID, [End_Date]
FROM 
	(SELECT * FROM [JOINGroupsStudents] WHERE GrID = 'IA1604') AS IA1604
		INNER join Students ON Students.StudentID = IA1604.StudentID
		INNER join Enroll ON Enroll.GrID = IA1604.GrID
		INNER join Classes ON Classes.ClassID = Enroll.ClassID
		INNER join Assess ON Assess.ClassID = Classes.ClassID
		INNER join [Assessment_System] AS [AS] ON [AS].AssID = Assess.AssID
ORDER BY 1
OPEN Ins_View_Students_Classes_IA1604_Cursor

FETCH NEXT FROM Ins_View_Students_Classes_IA1608_Cursor INTO @STUDENTID2, @ASSID, @DATE
WHILE @@FETCH_STATUS = 0
BEGIN 
	INSERT Grade(StudentID, AssID, Score, [Date]) VALUES (@STUDENTID2, @ASSID, ROUND((RAND()*(10-5)+5),2), @DATE)
	FETCH NEXT FROM Ins_View_Students_Classes_IA1608_Cursor INTO @STUDENTID2, @ASSID, @DATE
END
CLOSE Ins_View_Students_Classes_IA1608_Cursor
DEALLOCATE Ins_View_Students_Classes_IA1608_Cursor



DECLARE @STUDENTID VARCHAR(50);
DECLARE @CLID VARCHAR(50);
DECLARE @AVG FLOAT; 
DECLARE @STATUS VARCHAR(50);

DECLARE Ins_View_Students_Classes_Cursor CURSOR FOR
SELECT J.StudentID, CA.ClassID, SUM(Score * [Weigh]) AS [Average]
FROM 
	(SELECT GrID FROM Groups WHERE GrID = 'IA1604') AS IA1604
		INNER join [JOINGroupsStudents] AS J ON J.GrID = IA1604.GrID
		INNER join Enroll ON Enroll.GrID = IA1604.GrID
		INNER join 
			(SELECT Classes.ClassID, Classes.AsgID, [AS].AssID, [AS].CouID, [AS].CatID, [AS].[Weigh] 
			FROM 
				Classes INNER join Assess ON Classes.ClassID = Assess.ClassID
						INNER join [Assessment_System] AS [AS] ON [AS].AssID = Assess.AssID) AS CA
			ON Enroll.ClassID = CA.ClassID
		INNER join Grade ON CA.AssID = Grade.AssID AND  Grade.StudentID = J.StudentID  
GROUP BY J.StudentID, CouID, CA.ClassID
ORDER BY J.StudentID
OPEN Ins_View_Students_Classes_Cursor;
FETCH NEXT FROM Ins_View_Students_Classes_Cursor INTO @STUDENTID, @CLID, @AVG;
WHILE @@FETCH_STATUS = 0
BEGIN 
	IF @AVG >= 4.0
		BEGIN
			INSERT [ViewStudentsClasses](StudentID, ClassID, Average, [Status]) VALUES (@STUDENTID, @CLID, @AVG, 'PASSED')
		END 
	ELSE 
		BEGIN	
			INSERT [ViewStudentsClasses](StudentID, ClassID, Average, [Status]) VALUES (@STUDENTID, @CLID, @AVG, 'NOT PASSED')
		END
	FETCH NEXT FROM Ins_View_Students_Classes_Cursor INTO @STUDENTID, @CLID, @AVG;
END
CLOSE Ins_View_Students_Classes_Cursor
DEALLOCATE Ins_View_Students_Classes_Cursor

SELECT * FROM Grade 


```

--------------------------------------------------------------------------
# 9. Kiểm tra, Truy Xuất Dữ Liệu Từ Database
--------------------------------------------------------------------------
# 9,1. Query Requirements And Results
``` sql
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
			  
``` 
