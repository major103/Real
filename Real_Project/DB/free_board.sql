/*

select * from free

--자유게시판

--일련번호 관리객체
	create sequence seq_free_index
	
create table free(

	free_index		int,						--게시글 번호
	free_title		varchar2(100) not null,		--제목
	free_content	varchar2(100),				--내용
	free_org_f		varchar2(100),				--기존 첨부파일
	free_mod_f		varchar2(100),				--변경 첨부파일
	free_date		date,						--작성일
	free_mod_date	date,						--수정일
	free_count		int,						--조회수
	free_ip			varchar2(100),
	u_id			varchar2(100) --fk		      작성자
	
)

--pk
alter table free
	add constraint pk_free_index primary key(free_index);

--fk
alter table free
	add constraint fk_free_user_id foreign key(u_id)
	references user_info(u_id);
 
 insert into free
 	values(seq_free_free_idx.nextVal,
 			'안녕하세요',
 			'제이름은 임현빈입니다.',
 			null,
 			null,
 			sysdate,
 			sysdate,
 			2325,
 			'192.168.0.2',
 			'admin')
 

 
 
 drop table free
 */