--****************************
--2017 .8 .2
-- 1 MAJOR_TAB
-- 2 SUBJECT_TAB
-- 3 MEMBER_TAB
-- 4 PROF_TAB
-- 5 STUDENT_TAB
-- 6 GRADE_TAB
-- 7 BOARD_TAB

--******************************
SELECT * FROM ITEM;
SELECT * FROM major;
SELECT * FROM TAB;
DROP SEQUENCE article_seq;
CREATE SEQUENCE seq
	START WITH 2000
	INCREMENT BY 1
	NOCACHE
	NOCYCLE;
	
ALTER TABLE sequence_table auto_increment=1000;

-- ***
-- 1 MAJOR_TAB
-- 2017-08-02
-- article_seq,id,title,
-- content,hitcount,regdate
--******************************
-- DDL

CREATE TABLE major(
	subj_id varchar(10),
	major_id VARCHAR(30),
	title varchar(30),
	primary key(major_id)
);
-- DML
	insert into major values('computer','컴공');
select * from major;
alter table major add column member_id varchar2(10);
-- *********************
-- 2 SUBJECT_TAB
-- 2017-08-02
-- subj_id,major_id,title,
--************************

-- DDL	
SELECT * FROM subject;
CREATE TABLE subject(
	subj_id VARCHAR(10),
	title VARCHAR(10),
	major_id VARCHAR(10),
	primary key(subj_id)
	
);
	
-- DDL
 INSERT INTO subject(subj_id,title,major_id) VALUES('java','자바','computer');
 INSERT INTO subject(subj_id,title,major_id) VALUES('c++','c++','computer');
 INSERT INTO subject(subj_id,title,major_id) VALUES('jsp','jsp','computer');
 INSERT INTO subject(subj_id,title,major_id) VALUES('html','html','computer');
 -- *********************
-- 3 MEMBER_TAB
-- 2017-08-02
-- member_id,name,password,ssn,regdate,major_id,phone,email,profile
--************************

 --DML
 CREATE TABLE Member(
	member_id VARCHAR(10),
	name VARCHAR(10),
	password VARCHAR(10),
	ssn VARCHAR(15),
	regdate datetime default current_timestamp,
	phone VARCHAR(20),
	email VARCHAR(20),
	profile VARCHAR(20),
	primary key(member_id)
);

insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('mankiew','멘큐','1','701201-123456',now(),'010-1423-4567','man@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('goh','고흐','2','501201-123456',now(),'010-1433-4667','go@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim','김건모','3','701201-123456',now(),'010-1423-4567','kim@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('cho','조봉기','4','841013-123456',now(),'010-1423-4567','cho@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('jabs','잡스','5','550617-123456',now(),'010-1423-4567','jabs@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('baer','곰','6','661201-123456',now(),'010-9423-4567','baer@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('bill','빌게이츠','7','481101-123456',now(),'010-9423-6567','bill@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('tramp','트럼프','8','651201-123456',now(),'010-6423-4567','tramp@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('go','고두심','9','701201-123456',now(),'010-8423-4567','go@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('lee','이소룡','10','771201-123456',now(),'010-1425-4567','lee@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim1','김민종','11','701201-123456',now(),'010-5223-4567','kim1@test.com','mankiew.jpg');

insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim1','김민종','12','701201-123456',now(),'010-5223-4567','kim1@test.com','mankiew.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim2','김아중','13','811201-123456',now(),'016-5223-4567','kim2@test.com','kim2.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim3','김종국','14','801201-123456',now(),'010-5223-4567','kim3@test.com','kim3.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim4','김숙','15','881201-223456',now(),'010-5223-4567','kim4@test.com','kim4.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim5','김장훈','16','771201-123456',now(),'010-5223-4567','kim5@test.com','kim5.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim6','김수미','17','751201-223456',now(),'010-5223-4567','kim6@test.com','kim6.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim7','김신제','18','841201-123456',now(),'010-5223-4567','kim7@test.com','kim7.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim8','김용현','19','841201-123456',now(),'010-5223-4567','kim8@test.com','kim8.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim9','김봉남','20','901201-123456',now(),'010-5223-4567','kim9@test.com','kim9.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('lee1','이소룡','21','891201-123456',now(),'011-5283-4567','lee1@test.com','lee1.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kang','강타','22','81201-123456',now(),'010-5444-4567','kang@test.com','kang.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('moon','문희준','23','800201-123456',now(),'010-5223-4567','moon@test.com','moon.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('tony','토니','24','791201-123456',now(),'010-9223-4467','tony@test.com','tony.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('leejea','이재원','25','881201-123456',now(),'010-5263-4567','leejea@test.com','leejea.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('jang','장우혁','26','871201-123456',now(),'010-5449-4567','jang@test.com','jang.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('jung1','정선애','27','840425-223456',now(),'010-4644-8138','jung1@test.com','jung1.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('lee9','이보라','28','881201-223456',now(),'010-1123-4567','lee9@test.com','lee9.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('yang','양정아','29','841201-223456',now(),'011-5223-4567','yang@test.com','yang.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('on','온누리','30','881201-123456',now(),'010-6223-4567','on@test.com','on.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('bang','방희연','31','851201-223456',now(),'010-5246-4567','bang@test.com','bang.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('lim','임은경','32','840325-223456',now(),'010-9223-4567','lim@test.com','lim.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kimjin','김진영','33','881201-123456',now(),'010-5223-4567','kimjin@test.com','kimjin.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kimna','김나혜','34','840425-223456',now(),'010-5223-4567','kimna@test.com','kimna.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('leeeunhea','이은혜','35','841016-2046311',now(),'010-4281-2080','leeeunhea@test.com','leeeunhea.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('junghea','정혜미','36','860201-223456',now(),'010-5223-4567','junghea@test.com','junghea.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('mee','이미애','37','901201-223456',now(),'010-5223-4567','mee@test.com','mee.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('hun','현아름','38','811201-223456',now(),'011-5223-4567','hun@test.com','hun.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kim99','김보라u','39','920101-223456',now(),'010-5223-4567','kim99@test.com','kim99.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('jung','정언명','40','83201-223456',now(),'010-7131-0201','jung@test.com','jung.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('hyosuk','현효숙','41','880713-123456',now(),'010-7577-6521','hyosuk@test.com','hyosuk.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('yoonsang','윤상희','42','861201-123456',now(),'010-5223-4567','yoonsang@test.com','yoonsang.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kimmina','김미나','43','861015-123456',now(),'010-5123-4567','kimmina@test.com','kimmina.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('jun','전은미','44','850201-123456',now(),'010-5223-4567','jun@test.com','jun.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('oh111','오현아','45','801201-123456',now(),'010-5223-4567','oh111@test.com','oh111.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('kimroyoun','김로연','46','881207-223456',now(),'010-5223-4567','kimroyoun@test.com','kimroyoun.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('leesujin','이수진','47','911201-123456',now(),'010-5223-4567','leesujin@test.com','leesujin.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('park','박지용','48','841001-123456',now(),'010-5223-4567','park@test.com','park.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('son','손효진','49','840923-123456',now(),'010-5223-4567','son@test.com','son.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('jungjimin','정지민','50','840625-123456',now(),'010-5223-4567','jungjimin@test.com','jungjimin.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('leehojea','이호제','51','840513-123456',now(),'010-5223-4567','leehojea@test.com','leehojea.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('cho999','조봉기','52','841013-123456',now(),'010-5223-4567','cho999@test.com','cho999.jpg');
insert into member(member_id,name,password,ssn,regdate,phone,email,profile)
values('leeeunjin','이은진','53','811201-123456',now(),'010-5223-4567','leeeunjin@test.com','leeeunjin.jpg');

select * from member;
--DDL
drop table major;
   SELECT * FROM Member;
   SELECT * FROM Major;
 
 -- *********************
-- 4 PROF_TAB
-- 2017-08-02
-- member_id,name,password,ssn,regdate,major_id,phone,email,profile
--************************
--dml
   SELECT * FROM PROF;
	CREATE TABLE Member(
	member_id VARCHAR(10),
	salary VARCHAR(10)
	
);
create table prof(
	member_id varchar(10),
	salary varchar(10),
	primary key(member_id)
);

INSERT INTO PROF(member_id,salary) VALUES('choguk','9500');
INSERT INTO PROF(member_id,salary) VALUES('james','8000');
INSERT INTO PROF(member_id,salary) VALUES('bear','6000');
INSERT INTO PROF(member_id,salary) VALUES('gogh','4000'); 
 -- *********************
-- 5 STUDENT_TAB
-- 2017-08-02
-- member_id,name,password,ssn,regdate,major_id,phone,email,profile
--************************
SELECT * FROM student;
CREATE TABLE Student (
   member_id varchar(10),
   stu_no varchar(8),
   PRIMARY KEY (member_id),
);

INSERT INTO Student(member_id,stu_no) VALUES('','');
 INSERT INTO Student(member_id,stu_no) VALUES('','');
 -- *********************
-- 6 GRADE_TAB
-- 2017-08-02
-- grade_seq,name,member_id,subj_id,score,exam_date
--************************
--DML
SELECT * FROM GRADE;

CREATE TABLE grade(
	grade_seq int not null auto_increment,
	subj_id VARCHAR(10),
	score VARCHAR(10),
	exam_date VARCHAR(12),
	primary key(grade_seq)
	
);
drop table grade;
 -- *********************
-- 7 BOARD_TAB
-- 2017-08-02
-- article_seq,member_id,title,content,regdate,major_id,phone,email,profile
--************************
--DML

CREATE TABLE Board(
   article_seq int not null auto_increment,
   member_id VARCHAR(10),
   title VARCHAR(20),
   content VARCHAR(80),
   hitcount int,
   regdate datetime default current_timestamp,
   PRIMARY KEY(article_seq)  
);

INSERT INTO grade(grade_seq,member_id,subj_id,score,exam_date) VALUES(seq.nextval,'cho','java','80','2017-03');

--member_id 입력하면 평균 점수를 반환하는 sql----------------------------------------------------------------
select sum(score)
from(select distinct
m.member_id id,m.name name,mj.title major,g.SCORE score,sj.title subject,g.exam_date
from member m,student s,grade g,subject sj, major mj
where 
    m.member_id=s.member_id
    and m.member_id = g.member_id
    and sj.MAJOR_ID = mj.MAJOR_ID
    and sj.subj_id = g.SUBJ_ID) t
where t.id='cho';

-----------------------------------------------------------------
--member_id --------------iner join--------이너 조인------------------------------------------

select avg(score)
from(select distinct
m.member_id id,m.name name,
g.score score,g.exam_date
from Grade g
    join subject s on g.subj_id=s.subj_id
    join member m on m.member_id=g.member_id
    ) t
where t.id='cho';

-----------------------------------------------------------------

INSERT INTO grade(grade_seq,member_id,subj_id,score,exam_date) VALUES(seq.nextval,'cho','java','90','2017-03');
INSERT INTO grade(grade_seq,member_id,subj_id,score,exam_date) VALUES(seq.nextval,'cho','java','80','2017-04');
INSERT INTO grade(grade_seq,member_id,subj_id,score,exam_date) VALUES(seq.nextval,'cho','java','95','2017-05');

INSERT INTO grade(grade_seq,member_id,subj_id,score,exam_date) VALUES(seq.nextval,'hong','java','40','2017-03');
INSERT INTO grade(grade_seq,member_id,subj_id,score,exam_date) VALUES(seq.nextval,'hong','java','60','2017-04');
INSERT INTO grade(grade_seq,member_id,subj_id,score,exam_date) VALUES(seq.nextval,'hong','java','90','2017-05');

INSERT INTO grade(grade_seq,member_id,subj_id,score,exam_date) VALUES(seq.nextval,'lee','java','95','2017-03');
INSERT INTO grade(grade_seq,member_id,subj_id,score,exam_date) VALUES(seq.nextval,'lee','java','78','2017-04');
INSERT INTO grade(grade_seq,member_id,subj_id,score,exam_date) VALUES(seq.nextval,'lee','java','79','2017-05');
--DDL


-- *********************
-- 6 BOARD_TAB
-- 2017-08-02
-- member_id,name,password,ssn,regdate,major_id,phone,email,profile
--************************
--DML

CREATE TABLE Board(
	article_seq NUMBER,
	hitcount NUMBER,
	id VARCHAR(10),
	title VARCHAR(20),
	content VARCHAR(100),
	regdate DATE,
	primary key(article_seq),
	FOREIGN KEY(id) REFERENCES MEMBER(id) ON DELETE CASCADE
);
insert into board values(seq nextval, 0,'you','유선호의 글','꽃 봄바람을 무엇이 뿐이다.',sysdate);

CREATE TABLE Board(
	article_seq NUMBER,
	hitcount NUMBER,
	id VARCHAR(10),
	title VARCHAR(20),
	content VARCHAR(100),
	regdate DATE,
	primary key(article_seq),
	FOREIGN KEY(id) REFERENCES MEMBER(id) ON DELETE CASCADE
);

SELECT * FROM member;

--phone, email,major,subject
ALTER TABLE member ADD phone VARCHAR(13);
ALTER TABLE member ADD email VARCHAR(30);



SELECT * FROM major;
drop table grade;
SELECT * FROM major;
SELECT * FROM subject;
SELECT * FROM grade;

--기존 테이블에 없는 칼럼을 추가해서 fk로 만드는 로직
ALTER TABLE member ADD profile VARCHAR2(30);

ALTER TABLE member
ADD CONSTRAINT member_fk_major
FOREIGN KEY (major_id) REFERENCES major(major_id);



select sum(score)
from(select distinct
m.member_id id,m.name name,mj.title major,g.SCORE score,sj.title subject,g.exam_date
from member m,student s,grade g,subject sj, major mj
where 
    m.member_id=s.member_id
    and m.member_id = g.member_id
    and sj.MAJOR_ID = mj.MAJOR_ID
    and sj.subj_id = g.SUBJ_ID) t
where t.id='cho';

select *
from board b, member m
where b.member_id=m.member_id;


select *
from board b inner join member m
on  b.member_id=m.member_id
where m.member_id='hong';


select rownum no,t2.*
from(select t.id id, avg(score)
    from(select distinct
      m.member_id id,g.SCORE score
        from grade g
           inner join subject s on g.subj_id=s.subj_id
           inner join member m on m.member_id=g.member_id)t
    
    group by t.id
    order by avg(score) desc
)t2
     where rownum <4
;

select grade ||'학년'학년 ,dname 학과 ,stuno 학번 , name 이름 
from stud s
join dept  on Dname ='메카' and grade = '3'
order by grade asc ,DNAME asc , STUNO asc; 

select rownum  no,member_id id,name 이름,ssn 생년월일,phone 전화번호,email 이메일,major_id 수강과목,regdate 등록일 
   from member ; 

drop table student;
select * from STUDENT;
create view student (num,id,name,ssn,regdate,phone,email,title)
as
select rownum num, 
from (select a.member_id id, a.name,rpad(substr(a.ssn,1,7),14,'*') ssn,to_char(a.regdate,'yyyy-mm-dd') regdate,
        a.phone phone,a.email email,listagg(s.title,',') within group(order by s.title) title
        from member a
        left  join major m on a.member_id like m.member_id
        left join subject s on m.subj_id like s.subj_id
        group by a.member_id, a.name, a.ssn,a.regdate,a.phone,a.email
        order by regdate
) t
  order by rownum desc
; 

drop view student;

create view student(num,id,name,ssn,regdate,phone,email,title)
as
    select rownum, t.*
from (
    select a.member_id, a.name,rpad(substr(a.ssn,1,7),14,'*') ssn, a.phone, a.email, LISTAGG(m.SUBJ_ID, ',') within group (order by m.SUBJ_ID) title, to_char(a.regdate,'yyyy-MM-dd') regdate 
    from member a
        left outer join major m on a.member_id = m.member_id
     --   left join subject s on m.subj_id = s.subj_id
    group by a.member_id, a.name, a.ssn, a.phone, a.email,a.regdate  
    order by regdate 
) t
order by rownum desc;
  
  select * from STUDENT;
	select * from major;
	
	<!-- 마지막으로 가입한 순서 5명부터 뽑아 출력  -->
select * 
from student
where rownum <=5;

	
select * 
from student  
where num>(select count(*) from student)-5;

select t.*
from(select rownum rnum,s.*
    from student s)t
    where t.rnum between 1 and 5;
    
    select t2.*
from(select rownum seq,t.*
    from (select *
	from student 
	where name like '%이길동%'
	order by num desc) t)t2
    where t2.seq between 1 and 5
    ;

    select t2.* from(select rownum seq,t.* from (select * from student where name like '%이%' order by num desc) t)t2 where t2.seq between 1 and 5;
    
     select t2.* from(select rownum seq,t.* from (select * from student where name like '%이%' order by num desc) t)t2 where t2.seq between 1 and 5;
     
     select count(*) from STUDENT where name like '%%';
     