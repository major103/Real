/*

--뉴스

select * from news

--일련번호 관리객체	
create sequence seq_news_index
	
--table
create table news(

	n_index		int,				--글 번호
	n_writer	varchar2(100),		--작성자
	n_title		varchar2(100),		--뉴스 제목
	n_content	clob,				--뉴스 내용
	n_link		varchar2(100),		--작성일자
	n_date		date,				--링크
	n_count		int					--조회수
	
)

--pk
alter table news
	add constraint pk_news_n_index primary key(n_index);
	
	
 
 insert into news
 	values(seq_news_n_index.nextVal,
 			'임현빈',
 			'임현빈. 남아서 공부하다..!',
 			'그가 남아서 공부를 하기 시작했다',
 			'www.naver.com',
 			sysdate,
 			seq_news_n_index.currVal
 			)
 
select * from news
 
 
 drop table news
 
 */