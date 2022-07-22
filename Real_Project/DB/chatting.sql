/*


--토론 게시판

	
	--일련번호
create sequence seq_chatting_c_index



create table chatting(
	
	c_index			int,
	c_title			varchar2(100),		--제목
	c_content		varchar2(1000),		--내용
	c_file			varchar2(100),
	c_date			date,				--작성일
	c_ip			varchar2(100),
	u_id			varchar2(100)--fk	--작성자
)


--pk
alter table chatting
	add constraint pk_chatting_c_index primary key(c_index);

--fk
 alter table chatting
 	add constraint fk_chatting_u_id foreign key(u_id)
 	references user_info(u_id);
 	
 	insert into chatting
 		values(seq_discuss_d_idx.nextVal,
 				'제목입니다',
 				'내용은 조금 길 수도 있으니 1000바이트 입니다',
 				null,
 				sysdate,
 				'192.168.0.9',
 				'admin')
 
select * from chatting
 
 
 
 drop table chatting
 */