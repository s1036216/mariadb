/*mile stone*/
 -- ***************************
 -- 2017.08.02
 -- [1]MAJOR_TAB
 -- [2]SUBJECT_TAB
 -- [3]MEMBER_TAB
 -- [4]PROF_TAB
 -- [5]STUDENT_TAB
 -- [6]GRADE_TAB
 -- [7]BOARD_TAB
 -- **************************





/* -- [1]MAJOR_TAB*/
CREATE TABLE MAJOR(
   major_id varchar(10) not null,
   title varchar(10) null,
   member_id varchar(10) null,
   subj_id varchar(10) null,
   primary key (major_id)
   );
   
  insert into major values('computer','컴공','cho','컴공');

 -- [2]SUBJECT_TAB
 

   
 CREATE TABLE Subject(
   subj_id VARCHAR(10),
   title VARCHAR(10),
   primary key (subj_id)
);


INSERT INTO Subject () VALUES ();

select * from Subject;   
/*******************
 * 
 *  -- [1]MEMBER
 * */
SELECT * FROM MEMBER;
drop table member;

CREATE TABLE 
	Member
(
   member_id VARCHAR(10),
   name VARCHAR(20),
   password VARCHAR(10),
   ssn VARCHAR(20),
   regdate datetime default current_timestamp,
   phone varchar(20),
   email varchar(20),
   profile varchar(20),
   PRIMARY KEY(member_id)
);



INSERT INTO MEMBER(member_id, name, password,ssn,regdate,phone,email,profile)
VALUES('hong','홍길동','1','800101-123456',now(),'010-1234-1234','hong@test.com','defaul.jsp');
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


/*교수 insert*/
INSERT INTO Member(member_id, name, password,ssn,regdate,major_id,phone,email,profile) 
VALUES('mankiew','맨큐','1','700102-123456',now(),'econimics','010-1234-1234','mankiew@test.com','defaultimg.jpg');
INSERT INTO Member(member_id, name, password,ssn,regdate,phone,email,profile)
VALUES('james','제임스','1','550519-123456',now(),'010-1111-1111','james@test.com','defaultimg.jpg');
INSERT INTO Member (member_id, name, password,ssn,regdate,phone,email,profile)
VALUES('bare','베어','1','830105-123456',now(),'010-1234-5555','bare@test.com','defaultimg.jpg'); 
INSERT INTO Member (member_id, name, password,ssn,regdate,phone,email,profile)
VALUES('gogh','고흐','1','530105-123456',now(),'010-1234-6666','gogh@test.com','defaultimg.jpg');



/*******************
 *  -- [4]PROF_TAB
 * */

CREATE TABLE Prof (
   member_id VARCHAR(10),
   salary VARCHAR(10),
   PRIMARY KEY (member_id)
);
INSERT INTO Prof() VALUES ('cho','5000');
INSERT INTO Prof() VALUES ('kim','4000');
INSERT INTO Prof() VALUES ('gogh','3800');
INSERT INTO Prof() VALUES ('james','9900');
INSERT INTO Prof() VALUES ('mankiew','15000');
INSERT INTO Prof() VALUES ('lee','8500');
INSERT INTO Prof() VALUES ('lee5','3000');
INSERT INTO Prof() VALUES ('kim1','5800');


/*******************
 *  -- [6]GRADE_TAB
 * ******************/
CREATE TABLE Grade (
   grade_seq INT NOT NULL AUTO_INCREMENT,
   score VARCHAR(3),
   exam_date VARCHAR(13),
   member_id VARCHAR(10),
   subj_id VARCHAR(10),
   PRIMARY KEY (grade_seq)
   );



/*******************
 *  -- [7]BOARD_TAB
 * ******************/
CREATE TABLE Board(
   article_seq INT NOT NULL AUTO_INCREMENT ,
   id VARCHAR(10),
   title VARCHAR(20),
   content VARCHAR(100),
   regdate datetime default current_timestamp,
   hitcount INT,
   PRIMARY KEY (article_seq)
);



