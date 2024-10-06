set schema FN2MI0700026;

CREATE VIEW exam_view
AS
SELECT exam_id, title, points_per_question
FROM Exam;

CREATE VIEW question_view
AS
SELECT question_id, question_type, points, condition, answer
FROM Question
WHERE question_type = 'multiple choice';

CREATE VIEW user_view
AS
SELECT user_id, username, password, other_information
FROM User
WHERE user_id > 10
WITH CHECK OPTION;

INSERT INTO Exam (exam_id, title, points_per_question)
VALUES (1, 'Test Exam', 2);

INSERT INTO Question (question_id, question_type, points, condition, answer)
VALUES (1, 'multiple choice', 1, 'What is 2*2?', '4');

INSERT INTO Exam_question (exam_question_id, exam_id, question_id, points_for_question)
VALUES (1, 1, 1, 2);

INSERT INTO Restriction (restriction_id, description)
VALUES (1, 'No cheating allowed');

INSERT INTO User (user_id, username, password, other_information)
VALUES (11, 'JohnDoe', 'password', 'Student');

INSERT INTO User_exam (user_exam_id, user_id, exam_id, exam_status)
VALUES (1, 11, 1, 'in progress');

INSERT INTO User_answer (user_id, question_id, answer)
VALUES (11, 1, '4');

INSERT INTO User_exam_result (user_exam_result_id, user_exam_id, points, other_statistical_data)
VALUES (1, 1, 2, 'Some statistical data');

INSERT INTO Exam_Question_List (exam_id, question_id)
VALUES (1, 1);

INSERT INTO Exam_Restriction_List (exam_id, restriction_id)
VALUES (1, 1);

INSERT INTO User_Question_Answer (user_id, question_id, answer)
VALUES (11, 1, '4');

-- Test read-only view
SELECT * FROM exam_view;
SELECT * FROM question_view;
SELECT * FROM user_view;

-- Test updatable view
UPDATE exam_view
SET title = 'New Exam Title'
WHERE exam_id = 1;

UPDATE question_view
SET points = 2
WHERE question_id = 1;

-- Test check option view
INSERT INTO user_view (user_id, username, password, other_information)
VALUES (9, 'JaneDoe', 'password', 'Student'); -- Should fail due to check option

INSERT INTO user_view (user_id, username, password, other_information)
VALUES (12, 'BobSmith', 'password', 'Student'); -- Should succeed
-- Verify data has been inserted/updated correctly

SELECT * FROM Exam;
SELECT * FROM Question;
SELECT * FROM Exam_question;
SELECT * FROM Restriction;
SELECT * FROM User;
SELECT * FROM User_exam;
SELECT * FROM User_answer;
SELECT * FROM User_exam_result;
SELECT * FROM Exam_Question_List;
SELECT * FROM Exam_Restriction_List;
SELECT * FROM User_Question_Answer;

-- Delete data from User_Question_Answer table
DELETE FROM User_Question_Answer
WHERE user_id = 11
AND question_id = 1;

-- Delete data from User_exam_result table
DELETE FROM User_exam_result
WHERE user_exam_id = 1;

-- Delete data from User_answer table
DELETE FROM User_answer
WHERE user_id = 11
AND question_id = 1;

-- Delete data from User_exam table
DELETE FROM User_exam
WHERE user_exam_id = 1;

-- Delete data from User table
DELETE FROM User
WHERE user_id = 11;

-- Delete data from Exam_Restriction_List table
DELETE FROM Exam_Restriction_List
WHERE exam_id = 1 AND restriction_id = 1;

-- Delete data from Exam_Question_List table
DELETE FROM Exam_Question_List
WHERE exam_id = 1
AND question_id = 1;

-- Delete data from Exam_question table
DELETE FROM Exam_question
WHERE exam_question_id = 1;

-- Delete data from Restriction table
DELETE FROM Restriction
WHERE restriction_id = 1;

-- Delete data from Question table
DELETE FROM Question
WHERE question_id = 1
AND question_type = 'multiple choice';

-- Delete data from Exam table
DELETE FROM Exam
WHERE exam_id = 1;

-- Drop views
DROP VIEW exam_view;
DROP VIEW question_view;
DROP VIEW user_view;
