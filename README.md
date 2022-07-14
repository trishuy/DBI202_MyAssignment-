
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
