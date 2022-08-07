USE fourthweek;
DROP TABLE IF EXISTS passing_number;
CREATE TABLE passing_number (id INT NOT NULL auto_increment,
                            number INT NOT NULL,
                            primary key (id)
);
insert into passing_number(number) values (4);
insert into passing_number(number) values (3);
insert into passing_number(number) values (3);
insert into passing_number(number) values (2);
insert into passing_number(number) values (5);
insert into passing_number(number) values (4);

SELECT id,number,COUNT(distinct number) AS t_rank
FROM passing_number
GROUP BY id;

SELECT m.id,m.number,COUNT(distinct n.number) t_rank
FROM passing_number m,passing_number n
WHERE n.number>=m.number
GROUP BY m.id
ORDER BY t_rank,m.id;