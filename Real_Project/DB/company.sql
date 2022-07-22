/*

--회사 정보
select * from company order by co_name asc

create sequence seq_company_co_index

create table company(
	
	co_index		int,			
	co_name			varchar2(100),		--회사이름
	co_loc			varchar2(100),		--소재지
	co_date			varchar2(100),		--창업일
	co_pres			varchar2(100),		--창립자
	co_motto		varchar2(100),		--슬로건
	co_business		varchar2(100),		--대표업종	
	co_intro		clob	,			--회사소개
	co_filename		varchar2(1000)
	

)


--pk
alter table company
	add constraint pk_company_index primary key(co_index);

select * from car

--sample data
	insert into company values(
		seq_company_co_index.nextVal,
		'porsche',
		'italy',
		null,
		null,
		null,
		null,
		'스포츠카는 포르쉐',
		null
	
	
	)

 
 
drop table company
 
 
 
 
 
 */