/*
 	--유저 일련번호
 	create sequence seq_user_u_index
 	
 	select * from user_info
 	
 	
 	update table user_info set u_name='최지영' where u_index=1
 	--유저테이블
 	create table user_info (
 	u_index		int,						
 	u_id		varchar2(100)		not null,
 	u_pwd		varchar2(100)		not null,
 	u_name		varchar2(100)		not null,
 	u_gender	varchar2(100)		not null,
 	u_birth		varchar2(100)		not null,
 	u_phone		varchar2(100)		not null,
 	u_email 	varchar2(100)		not null,
 	confirm_yn	varchar2(100)		default 'n',
 	joindate	date,
 	admin_yn	varchar2(100) 		default 'n',
 	last_log	date				
 	
 	)
 	

 	--기본키
 	alter table user_info
 		add constraint pk_user_u_index primary key(u_index);
 		
 	--아이디 unique
 	alter table user_info
 		add constraint unique_user_u_id unique(u_id);
 	
 	--관리자 여부
 	alter table user_info
 		add constraint ck_user_admin_yn check(admin_yn in ('y','n'));
 		
 	--sample data
 	insert into user_info
 		values(seq_user_u_idx.nextVal,
 				'admin',
 				'1234',
 				'이은구',
 				'남',
 				'1994/07/29',
 				'010-4057-2432',
 				'dusgod30@gmail.com',
 				'y',
 				sysdate,
 				'y',
 				sysdate);
 	
 	insert into user_info
 		values(seq_user_u_idx.nextVal,
 				'guest',
 				'1234',
 				'최지영',
 				'여',
 				'1996/09/12',
 				'010-2162-6666',
 				'asdf123@gmail.com',
 				'y',
 				sysdate,
 				default,
 				sysdate);
 				
 				
 				
 	--조회
 	select * from user_info
 	
 	update user_info set u_name='임현빈' where u_index=1
 	
 
 
 
 
 */