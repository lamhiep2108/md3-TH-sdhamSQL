use quanlisinhvien;
-- Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi
select address,count(studentID)as 'so luong hoc vien'
from student 
group by address;
-- Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
select s.studentID,studentname, avg(mark)
from student s 
join mark m on s.studentID=m.studentID
group by s.studentid,s.studentname;	
-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
select s.studentId,s.studentname,avg(mark)
from student s
join mark m on s.studentID=m.studentID
group by s.studentid,s.studentname
having avg(mark)>4;
-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
select s.studentId,s.studentname,avg(mark)
from student s
join mark m on s.studentID=m.studentID
group by s.studentid,s.studentname
having avg(mark)>= all(select avg(mark) from mark group by mark.studentID);