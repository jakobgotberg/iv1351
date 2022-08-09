DROP database IF EXISTS soundgood_musicschool;

create database soundgood_musicschool;
\c soundgood_musicschool;

create domain instrument_skill as integer
check (value > 0 and value < 4);

create domain social_security_number as char(12) 
check (value like '1%' or value like '2%');

create domain event_type as integer
check (value > 0 and value < 4);

create domain event_duration as integer
check (value > 0);

create table person
(
    system_id serial,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    ssn social_security_number not null,

    primary key(system_id)
);


create table email
(
    system_id int not null,
    email varchar(200) not null,

    primary key(system_id, email),

    constraint fk_email
    foreign key(system_id)
    references person(system_id)
    on delete cascade
);

create table address
(
    system_id int not null,
    street_name varchar(100) not null,
    zip char(5),
    city varchar(100),

    primary key(system_id),

    constraint fk_address
    foreign key(system_id)
    references person(system_id)
    on delete cascade
);

create table phone_number
(
    system_id int not null,
    phone_number varchar(12) not null,

    primary key(system_id, phone_number),

    constraint fk_phone_number
    foreign key(system_id)
    references person(system_id)
    on delete cascade
);

create table instrument_played_non_student
(
    system_id int not null,
    instrument_name varchar(100) not null,
    skill instrument_skill not null,

    primary key(system_id, instrument_name),

    constraint fk_aspiring_student_instrument
    foreign key(system_id)
    references person(system_id)
    on delete cascade
);

create table ensemble_genre_non_student
(
    system_id int not null,
    instrument_name varchar(100) not null,
    genre varchar(100) not null,

    primary key(system_id, instrument_name),

    constraint fk_aspiring_student_ensemble_genre
    foreign key(system_id)
    references person(system_id)
    on delete cascade
);

create table student
(
    system_id int not null,
    stud_uname varchar(30) not null,

    primary key(stud_uname),

    constraint fk_student
    foreign key(system_id)
    references person(system_id)
);
create table instrument_played
(
    stud_uname varchar(30) not null,
    instrument_name varchar(100) not null,
    skill instrument_skill not null,

    primary key(stud_uname, instrument_name),

    constraint fk_instrument_played_student
    foreign key(stud_uname)
    references student(stud_uname)
    on delete cascade
);

create table sibling
(
    stud_uname varchar(30) not null,
    sibling_stud_uname varchar(30) not null,

    primary key(stud_uname,sibling_stud_uname),

    constraint fk_sibling
    foreign key(stud_uname)
    references student(stud_uname)
);

create table parent
(
    stud_uname varchar(30) not null,
    parent_name varchar(200) not null,
    phone_number varchar(12) not null,

    primary key(stud_uname, parent_name),

    constraint fk_parent
    foreign key(stud_uname)
    references student(stud_uname)
);

create table instrument
(
    instrument_id serial not null,
    instrument_type varchar(100) not null,
    instrument_brand varchar(100) not null,
    rental_fee real not null,
    is_booked boolean default FALSE,

    primary key(instrument_id)
);

create table instrument_rented
(
    rent_id serial,
    stud_uname varchar(30) not null,
    instrument_id int not null,
    termination_date date default null,
    rent_start date,
    rent_end date,
    
    primary key(rent_id),

    constraint fk_student
    foreign key(stud_uname)
    references student(stud_uname),

    constraint fk_instrument
    foreign key(instrument_id)
    references instrument(instrument_id)
    on delete cascade
);

create table instructor
(
    system_id int not null,
    inst_uname varchar(30),

    primary key(inst_uname),

    constraint fk_instructor
    foreign key(system_id)
    references person(system_id)
);

create table instrument_mastered
(
    inst_uname varchar(30) not null,
    instrument_name varchar(100) not null,

    primary key(inst_uname, instrument_name),

    constraint fk_instrument_mastered
    foreign key(inst_uname)
    references instructor(inst_uname)
    on delete cascade
);

create table administrative_personal
(
    system_id int not null,
    personal_uname varchar(30) not null,

    primary key(personal_uname),

    constraint fk_administrative_personal
    foreign key(system_id)
    references person(system_id)
);

create table event
(
    event_id serial,
    inst_uname varchar(30) not null,
    starting_time timestamp not null,
    duration_min event_duration default 30,
    location varchar(200) default 'Room A1',
    event_type event_type not null,

    primary key(event_id),

    constraint fk_event_instructor
    foreign key(inst_uname)
    references instructor(inst_uname)

);

create table student_schedule_event
(
    event_id int not null,
    stud_uname varchar(30) not null,

    primary key(stud_uname, event_id),

    constraint fk_schedule_event_student
    foreign key(stud_uname)
    references student(stud_uname),

    constraint fk_schedule_event_event
    foreign key(event_id)
    references event(event_id)
);
create table ensemble
(
    event_id int not null,
    participant_min int default 2,
    participant_max int default 6,
    genre varchar(100) not null,

    primary key(event_id),

    constraint fk_ensemble
    foreign key(event_id)
    references event(event_id)
);

create table group_lesson
(
    event_id int not null,
    participant_min int default 2,
    participant_max int default 6,
    instrument varchar(100) not null,
    instrument_skill instrument_skill not null,

    primary key(event_id),

    constraint fk_group_lesson
    foreign key(event_id)
    references event(event_id)
);

create table private_lesson
(
    event_id int not null,
    instrument varchar(100) not null,
    instrument_skill instrument_skill not null,
    personal_uname varchar(30) not null,

    primary key(event_id),

    constraint fk_private_lesson
    foreign key(event_id)
    references event(event_id),

    constraint fk_private_lesson_booked_by
    foreign key(personal_uname)
    references administrative_personal(personal_uname)
);

