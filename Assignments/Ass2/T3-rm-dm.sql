--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-rm-dm.sql

--Student ID: 31189733
--Student Name: How Yu Chern
--Unit Code: FIT3171
--Applied Class No: Tutorial 04

/* Comments for your marker:
*/

--3(a)
--Competitor Sequence
DROP SEQUENCE competitor_seq;
CREATE SEQUENCE competitor_seq START WITH 100 INCREMENT BY 1;

--Team Sequence
DROP SEQUENCE competitor_seq;
CREATE SEQUENCE team_seq START WITH 100 INCREMENT BY 1;

--3(b)
--First, insert father into emercontact
INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0476541234’',
    'Jack',
    'Kai'
);
--Second, insert the two competitors


--Insert Competitors as entries

--3(c)
--Create a team 'Kai Speedsters', with Anabelle Kai as the leader

--Add Anabelle Kai into the team (because she is the leader)


--3(d)
--Update primary key of Daniel Kai to new 10K run event
--Update Daniel Kai to be a member of the team 'Kai Speeedsters'


--3(e)
--Delete Daniel from entries.

--Update Anabelle and make her team number null

--Delete the team 'Kai Speedsters'
