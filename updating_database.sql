-- Person Data --

-- Students --
insert into person(first_name, last_name, ssn)
values ('Tom', 'Tulliver', '178912121234');
insert into address(system_id, street_name)
values (1, 'St Oggs Mill');

insert into person(first_name, last_name, ssn)
values ('Maggie', 'Tulliver', '179212121234');
insert into address(system_id, street_name)
values (2, 'St Oggs Mill');

insert into person(first_name, last_name, ssn)
values ('Jimi', 'Hendrix', '195512121234');
insert into address(system_id, street_name)
values (3, 'The Street');
insert into phone_number
values(3, '555-555-5555');

insert into person(first_name, last_name, ssn)
values ('Rodion', 'Raskolnikov', '185505231234');
insert into address(system_id, street_name, city)
values (4, 'Poor Street', 'ST Petersburg');

insert into person(first_name, last_name, ssn)
values ('Frank', 'Sinatra', '191202121234');
insert into address(system_id, street_name, city)
values (5, 'Frank Street 2', 'San Fransisco');
insert into phone_number
values (5, '555-455-5555');

insert into person(first_name, last_name, ssn)
values ('Edward', 'Scissorhands', '196004121234');
insert into address(system_id, street_name, city)
values (6, 'The Street of Hands', 'San Fransisco');
insert into phone_number
values (6, '555-455-5755');

-- Teachers --

insert into person(first_name, last_name, ssn)
values ('Steve', 'Wozniak', '195504121234');
insert into address(system_id, street_name, city)
values (7, 'Mac Street', 'San Fransisco');
insert into phone_number
values (7, '555-475-5755');
insert into email
values (7, 'the-waz@macintosh.com');

insert into person(first_name, last_name, ssn)
values ('Allan', 'Turing', '192004121234');
insert into address(system_id, street_name, city)
values (8, 'Math Street', 'London');
insert into phone_number
values (8, '555-475-5799');
insert into email
values (8, 'enigma-fan@mi6.com');

insert into person(first_name, last_name, ssn)
values ('Dennis', 'Ritchie', '194504121234');
insert into address(system_id, street_name, city)
values (9, 'Unix Street', 'Los Angeles');
insert into phone_number
values (9, '555-475-5700');
insert into email
values (9, 'c@bell-labs.com');

insert into person(first_name, last_name, ssn)
values ('Ken', 'Thompson', '194304121234');
insert into address(system_id, street_name, city)
values (10, 'Bell Labs', 'Los Angeles');
insert into phone_number
values (10, '555-475-5701');
insert into email
values (10, 'glasses@bell-labs.com');

-- Admin --

insert into person(first_name, last_name, ssn)
values ('Admin', 'Admin', '194304121234');
insert into address(system_id, street_name)
values (11, 'street 1');
insert into phone_number
values (11, '000-000-0000');
insert into email
values (11, 'admin@soundgood_musicschool.com');

-- Inserting Student Data --

insert into student
values (1, 'Tom');
insert into parent
values ('Tom', 'INSERT_NAME Tulliver', '555-123-4444');
insert into sibling
values ('Tom', 'Maggie');
insert into instrument_played
values ('Tom', 'Flute', 2);

insert into student
values (2, 'Maggie');
insert into parent
values ('Maggie', 'INSERT_NAME Tulliver', '555-123-4444');
insert into sibling
values ('Maggie', 'Tom');
insert into instrument_played
values ('Maggie', 'Flute', 2);

insert into student
values (3, 'Jimi');
insert into instrument_played
values ('Jimi', 'Guitar', 3);

insert into student
values (4, 'Rodion');
insert into instrument_played
values ('Rodion', 'Piano', 1);

insert into student
values (5, 'Frank');
insert into instrument_played
values ('Frank', 'Voice', 3);

insert into student 
values (6, 'Edward'); 
insert into instrument_played
values ('Edward', 'Piano', 1);

-- Inserting Teachers Data --

insert into instructor
values (7, 'Steve');
insert into instrument_mastered
values ('Steve', 'Flute');

