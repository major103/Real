/*

create sequence seq_u_index
select * from withdraw

create table withdraw(
	
	u_index		int,  --fk
	w_id		varchar2(100), 			--회원 아이디
	w_pwd		varchar2(100),
	w_name		varchar2(100),			--회원 이름
	w_gender	varchar2(100),			--성별
	w_birth		varchar2(100),			--생년월일
	w_phone		varchar2(100),			--전화번호
	w_email		varchar2(100),			--이메일
	drop_date	date					--삭제 예정일

)
select * from withdraw

alter table

--pk?
alter table withdraw
	add constraint pk_withdraw_u_index primary key(u_index)


--fk?
alter table withdraw
	add constraint fk_withdraw_u_index foreign key(u_index)
	references user_info(u_index)
	
 select * from user_info
insert into withdraw
	values(1,
			'asdf1234',
			'1234',
			'김국병',
			'남',
			'1999-12-25',
			'010-2342-5252',
			'kkb111@gmail.com',
			sysdate
			)
 
 
 select * from withdraw order by last_date asc
 
 
 
drop table withdraw
 */