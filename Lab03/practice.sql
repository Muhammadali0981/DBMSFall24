create table students(
    student_id varchar(255) not null primary key,
    first_name varchar(255),
    last_name varchar(255),
    age int
);

select * from students;

insert into students (student_id, FIRST_NAME, last_name, age) values ('23k-0052','Muhammad','Ali', 19);
insert into students values ('23k-0018','Fasih','Hasan', 19);
insert into students values ('23k-0030','Abser','Mansoor', 18);

alter table students add email_id varchar(255);
alter table students add CONSTRAINT unique_email_id unique(email_id);
update students set email_id = 'k230052@nu.edu.pk' where STUDENT_ID = '23k-0052';
select * from students;














