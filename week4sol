DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS `User`;
DROP TABLE IF EXISTS Course;

CREATE TABLE `User` (
    user_id     INTEGER NOT NULL AUTO_INCREMENT,
    name        VARCHAR(128) UNIQUE,
    PRIMARY KEY(user_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Course (
    course_id     INTEGER NOT NULL AUTO_INCREMENT,
    title         VARCHAR(128) UNIQUE,
    PRIMARY KEY(course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Member (
    user_id       INTEGER,
    course_id     INTEGER,
    role          INTEGER,

    CONSTRAINT FOREIGN KEY (user_id) REFERENCES `User` (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (course_id) REFERENCES Course (course_id)
       ON DELETE CASCADE ON UPDATE CASCADE,

    PRIMARY KEY (user_id, course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

INSERT INTO User (name) VALUES ('Abaan');
INSERT INTO User (name) VALUES ('Aditya');
INSERT INTO User (name) VALUES ('Lola');
INSERT INTO User (name) VALUES ('Millan');
INSERT INTO User (name) VALUES ('Rhiana');
INSERT INTO User (name) VALUES ('Tanchoma');
INSERT INTO User (name) VALUES ('Alexis');
INSERT INTO User (name) VALUES ('Elizabeth');
INSERT INTO User (name) VALUES ('Gregor');
INSERT INTO User (name) VALUES ('Zunaira');
INSERT INTO User (name) VALUES ('Marcous');
INSERT INTO User (name) VALUES ('Annaliesse');
INSERT INTO User (name) VALUES ('Jedidiah');
INSERT INTO User (name) VALUES ('Kyleena');
INSERT INTO User (name) VALUES ('Meledy');

INSERT INTO Course (title) VALUES ('si106');
INSERT INTO Course (title) VALUES ('si110');
INSERT INTO Course (title) VALUES ('si206');

INSERT INTO Member (user_id, course_id, role) VALUES ('Abaan', 1, 1);
INSERT INTO Member (user_id, course_id, role) VALUES ('Aditya', 1, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Lola', 1, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Millan', 1, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Rhiana', 1, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Tanchoma', 2, 1);
INSERT INTO Member (user_id, course_id, role) VALUES ('Alexis', 2, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Elizabeth', 2, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Gregor', 2, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Zunaira', 2, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Marcous', 3, 1);
INSERT INTO Member (user_id, course_id, role) VALUES ('Annaliesse', 3, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Jedidiah', 3, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Kyleena', 3, 0);
INSERT INTO Member (user_id, course_id, role) VALUES ('Meledy', 3, 0);

SELECT User.name, Member.role, Course.title
  FROM User JOIN Member JOIN Course
  ON Member.user_id = Account.account_id
    AND Member.user_id = Course.course_id
  ORDER BY User.title, Member.role DESC, User.name
