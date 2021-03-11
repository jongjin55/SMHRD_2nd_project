select * from pet_pet where p_label = 2

select * from pet_qa;
select * from pet_board;

select * from pet_submit;

select * from pet_link;
select * from pet_board where b_spicies = '14';


select * from pet_board where b_spicies in (select p_spicies from pet_pet where p_label = 4);

select * from pet_board where b_spicies = 1
select * from pet_board where b_spicies ='æ∆∆Ê«…º≈'

select l_spicies from pet_link where l_link = 2;

select * from PET_MEMBER

select * from pet_pet;


select p_spicies from pet_pet where p_label in (select * from pet_link where l_link = 2);

select * from pet_board where b_spicies in (select l_spicies from pet_link where l_link = 2);
select * from pet_board where b_spicies in (select l_spicies from pet_link where l_link = 2);

select * from pet_board;

insert into pet_member values(PET_MEMBER_SEQ.nextval, 'admin', 1,1,1,sysdate,1,1,1);

select * from pet_tip;

select * from pet_qa;

select * from pet_tip order by t_code desc

select * from pet_tip_seq;

create sequence pet_tip_seq
start with 1
increment by 1;

select * from pet_qa where q_title like '%te%' order by q_code desc;
select * from pet_qa order by q_code desc;
insert into pet_qa values(pet_qa_seq.nextval, 'test', '1', sysdate, '1');
insert into pet_tip values(pet_tip_seq.nextval, 'test', '1', sysdate, '1', 0);
select * from pet_tip
select * from pet_tip order by t_code desc;

select * from pet_board where b_spicies in (select l_spicies from pet_link where l_link = 1)

select * from PET_MEMBER;
select l_link from pet_link where l_spicies in (select p_spicies from pet_pet where p_label = 2);
select l_link from pet_link where l_spicies in (select b_spicies from pet_board where b_spicies in (select p_spicies from pet_pet where p_label = 2));


select * from pet_board where b_spicies in (select l_spicies from pet_link where l_link = 2)