insert into instructor
values (8, 'Alan');
insert into instrument_mastered
values ('Alan', 'Piano');

insert into instructor
values (9, 'Dennis');
insert into instrument_mastered
values ('Dennis', 'Voice');

insert into instructor
values (10, 'Ken');
insert into instrument_mastered
values ('Ken', 'Guitar');

-- Admin Data --

insert into administrative_personal
values (11, 'the_admin');

-- EVENTS --

    -- Steve's Private Lessons
        -- January 
    insert into event (inst_uname, starting_time, event_type) -- 1
    values ('Steve', '2022-01-13 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 2
    values ('Steve', '2022-01-14 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 3 
    values ('Steve', '2022-01-15 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 4
    values ('Steve', '2022-01-16 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 5
    values ('Steve', '2022-01-17 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 6
    values ('Steve', '2022-01-18 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 7
    values ('Steve', '2022-01-19 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 8
    values ('Steve', '2022-01-20 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 9
    values ('Steve', '2022-01-21 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 10
    values ('Steve', '2022-01-22 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 11
    values ('Steve', '2022-01-23 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 12
    values ('Steve', '2022-01-24 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 13
    values ('Steve', '2022-01-25 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 14
    values ('Steve', '2022-01-26 08:00:00', 1);
            -- Adding Student and Lesson Type
            insert into student_schedule_event(event_id, stud_uname)
            values(1, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(1, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(2, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(2, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(3, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(3, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(4, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(4, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(5, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(5, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(6, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(6, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(7, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(7, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(8, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(8, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(9, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(9, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(10, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(10, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(11, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(11, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(12, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(12, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(13, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(13, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(14, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(14, 'Flute', 'the_admin', 2);
        -- February  
    insert into event (inst_uname, starting_time, event_type) -- 15
    values ('Steve', '2022-02-13 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 16
    values ('Steve', '2022-02-14 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 17
    values ('Steve', '2022-02-15 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 18
    values ('Steve', '2022-02-16 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 19
    values ('Steve', '2022-02-17 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 20
    values ('Steve', '2022-02-18 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 21
    values ('Steve', '2022-02-19 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 22
    values ('Steve', '2022-02-20 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 23
    values ('Steve', '2022-02-21 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 24
    values ('Steve', '2022-02-22 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 25
    values ('Steve', '2022-02-23 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 26
    values ('Steve', '2022-02-24 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 27
    values ('Steve', '2022-02-25 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 28
    values ('Steve', '2022-02-26 08:00:00', 1);
            -- Adding Student
            insert into student_schedule_event(event_id, stud_uname)
            values(15, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(15, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(16, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(16, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(17, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(17, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(18, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(18, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(19, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(19, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(20, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(20, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(21, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(21, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(22, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(22, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(23, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(23, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(24, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(24, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(25, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(25, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(26, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(26, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(27, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(27, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(28, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(28, 'Flute', 'the_admin', 2);

        -- March  
    insert into event (inst_uname, starting_time, event_type) -- 29
    values ('Steve', '2022-03-13 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 30
    values ('Steve', '2022-03-14 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 31
    values ('Steve', '2022-03-15 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 32
    values ('Steve', '2022-03-16 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 33
    values ('Steve', '2022-03-17 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 34
    values ('Steve', '2022-03-18 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 35
    values ('Steve', '2022-03-19 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 36
    values ('Steve', '2022-03-20 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 37
    values ('Steve', '2022-03-21 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 38
    values ('Steve', '2022-03-22 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 39
    values ('Steve', '2022-03-23 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 40
    values ('Steve', '2022-03-24 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 41
    values ('Steve', '2022-03-25 08:00:00', 1);
        -- Adding students --
            insert into student_schedule_event(event_id, stud_uname)
            values(29, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(29, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(30, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(30, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(31, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(31, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(32, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(32, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(33, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(33, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(34, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(34, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(35, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(35, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(36, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(36, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(37, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(37, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(38, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(38, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(39, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(39, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(40, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(40, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(41, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(41, 'Flute', 'the_admin', 2);

        -- April  
    insert into event (inst_uname, starting_time, event_type) -- 42
    values ('Steve', '2022-04-13 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 43
    values ('Steve', '2022-04-14 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 44
    values ('Steve', '2022-04-15 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 45
    values ('Steve', '2022-04-16 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 46
    values ('Steve', '2022-04-17 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 47
    values ('Steve', '2022-04-18 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 48
    values ('Steve', '2022-04-19 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 49
    values ('Steve', '2022-04-20 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 50
    values ('Steve', '2022-04-23 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 51
    values ('Steve', '2022-04-24 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 52
    values ('Steve', '2022-04-25 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 53
    values ('Steve', '2022-04-26 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 54
    values ('Steve', '2022-04-27 08:00:00', 1);
    -- Inserting students --
            insert into student_schedule_event(event_id, stud_uname)
            values(42, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(42, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(43, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(43, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(44, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(44, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(45, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(45, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(46, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(46, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(47, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(47, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(48, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(48, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(49, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(49, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(50, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(50, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(51, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(51, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(52, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(52, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(53, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(53, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(54, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(54, 'Flute', 'the_admin', 2);

        -- May  
    insert into event (inst_uname, starting_time, event_type) -- 55
    values ('Steve', '2022-05-20 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 56
    values ('Steve', '2022-05-23 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 57
    values ('Steve', '2022-05-24 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 58
    values ('Steve', '2022-05-25 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 59
    values ('Steve', '2022-05-26 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 60
    values ('Steve', '2022-05-27 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 61
    values ('Steve', '2022-05-27 08:00:00', 1);
    -- Inserting students --
            insert into student_schedule_event(event_id, stud_uname)
            values(55, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(55, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(56, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(56, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(57, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(57, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(58, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(58, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(59, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(59, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(60, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(60, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(61, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(61, 'Flute', 'the_admin', 2);

        -- September  
    insert into event (inst_uname, starting_time, event_type) -- 62
    values ('Steve', '2022-09-20 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 63
    values ('Steve', '2022-09-23 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 64
    values ('Steve', '2022-09-24 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 65
    values ('Steve', '2022-09-25 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 66
    values ('Steve', '2022-09-26 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 67
    values ('Steve', '2022-09-27 08:00:00', 1);
    -- Inserting students --
            insert into student_schedule_event(event_id, stud_uname)
            values(62, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(62, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(63, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(63, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(64, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(64, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(65, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(65, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(66, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(66, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(67, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(67, 'Flute', 'the_admin', 2);

        -- November  
    insert into event (inst_uname, starting_time, event_type) -- 68
    values ('Steve', '2022-11-20 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 69
    values ('Steve', '2022-11-23 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 70
    values ('Steve', '2022-11-24 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 71
    values ('Steve', '2022-11-25 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 72
    values ('Steve', '2022-11-26 08:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 73
    values ('Steve', '2022-11-27 08:00:00', 1);
    -- Inserting students --
            insert into student_schedule_event(event_id, stud_uname)
            values(68, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(68, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(69, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(69, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(70, 'Maggie');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(70, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(71, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(71, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(72, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(72, 'Flute', 'the_admin', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(73, 'Tom');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values(73, 'Flute', 'the_admin', 2);

    -- Steve's Group Lessons
        -- June
    insert into event (inst_uname, starting_time, event_type) -- 74
    values ('Steve', '2022-06-13 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 75
    values ('Steve', '2022-06-14 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 76
    values ('Steve', '2022-06-15 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 77
    values ('Steve', '2022-06-16 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 78
    values ('Steve', '2022-06-17 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 79
    values ('Steve', '2022-06-18 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 80
    values ('Steve', '2022-06-19 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 81
    values ('Steve', '2022-06-20 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 82
    values ('Steve', '2022-06-21 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 83
    values ('Steve', '2022-06-22 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 84
    values ('Steve', '2022-06-23 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 85
    values ('Steve', '2022-06-24 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 86
    values ('Steve', '2022-06-25 08:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 87
    values ('Steve', '2022-06-26 08:00:00', 2);
    -- Adding students
            insert into student_schedule_event(event_id, stud_uname)
            values(74, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(74, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(74, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(75, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(75, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(75, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(76, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(76, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(76, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(77, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(77, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(77, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(78, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(78, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(78, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(79, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(79, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(79, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(80, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(80, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(80, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(81, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(81, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(81, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(82, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(82, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(82, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(83, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(83, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(83, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(84, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(84, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(84, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(85, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(85, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(85, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(86, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(86, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(86, 'Flute', 2);

            insert into student_schedule_event(event_id, stud_uname)
            values(87, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(87, 'Tom');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(87, 'Flute', 2);


    -- Alan's Group Lessons --
        -- January 
    insert into event (inst_uname, starting_time, event_type) -- 88
    values ('Alan', '2022-01-7 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 89
    values ('Alan', '2022-01-8 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 90
    values ('Alan', '2022-01-9 10:00:00', 2);
        -- February 
    insert into event (inst_uname, starting_time, event_type) -- 91
    values ('Alan', '2022-02-7 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 92
    values ('Alan', '2022-02-8 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 93
    values ('Alan', '2022-02-9 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 94
    values ('Alan', '2022-02-10 10:00:00', 2);
        -- March 
    insert into event (inst_uname, starting_time, event_type) -- 95
    values ('Alan', '2022-03-7 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 96
    values ('Alan', '2022-03-8 10:00:00', 2);
        -- April 
    insert into event (inst_uname, starting_time, event_type) -- 97
    values ('Alan', '2022-04-14 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 98
    values ('Alan', '2022-04-15 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 99
    values ('Alan', '2022-04-16 10:00:00', 2);
        -- August 
    insert into event (inst_uname, starting_time, event_type) -- 100
    values ('Alan', '2022-08-20 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 101
    values ('Alan', '2022-08-21 10:00:00', 2);
        -- September 
    insert into event (inst_uname, starting_time, event_type) -- 102
    values ('Alan', '2022-09-16 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 103
    values ('Alan', '2022-09-17 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 104
    values ('Alan', '2022-09-18 10:00:00', 2);
        -- December 
    insert into event (inst_uname, starting_time, event_type) -- 105
    values ('Alan', '2022-12-16 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 106
    values ('Alan', '2022-12-17 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 107
    values ('Alan', '2022-12-18 10:00:00', 2);
    insert into event (inst_uname, starting_time, event_type) -- 108
    values ('Alan', '2022-12-19 10:00:00', 2);
        -- Adding Students: Edward and Rodion
            insert into student_schedule_event(event_id, stud_uname)
            values(88, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(88, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(88, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(89, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(89, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(89, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(90, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(90, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(90, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(91, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(91, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(91, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(92, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(92, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(92, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(93, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(93, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(93, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(94, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(94, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(94, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(95, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(95, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(95, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(96, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(96, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(96, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(97, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(97, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(97, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(98, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(98, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(98, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(99, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(99, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(99, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(100, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(100, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(100, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(101, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(101, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(101, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(102, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(102, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(102, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(103, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(103, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(103, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(104, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(104, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(104, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(105, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(105, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(105, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(106, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(106, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(106, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(107, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(107, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(107, 'Piano', 1);

            insert into student_schedule_event(event_id, stud_uname)
            values(108, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(108, 'Rodion');
            insert into group_lesson(event_id, instrument, instrument_skill)
            values(108, 'Piano', 1);

    -- Dennis' Ensembles
    -- January
    insert into event (inst_uname, starting_time, event_type) -- 109
    values ('Dennis', '2022-01-10 13:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 110
    values ('Dennis', '2022-01-11 13:00:00', 3);
    -- February
    insert into event (inst_uname, starting_time, event_type) -- 111
    values ('Dennis', '2022-02-18 13:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 112
    values ('Dennis', '2022-02-19 13:00:00', 3);
    -- March
    insert into event (inst_uname, starting_time, event_type) -- 113
    values ('Dennis', '2022-03-14 13:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 114
    values ('Dennis', '2022-03-15 13:00:00', 3);
    -- April
    insert into event (inst_uname, starting_time, event_type) -- 115
    values ('Dennis', '2022-04-10 13:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 116
    values ('Dennis', '2022-04-11 13:00:00', 3);
    -- September
    insert into event (inst_uname, starting_time, event_type) -- 117
    values ('Dennis', '2022-09-10 13:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 118
    values ('Dennis', '2022-09-11 13:00:00', 3);
    -- OCTOBER
    insert into event (inst_uname, starting_time, event_type) -- 119
    values ('Dennis', '2022-10-17 13:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 120
    values ('Dennis', '2022-10-18 13:00:00', 3);
    -- November
    insert into event (inst_uname, starting_time, event_type) -- 121
    values ('Dennis', '2022-11-10 13:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 122
    values ('Dennis', '2022-11-11 13:00:00', 3);
        -- Adding Students, All
            insert into student_schedule_event(event_id, stud_uname)
            values(109, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(109, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(109, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(109, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(109, 'Tom');
            insert into ensemble(event_id, genre)
            values(109, 'Neo Soul');

            insert into student_schedule_event(event_id, stud_uname)
            values(110, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(110, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(110, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(110, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(110, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(110, 'Tom');
            insert into ensemble(event_id, genre)
            values(110, 'Neo Soul');

            insert into student_schedule_event(event_id, stud_uname)
            values(111, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(111, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(111, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(111, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(111, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(111, 'Tom');
            insert into ensemble(event_id, genre)
            values(111, 'Neo Soul');

            insert into student_schedule_event(event_id, stud_uname)
            values(112, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(112, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(112, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(112, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(112, 'Tom');
            insert into ensemble(event_id, genre)
            values(112, 'Neo Soul');

            insert into student_schedule_event(event_id, stud_uname)
            values(113, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(113, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(113, 'Frank');
            insert into ensemble(event_id, genre)
            values(113, 'Drum and Bass');

            insert into student_schedule_event(event_id, stud_uname)
            values(114, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(114, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(114, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(114, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(114, 'Tom');
            insert into ensemble(event_id, genre)
            values(114, 'Neo Funkstep');

            insert into student_schedule_event(event_id, stud_uname)
            values(115, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(115, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(115, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(115, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(115, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(115, 'Tom');
            insert into ensemble(event_id, genre)
            values(115, 'Trap Wave');

            insert into student_schedule_event(event_id, stud_uname)
            values(116, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(116, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(116, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(116, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(116, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(116, 'Tom');
            insert into ensemble(event_id, genre)
            values(116, 'Classical Chiptune');

            insert into student_schedule_event(event_id, stud_uname)
            values(117, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(117, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(117, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(117, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(117, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(117, 'Tom');
            insert into ensemble(event_id, genre)
            values(117, 'Microtonal Jazz');

            insert into student_schedule_event(event_id, stud_uname)
            values(118, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(118, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(118, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(118, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(118, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(118, 'Tom');
            insert into ensemble(event_id, genre)
            values(118, '60s Sad Music');

            insert into student_schedule_event(event_id, stud_uname)
            values(119, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(119, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(119, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(119, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(119, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(119, 'Tom');
            insert into ensemble(event_id, genre)
            values(119, 'Dubstep Salsa');

            insert into student_schedule_event(event_id, stud_uname)
            values(120, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(120, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(120, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(120, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(120, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(120, 'Tom');
            insert into ensemble(event_id, genre)
            values(120, 'Neo Soul');

            insert into student_schedule_event(event_id, stud_uname)
            values(121, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(121, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(121, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(121, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(121, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(121, 'Tom');
            insert into ensemble(event_id, genre)
            values(121, 'Synthwave Disco');

            insert into student_schedule_event(event_id, stud_uname)
            values(122, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(122, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(122, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(122, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(122, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(122, 'Tom');
            insert into ensemble(event_id, genre)
            values(122, 'NewWave Punk');
    -- Ken' Events
    -- January
    insert into event (inst_uname, starting_time, event_type) -- 123
    values ('Dennis', '2022-01-10 18:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 124
    values ('Dennis', '2022-01-11 18:00:00', 3);
    -- February
    insert into event (inst_uname, starting_time, event_type) -- 125
    values ('Dennis', '2022-02-18 18:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 126
    values ('Dennis', '2022-02-19 18:00:00', 3);
    -- March
    insert into event (inst_uname, starting_time, event_type) -- 127
    values ('Dennis', '2022-03-14 18:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 128
    values ('Dennis', '2022-03-15 18:00:00', 3);
    -- April
    insert into event (inst_uname, starting_time, event_type) -- 129
    values ('Dennis', '2022-04-10 18:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 130
    values ('Dennis', '2022-04-11 18:00:00', 3);
    -- September
    insert into event (inst_uname, starting_time, event_type) -- 131
    values ('Dennis', '2022-09-10 18:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 132
    values ('Dennis', '2022-09-11 18:00:00', 3);
    -- OCTOBER
    insert into event (inst_uname, starting_time, event_type) -- 133
    values ('Dennis', '2022-10-17 18:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 134
    values ('Dennis', '2022-10-18 18:00:00', 3);
    -- November
    insert into event (inst_uname, starting_time, event_type) -- 135
    values ('Dennis', '2022-11-10 18:00:00', 1);
    insert into event (inst_uname, starting_time, event_type) -- 136
    values ('Dennis', '2022-11-11 18:00:00', 3);

    -- August (Added after)
    insert into event (inst_uname, starting_time, event_type) -- 137
    values ('Dennis', '2022-8-04 18:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 138
    values ('Dennis', '2022-8-05 18:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 139
    values ('Dennis', '2022-8-08 18:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 140
    values ('Dennis', '2022-8-09 18:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 141
    values ('Dennis', '2022-8-10 18:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 142
    values ('Dennis', '2022-8-15 18:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 143
    values ('Dennis', '2022-8-16 18:00:00', 3);
    insert into event (inst_uname, starting_time, event_type) -- 144
    values ('Dennis', '2022-8-18 18:00:00', 3);
        -- Inserting Students, Jimi and All
            insert into student_schedule_event(event_id, stud_uname)
            values(123, 'Jimi');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values (123, 'Guitar', 'the_admin', 3);

            insert into student_schedule_event(event_id, stud_uname)
            values(124, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(124, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(124, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(124, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(124, 'Tom');
            insert into ensemble(event_id, genre)
            values (124, 'Deathcore');

            insert into student_schedule_event(event_id, stud_uname)
            values(125, 'Jimi');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values (125, 'Guitar', 'the_admin', 3);

            insert into student_schedule_event(event_id, stud_uname)
            values(126, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(126, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(126, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(126, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(126, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(126, 'Tom');
            insert into ensemble(event_id, genre)
            values (126, 'The mamas and the papas covers');

            insert into student_schedule_event(event_id, stud_uname)
            values(127, 'Jimi');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values (127, 'Guitar', 'the_admin', 3);

            insert into student_schedule_event(event_id, stud_uname)
            values(128, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(128, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(128, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(128, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(128, 'Tom');
            insert into ensemble(event_id, genre)
            values (128, 'Singer-songwriter hour');

            insert into student_schedule_event(event_id, stud_uname)
            values(129, 'Jimi');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values (129, 'Guitar', 'the_admin', 3);

            insert into student_schedule_event(event_id, stud_uname)
            values(130, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(130, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(130, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(130, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(130, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(130, 'Tom');
            insert into ensemble(event_id, genre)
            values (130, '80s Metal');

            insert into student_schedule_event(event_id, stud_uname)
            values(131, 'Jimi');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values (131, 'Guitar', 'the_admin', 3);

            insert into student_schedule_event(event_id, stud_uname)
            values(132, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(132, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(132, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(132, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(132, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(132, 'Tom');
            insert into ensemble(event_id, genre)
            values (132, 'Gipsy Jazz');

            insert into student_schedule_event(event_id, stud_uname)
            values(133, 'Jimi');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values (133, 'Guitar', 'the_admin', 3);

            insert into student_schedule_event(event_id, stud_uname)
            values(134, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(134, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(134, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(134, 'Tom');
            insert into ensemble(event_id, genre)
            values (134, 'Ragtime');

            insert into student_schedule_event(event_id, stud_uname)
            values(135, 'Jimi');
            insert into private_lesson(event_id, instrument, personal_uname, instrument_skill)
            values (135, 'Guitar', 'the_admin', 3);

            insert into student_schedule_event(event_id, stud_uname)
            values(136, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(136, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(136, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(136, 'Jimi');
            insert into ensemble(event_id, genre)
            values (136, 'Mozart hour');


            insert into student_schedule_event(event_id, stud_uname)
            values(137, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(137, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(137, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(137, 'Jimi');
            insert into ensemble(event_id, genre)
            values (137, 'Metalcore');

            insert into student_schedule_event(event_id, stud_uname)
            values(138, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(138, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(138, 'Jimi');
            insert into ensemble(event_id, genre)
            values (138, 'Smooth Jazz');

            insert into student_schedule_event(event_id, stud_uname)
            values(139, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(139, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(139, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(139, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(139, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(139, 'Tom');
            insert into ensemble(event_id, genre)
            values (139, 'Gipsy Jazz');

            insert into student_schedule_event(event_id, stud_uname)
            values(140, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(140, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(140, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(140, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(140, 'Tom');
            insert into ensemble(event_id, genre)
            values (140, 'Neo Jazz');

            insert into student_schedule_event(event_id, stud_uname)
            values(141, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(141, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(141, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(141, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(141, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(141, 'Tom');
            insert into ensemble(event_id, genre)
            values (141, 'Folk Songs');

            insert into student_schedule_event(event_id, stud_uname)
            values(142, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(142, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(142, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(142, 'Tom');
            insert into ensemble(event_id, genre)
            values (142, 'Inde Pop');

            insert into student_schedule_event(event_id, stud_uname)
            values(143, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(143, 'Rodion');
            insert into student_schedule_event(event_id, stud_uname)
            values(143, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(143, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(143, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(143, 'Tom');
            insert into ensemble(event_id, genre)
            values (143, 'Experimental Singer-Song Punk');

            insert into student_schedule_event(event_id, stud_uname)
            values(144, 'Edward');
            insert into student_schedule_event(event_id, stud_uname)
            values(144, 'Frank');
            insert into student_schedule_event(event_id, stud_uname)
            values(144, 'Jimi');
            insert into student_schedule_event(event_id, stud_uname)
            values(144, 'Maggie');
            insert into student_schedule_event(event_id, stud_uname)
            values(144, 'Tom');
            insert into ensemble(event_id, genre)
            values (144, 'Pokemon Songs');

-- Adding instruments
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 1
    values ('Guitar', 'Fender', 10.0);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 2 
    values ('Guitar', 'Fender', 10.0);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 3
    values ('Guitar', 'Vintage Fender', 15.0);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 4
    values ('Guitar', 'Ibanez', 7.5);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 5
    values ('Flute', 'Flute Makers', 3.5);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 6
    values ('Flute', 'Flute Makers', 3.5);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 7
    values ('Flute', 'Flute Fellas', 1.5);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 8
    values ('Flute', 'Freds Flutes', 2.5);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 9
    values ('Keyboard', 'Nord', 20.0);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 10
    values ('Keyboard', 'Nord', 20.0);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 11
    values ('Cello', 'Cello Brothers', 15.0);
    insert into instrument(instrument_type, instrument_brand, rental_fee) -- 12
    values ('Theremin', 'Theremin Gang', 150.0);


