Electronic Tests Information System

Project Overview
The Electronic Tests Information System is designed to facilitate online examinations for students. The system supports a variety of question types, including essay questions, multiple-choice questions, and computational questions, enabling a comprehensive assessment of students’ knowledge. The application automatically grades the exams based on the answers provided, and it has mechanisms for managing exam prerequisites to enhance learning pathways.

Features
1. Unique Exam Identification: Each exam has a unique identifier and a title.
2. Question Management: Questions can be reused across multiple exams, with point values that may vary per exam.
3. Question Types:
- Essay: Open-ended text answers from students.
- Multiple Choice: A set of options where students select the correct answer.
- Computational: Students input a numerical answer.
4. Prerequisite Exams: Certain exams require students to have passed specific prior exams.
5. Automatic Grading: The system calculates final grades based on assigned points.
  
Database Design - The project includes a comprehensive database schema to support the electronic testing system, which consists of the following key components:
1. Entities and Relationships: Representation of exams, questions, user responses, and their interrelations.
2. Keys and Constraints:
- Primary Keys: Unique identifiers for each entity.
- Foreign Keys: Maintain referential integrity between exams and questions.
- Constraints: Unique value constraints, checks, and rules for data consistency.

File Structure
1. createTables.sql: Defines the database tables and their relationships.
2. createViews.sql: Specifies the views used to simplify data retrieval.
3. loadData.sql: Populates the database with sample data for initial testing.

Technologies Used
1. Database: MySQL
2. Programming Language: Java
3. IDE: IntelliJ IDEA
4. Modeling Tool: draw.io (diagrams.net)

How to Run the Project
1. Clone the repository: Download or clone this repository to your local machine.
2. Setup the Database:
- Use MySQL to import the createTables.sql file to create the database structure.
- Import the loadData.sql file to populate the database with sample data.
3. Run the Application:
- Open the Java application in IntelliJ IDEA.
- Configure the database connection settings in the application if needed.
- Run the application to test the functionality of the electronic tests system.
  
Future Improvements
1. Enhance support for additional question types.
2. Implement a user-friendly interface for exam creation and grading.
3. Strengthen security measures for exam access.


Информационна система за електронни тестове

Обзор на проекта
Информационната система за електронни тестове е проектирана да улесни онлайн изпитите за студенти. Системата поддържа разнообразие от типове въпроси, включително есета, затворени въпроси и изчислителни въпроси, което позволява цялостна оценка на знанията на студентите. Приложението автоматично оценява изпитите въз основа на предоставените отговори и разполага с механизми за управление на предварителните изпити, за да подобри обучителните пътеки.

Характеристики
1. Уникална идентификация на изпита: Всеки изпит има уникален идентификатор и заглавие.
2. Управление на въпросите: Въпросите могат да се използват повторно в различни изпити, с точки, които могат да варират в зависимост от изпита.
3. Типове въпроси:
- Есе: Отворени текстови отговори от студентите.
- Затворен въпрос: Комплект опции, от които студентите избират правилния отговор.
- Изчислителен: Студентите въвеждат числов отговор.
4. Предварителни изпити: Някои изпити изискват от студентите да са преминали определени предходни изпити.
5. Автоматично оценяване: Системата изчислява крайни оценки на базата на зададените точки.

Дизайн на базата данни - Проектът включва обширна схема на базата данни, която поддържа електронната тестова система, състояща се от следните ключови компоненти:
1. Същности и връзки: Представяне на изпити, въпроси, отговори на потребителите и техните взаимовръзки.
2. Ключове и ограничения:
- Първични ключове: Уникални идентификатори за всяка същност.
- Външни ключове: Поддържат референтна цялост между изпити и въпроси.
- Ограничения: Ограничения за уникални стойности, проверки и правила за последователност на данните.

Структура на файловете
1. createTables.sql: Определя таблиците на базата данни и техните взаимоотношения.
2. createViews.sql: Специфицира изгледите, използвани за опростяване на извличането на данни.
3 loadData.sql: Запълва базата данни с примерни данни за първоначално тестване.

Използвани технологии
1. База данни: MySQL
2. Програмен език: Java
3. IDE: IntelliJ IDEA
4. Инструмент за моделиране: draw.io (diagrams.net)

Как да стартирате проекта
1. Клонирайте репозитория: Изтеглете или клонирайте този репозиторий на локалната си машина.
2. Настройка на базата данни:
- Използвайте MySQL, за да импортирате файла createTables.sql, за да създадете структурата на базата данни.
- Импортирайте файла loadData.sql, за да запълните базата данни с примерни данни.
3. Стартиране на приложението:
- Отворете Java приложението в IntelliJ IDEA.
- Конфигурирайте настройките за връзка с базата данни в приложението, ако е необходимо.
- Стартирайте приложението, за да тествате функционалността на електронната тестова система.

Бъдещи подобрения
1. Подобряване на поддръжката за допълнителни типове въпроси.
2. Реализиране на потребителски интерфейс за създаване и оценяване на тестовете.
3. Усилване на мерките за сигурност за достъп до изпитите.
