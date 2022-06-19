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
> Số lần thực hiện.
### 1,4.Weight 
> từng mục điểm trên từng hạng mục
### 1,5.Completion Criteria 
> Điều kiện để thi và điểm tối thiểu để pass 
### 1,6.Duration
> Khoảng thời gian làm việc trong từng hạng mục 
### 1,7.Question Type( Loại câu hỏi ) : Hình thức thực hiện 
> Multiple choices
> Presentation
###   1,8.No Question: Số lượng câu hỏi 
###   1,9.Knowledge and Skill :
> Các kiến thức và kĩ năng yêu cầu
###   1,10.Grading Guide : Được chấm điểm, đánh giá bởi ai
```
- instructor
- computer
- exam part
```
###   Note(chú thích)

### 2.Bảng điểm tổng quát của học sinh
### ![image](https://user-images.githubusercontent.com/76523661/174435441-24021f17-609a-4c3d-ac96-fc9184d21479.png)
### 2,1.NO: Number of subjects.
> Số lượng khóa học , môn học
### 2,2.Subject code – Subject Name: .
> Mã Code Tương Ứng Trên Từng Khóa Học
### 2,3.Semester : Khóa học diễn ra và kỳ học
```
- Thời gian
- Kỳ học
```
### 2,4.Group :
> Lớp học
### 2,5.StartDate :
> Thời gian bắt đầu khóa học
### 2,6.EndDate :
> Thời gian kết thúc khóa học
### 2,7.Average Mark:
> Điểm trung bình
### 2,8.Status (Trạng thái của kỳ học vừa rồi ): 
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