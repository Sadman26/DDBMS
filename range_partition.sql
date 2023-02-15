create table student(
    id  int,
    name varchar(20),
    intake int
)partition by range(id);
-- ---------------------Second Part-----------------------
create table first_table partition of student
    for values from (MINVALUE) to (5);
create table second_table partition of student
    for values from (5) to (MAXVALUE);