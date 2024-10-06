set schema FN2MI0700026;

CREATE TABLE Exam (
exam_id INT NOT NULL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
points_per_question INT,
CONSTRAINT CK_Exam_points_per_question CHECK (points_per_question > 0)
);

CREATE TABLE Question (
question_id INT NOT NULL PRIMARY KEY,
question_type VARCHAR(255),
points INT,
condition VARCHAR(255) NOT NULL,
answer VARCHAR(255) NOT NULL,
CONSTRAINT CK_Question_points CHECK (points > 0)
);

CREATE TABLE Exam_question (
exam_question_id INT NOT NULL PRIMARY KEY,
exam_id INT NOT NULL,
question_id INT NOT NULL,
points_for_question INT,
CONSTRAINT CK_Exam_question_points_for_question CHECK (points_for_question > 0),
CONSTRAINT FK_Exam_question_Exam FOREIGN KEY (exam_id) REFERENCES Exam(exam_id),
CONSTRAINT FK_Exam_question_Question FOREIGN KEY (question_id) REFERENCES Question(question_id)
);

CREATE TABLE Restriction (
restriction_id INT NOT NULL PRIMARY KEY,
description VARCHAR(255) NOT NULL
);

CREATE TABLE User (
user_id INT NOT NULL PRIMARY KEY,
username VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
other_information VARCHAR(255)
);

CREATE TABLE User_exam (
user_exam_id INT NOT NULL PRIMARY KEY,
user_id INT NOT NULL,
exam_id INT NOT NULL,
exam_status VARCHAR(255) NOT NULL,
CONSTRAINT FK_User_exam_User FOREIGN KEY (user_id) REFERENCES User(user_id),
CONSTRAINT FK_User_exam_Exam FOREIGN KEY (exam_id) REFERENCES Exam(exam_id)
);

CREATE TABLE User_answer (
user_id INT NOT NULL,
question_id INT NOT NULL,
answer VARCHAR(255) NOT NULL,
CONSTRAINT PK_User_answer PRIMARY KEY (user_id, question_id),
CONSTRAINT FK_User_answer_User FOREIGN KEY (user_id) REFERENCES User(user_id),
CONSTRAINT FK_User_answer_Question FOREIGN KEY (question_id) REFERENCES Question(question_id)
);

CREATE TABLE User_exam_result (
user_exam_result_id INT NOT NULL PRIMARY KEY,
user_exam_id INT NOT NULL,
points INT,
other_statistical_data VARCHAR(255),
CONSTRAINT CK_User_exam_result_points CHECK (points > 0),
CONSTRAINT FK_User_exam_result_User_exam FOREIGN KEY (user_exam_id) REFERENCES User_exam(user_exam_id)
);

CREATE TABLE Exam_Question_List (
exam_id INT NOT NULL,
question_id INT NOT NULL,
CONSTRAINT PK_Exam_Question_List PRIMARY KEY (exam_id, question_id),
CONSTRAINT FK_Exam_Question_List_Exam FOREIGN KEY (exam_id) REFERENCES Exam(exam_id),
CONSTRAINT FK_Exam_Question_List_Question FOREIGN KEY (question_id) REFERENCES Question(question_id)
);

CREATE TABLE Exam_Restriction_List (
exam_id INT NOT NULL,
restriction_id INT NOT NULL,
CONSTRAINT PK_Exam_Restriction_List PRIMARY KEY (exam_id, restriction_id),
CONSTRAINT FK_Exam_Restriction_List_Exam FOREIGN KEY (exam_id) REFERENCES Exam(exam_id),
CONSTRAINT FK_Exam_Restriction_List_Restriction FOREIGN KEY (restriction_id) REFERENCES Restriction(restriction_id)
);

CREATE TABLE User_Question_Answer (
user_id INT NOT NULL,
question_id INT NOT NULL,
answer VARCHAR(255) NOT NULL,
CONSTRAINT PK_User_Question_Answer PRIMARY KEY (user_id, question_id),
CONSTRAINT FK_User_Question_Answer_User FOREIGN KEY (user_id) REFERENCES User(user_id),
CONSTRAINT FK_User_Question_Answer_Question FOREIGN KEY (question_id) REFERENCES Question(question_id)
);