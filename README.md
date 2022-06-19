# Phân tích những database theo dữ liệu của đề bài 
### Thông tin :
> 1>Detailed Specification
> 2> The database must consist of at least six tables
> Final Report
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

### Xác Định Và Tổng Hợp Các Dữ Liệu
### Bảng Thông Tin Các Điểm Thành Phần
###   ![image](https://user-images.githubusercontent.com/76523661/174473470-0efadd32-427b-475b-93a6-52d2a7179314.png) 

**Bố cục
**Các quan hệ từng bảng:
### Category (hạng mục) : Danh sách các đầu điểm vào trên hệ thống fap
```
  - Progress Tests 
  - Assignment  
  - Labs 
  - Pe 
  - FE
```
### Type (Loại) :
``` 
- Quiz 
- Lab 
- On-going 
- Pe 
- Fe
```  
### Part (mô tả các phần một) :
### Weight : từng mục điểm trên từng hạng mục
### Completion Criteria : Điều kiện để thi và điểm tối thiểu để pass 
### Duration: Khoảng thời gian làm việc trong từng hạng mục 
###   Question Type( Loại câu hỏi )
###   No Question( Số câu hỏi )
###   Knowledge and Skill
###   Grading Guide
###   Note
** -Tính toán, tìm các:
** -Fields, Object
** -chia các object
### Chia các quan hệ 1-n, n-n, các mối quan hệ giữa object
### vẽ bảng erd tổng quát theo form trên sql, lucid chart, vv
### add vào sql server chuyển sang table_database
### chuẩn hóa, quy trình dữ liệu cho các fields
### add data vào 
### check, test database và query
