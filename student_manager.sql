use quanlysinhvien;

-- Hienthi toan bo sinh vien co ten bat dau la H
select *from student 
where studentName LIKE 'h%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT * FROM class WHERE MONTH(startdate) = 12;

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select *from subject
where credit between 3 and 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
UPDATE student
SET classID = 2
WHERE studentName = 'Hung';

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.

SELECT  S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
order by(m.mark) desc,s.studentname asc;