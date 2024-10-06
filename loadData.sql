set schema FN2MI0700026;

-- Insert data into Exam table
INSERT INTO Exam (exam_id, title, points_per_question)
VALUES
(1, 'Math Test', 2),
(2, 'Science Test', 3),
(3, 'English Test', 1);

-- Insert data into Question table
INSERT INTO Question (question_id, question_type, points, condition, answer)
VALUES
(1, 'Multiple Choice', 1, 'What is 2+2?', '4'),
(2, 'Short Answer', 2, 'What is the capital of France?', 'Paris'),
(3, 'Essay', 5, 'Explain the concept of supply and demand', 'Sample answer'),
(4, 'True/False', 1, 'The earth is flat', 'False');

-- Insert data into Exam_question table
INSERT INTO Exam_question (exam_question_id, exam_id, question_id, points_for_question)
VALUES
(1, 1, 1, 2),
(2, 1, 2, 3),
(3, 2, 3, 1),
(4, 3, 4, 1);

-- Insert data into Restriction table
INSERT INTO Restriction (restriction_id, description)
VALUES
(1, 'No calculators allowed'),
(2, 'No talking during the exam');

-- Insert data into User table
INSERT INTO User (user_id, username, password, other_information)
VALUES
(1, 'JohnDoe', 'password', 'Student'),
(2, 'JaneDoe', 'password', 'Teacher'),
(3, 'BobSmith', 'password', 'Admin');

-- Insert data into User_exam table
INSERT INTO User_exam (user_exam_id, user_id, exam_id, exam_status)
VALUES
(1, 1, 1, 'Completed'),
(2, 2, 1, 'In Progress'),
(3, 3, 2, 'Not Started');

-- Insert data into User_answer table
INSERT INTO User_answer (user_id, question_id, answer)
VALUES
(1, 1, '4'),
(1, 2, 'Paris'),
(2, 1, '5'),
(3, 4, 'False');

-- Insert data into User_exam_result table
INSERT INTO User_exam_result (user_exam_result_id, user_exam_id, points, other_statistical_data)
VALUES
(1, 1, 4, 'Sample statistical data'),
(2, 2, 1, 'Sample statistical data'),
(3, 3, 1, 'Sample statistical data');

-- Insert data into Exam_Question_List table
INSERT INTO Exam_Question_List (exam_id, question_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);

-- Insert data into Exam_Restriction_List table
INSERT INTO Exam_Restriction_List (exam_id, restriction_id)
VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 2);

-- Insert data into User_Question_Answer table
INSERT INTO User_Question_Answer (user_id, question_id, answer)
VALUES
(1, 1, '4'),
(1, 2, 'Paris'),
(2, 1, '5'),
(3, 4, 'False');

-- Update data in Exam table
UPDATE Exam
SET points_per_question = 3
WHERE exam_id = 1;

-- Update data in Question table
UPDATE Question
SET points = 3
WHERE question_id = 2;

-- Update data in Exam_question table
UPDATE Exam_question
SET points_for_question = 1
WHERE exam_question_id = 1;

-- Update data in User_exam_result table
UPDATE User_exam_result
SET points = 3
WHERE user_exam_result_id = 1;

-- Delete data from User_answer table
DELETE FROM User_answer
WHERE user_id = 2;

-- Delete data from Exam_Question_List table
DELETE FROM Exam_Question_List
WHERE exam_id = 3;

-- Delete data from Exam_Restriction_List table
DELETE FROM Exam_Restriction_List
WHERE restriction_id = 1;

-- Delete data from User_Question_Answer table
DELETE FROM User_Question_Answer
WHERE user_id = 3
AND question_id = 4;