insert into board (id,title,content,regdate,hitcount) values('you11','유선호','꽃 봄바 무엇이 뿐이다.',now(),'1');
insert into board (id,title,content,regdate,hitcount) values('cho999','유선','꽃 봄을 무엇이 뿐이다.',now(),'2');
insert into board (id,title,content,regdate,hitcount) values('son','손효진','꽃 봄을 이 뿐이다.',now(),'3');
insert into board (id,title,content,regdate,hitcount) values('you44','유선의 글','꽃 봄바람을 무엇이 뿐이다.',now(),'4');
insert into board (id,title,content,regdate,hitcount) values('you55','유선호 글','꽃 봄람을 무엇이 뿐이다.',now(),'5');
insert into board (id,title,content,regdate,hitcount) values('you66','유선호의 ','꽃 봄 무엇이 뿐이다.',now(),'6');
insert into board (id,title,content,regdate,hitcount) values('you77','유선호글','꽃 봄바람을 무엇이 뿐이다.',now(),'7');
insert into board (id,title,content,regdate,hitcount) values('hyosuk','선호의 글','꽃 봄을 무엇이 뿐이다.',now(),'8');
insert into board (id,title,content,regdate,hitcount) values('you99','호의 글','꽃 봄을 무이 뿐이다.',now(),'9');
insert into board (id,title,content,regdate,hitcount) values('you100','글','꽃 봄바람이 뿐이다.',now(),'10');
insert into board (id,title,content,regdate,hitcount) values('you111','유호의 ','꽃 바람을 무엇이 뿐이다.',now(),'11');
insert into board (id,title,content,regdate,hitcount) values('you222','유의 글','꽃 봄람을 이 뿐이다.',now(),'12');
insert into board (id,title,content,regdate,hitcount) values('you333','선호','꽃 봄바 무엇이 뿐이다.',now(),'13');
insert into board (id,title,content,regdate,hitcount) values('y17','유선의 글','꽃 봄을 무엇이 뿐이다.',now(),'14');
insert into board (id,title,content,regdate,hitcount) values('y16','유선호 글','꽃 봄람 무엇이 뿐이다.',now(),'15');
insert into board (id,title,content,regdate,hitcount) values('y15','호의 글','꽃 봄바을 무엇이 뿐이다.',now(),'16');
insert into board (id,title,content,regdate,hitcount) values('y14','글','꽃 봄바람을 엇이 뿐이다.',now(),'17');
insert into board (id,title,content,regdate,hitcount) values('y13','선호의 글','꽃 바람을 무엇이 뿐이다.',now(),'18');
insert into board (id,title,content,regdate,hitcount) values('y12','호의 글','꽃 을 무엇이 뿐이다.',now(),'19');
insert into board (id,title,content,regdate,hitcount) values('y11','글','꽃 봄바람을 무엇이 뿐이다.',now(),'20');
insert into board (id,title,content,regdate,hitcount) values('y01','선호의 글',' 봄바람을 무엇이 뿐이다.',now(),'21');
insert into board (id,title,content,regdate,hitcount) values('y9','유호의 글','꽃 람을 무엇이 뿐이다.',now(),'22');
insert into board (id,title,content,regdate,hitcount) values('y8','유 글','꽃 봄바람을 무엇이 뿐이다.',now(),'23');
insert into board (id,title,content,regdate,hitcount) values('y7','유호의 글','꽃봄바람 무엇이 뿐이다.',now(),'24');
insert into board (id,title,content,regdate,hitcount) values('y6','유 글','꽃 람 무엇이 뿐이다.',now(),'25');
insert into board (id,title,content,regdate,hitcount) values('y5','유글','꽃 봄바람을 무엇이 뿐이다.',now(),'26');
insert into board (id,title,content,regdate,hitcount) values('y4','유선호의 글','꽃 봄바을 엇이 뿐이다.',now(),'27');
insert into board (id,title,content,regdate,hitcount) values('y3','유선호의 글','꽃 봄무 뿐이다.',now(),'28');
insert into board (id,title,content,regdate,hitcount) values('y2','유선호의 글',' 봄바람을 무엇이 뿐이다.',now(),'29');
insert into board (id,title,content,regdate,hitcount) values('y1','유선호의 글','꽃 을 무엇이 뿐이다.',now(),'30');
insert into board (id,title,content,regdate,hitcount) values('you','유선호의 글','꽃 봄바람을 무엇이 뿐이다.',now(),'1');
drop table Board;
drop table grade;
drop table prof;
drop table subject;