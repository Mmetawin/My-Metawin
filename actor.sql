USE fourthweek;
DROP TABLE IF EXISTS actor;
CREATE TABLE actor  (
                        actor_id  smallint(5)  NOT NULL PRIMARY KEY,
                        first_name  varchar(45) NOT NULL,
                        last_name  varchar(45) NOT NULL,
                        last_update  datetime NOT NULL);

ALTER TABLE actor
ADD UNIQUE INDEX idx_first_name(first_name);

ALTER TABLE actor
ADD INDEX idx_last_name(last_name);