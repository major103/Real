/*

--댓글

select * from reply
--일련번호
create sequence seq_re_index

--테이블
create table reply(
	
	re_index	int,
	re_date		date,					--댓글 작성일
	re_content	varchar2(255),	
	free_index	int,		
	re_ip		varchar2(100),			--댓글 내용
	u_id		varchar2(100)			--fk	  게시글 번호
	
)


--pk
alter table reply
	add constraint pk_reply_index primary key(re_index);
 
 
--fk
alter table reply
	add constraint fk_reply_free_index foreign key(free_index)
	references free(free_index)
	
	
	
--fk2
alter table reply
	add constraint fk_reply_u_id foreign key(u_id)
	references user_info(u_id)
 

 drop table reply
 
 
 
 */