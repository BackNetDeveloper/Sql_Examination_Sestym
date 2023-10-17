use itiProject
go
--4
insert into student 
values
    ('John Doe', 1, 'john.doe@example.com', 'password123', 'student', '2022-12-22'),
    ('Jane Smith', 2, 'jane.smith@example.com', 'securepass456', 'student', '2019-12-22'),
    ('Michael Johnson', 3, 'michael.johnson@example.com', 'mypass789', 'student', '2012-12-22'),
    ('Emily Williams', 4, 'emily.williams@example.com', 'safe123', 'student', '2022-12-22'),
    ('Daniel Brown', 5, 'daniel.brown@example.com', 'mysecret789', 'student', '2015-12-22'),
    ('Olivia Davis', 1, 'olivia.davis@example.com', 'pass432', 'student', '2013-12-22'),
    ('William Martinez', 2, 'william.martinez@example.com', 'secure567', 'student', '2012-12-22'),
    ('Sophia Anderson', 3, 'sophia.anderson@example.com', 'p@ssword890', 'student', '2011-12-22'),
    ('James Taylor', 4, 'james.taylor@example.com', 'safepass123', 'student', '2016-12-22'),
    ('Grace Hernandez', 5, 'grace.hernandez@example.com', 'mysecret567', 'student', '2019-12-22'),
    ('Liam Johnson', 3, 'liam.johnson@example.com', 'liam123', 'student', '2022-12-22'),
    ('Ava Martinez', 2, 'ava.martinez@example.com', 'avapass567', 'student', '2021-12-22'),
    ('Noah Anderson', 1, 'noah.anderson@example.com', 'noah890', 'student', '2023-12-22'),
    ('Emma Taylor', 5, 'emma.taylor@example.com', 'emma123', 'student', '2018-12-22'),
    ('Jackson Hernandez', 4, 'jackson.hernandez@example.com', 'jackson567', 'student', '2022-12-22');
go
--5
insert into instructor
values
    ('John Jane', '2011-01-01', 'john@example.com', 'password123', '2012-01-01', 'instructor'),
    ('Jane Michael', '2013-01-01', 'jane@example.com', 'securepass456', '2013-01-01', 'instructor'),
    ('Michael Williams', '2014-01-01', 'michael@example.com', 'mypass789', '2014-01-01', 'instructor'),
    ('Emily Daniel', '2014-01-01', 'emily@example.com', 'safe123', '2015-01-01', 'instructor'),
    ('Daniel Davis', '2012-01-01', 'daniel@example.com', 'mysecret789', '2012-01-01', 'instructor'),
    ('Olivia Davis', '2019-01-01', 'olivia@example.com', 'pass432', '2019-01-01', 'instructor'),
    ('William Anderson', '2010-01-01', 'william@example.com', 'secure567', '2010-01-01', 'instructor'),
    ('Sophia Anderson', '2011-01-14', 'sophia@example.com', 'p@ssword890', '2009-01-01', 'instructor'),
    ('James Hernandez', '2011-12-01', 'james@example.com', 'safepass123', '2008-01-01', 'instructor'),
    ('Grace Hernandez', '2011-11-01', 'grace@example.com', 'mysecret567', '2005-01-01', 'manager'),
    ('Liam Martinez', '2011-01-15', 'liam@example.com', 'liam123', '2001-01-01', 'manager'),
    ('Ava Martinez', '2011-12-01', 'ava@example.com', 'avapass567', '2011-01-01', 'manager'),
    ('Noah Martinez', '2011-01-01', 'noah@example.com', 'noah890', '2000-01-01', 'manager'),
    ('Emma Noah', '2011-02-01', 'emma@example.com', 'emma123', '2000-01-12', 'manager'),
    ('Jackson Hernandez', '2011-03-12', 'jackson@example.com', 'jackson567', '2011-01-01', 'instructor');
go
--6
insert into course
values
	('Introduction to Programming', 20, 10, 'Learn the basics of programming.',1),
    ('Intermediate Programming Concepts', 40, 20, 'Build upon your programming knowledge.',1),
    ('Object-Oriented Programming', 90, 30, 'Learn about OOP principles.',1),
    ('Data Structures and Algorithms', 95, 40, 'Explore fundamental data structures and algorithms.',1),
    ('Web Development Fundamentals', 90, 10, 'Introduction to web development technologies.',1),
    ('Database Design and Management', 85, 25, 'Learn about designing and managing databases.',1),
    ('Mobile App Development', 80, 30, 'Develop applications for mobile devices.',1),
    ('Software Testing and Quality Assurance', 70, 20, 'Ensure the quality of software through testing.',1),
    ('Advanced Algorithms', 95, 50, 'Explore complex algorithms and problem-solving.',2),
    ('Artificial Intelligence Fundamentals', 85, 15, 'Introduction to AI concepts.',2),
    ('Machine Learning Basics', 80, 25, 'Learn the basics of machine learning.',2),
    ('Deep Learning and Neural Networks', 90, 40, 'Dive into deep learning and neural networks.',2),
    ('Cybersecurity Essentials', 85, 20, 'Introduction to cybersecurity principles.',2),
    ('Ethical Hacking', 90, 40, 'Explore ethical hacking techniques.',3),
    ('Cloud Computing Technologies', 80, 15, 'Introduction to cloud computing.',3),
    ('DevOps Practices', 75, 25, 'Learn about development and operations collaboration.',3),
    ('Agile and Scrum Methodologies', 90, 10, 'Introduction to Agile and Scrum.',3),
    ('Software Project Management', 85, 30, 'Manage software projects effectively.',3),
    ('UI/UX Design Fundamentals', 80, 15, 'Introduction to user interface and user experience design.',4),
    ('Game Development Basics', 90, 20, 'Learn the basics of game development.',4),
    ('IoT and Embedded Systems', 85, 25, 'Introduction to the Internet of Things and embedded systems.',4),
    ('Blockchain Fundamentals', 75, 30, 'Explore the basics of blockchain technology.',4),
    ('Data Analysis with Python', 90, 20, 'Learn data analysis using Python.',4),
    ('Statistical Modeling', 85, 25, 'Introduction to statistical modeling.',4),
    ('Business Intelligence Fundamentals', 80, 30, 'Learn about business intelligence concepts.',4),
    ('Digital Marketing Strategies', 90, 15, 'Introduction to digital marketing.',4),
    ('Content Creation and Strategy', 75, 20, 'Learn about creating and strategizing content.',5),
    ('Financial Management for IT Professionals', 85, 25, 'Introduction to financial management in IT.',5),
    ('Leadership and Communication in Tech', 90, 30, 'Develop leadership and communication skills.',5),
    ('Emerging Technologies Exploration', 80, 10, 'Explore new and emerging tech trends.',5);
	 
go
--7
insert into department.intake
values
('R23-1','2023-7-6','2023-11-6',1),
('R23-1','2023-7-6','2023-11-6',2),
('R23-1','2023-7-6','2023-11-6',3),
('R23-1','2023-7-6','2023-11-6',4),
('R23-1','2023-7-6','2023-11-6',5),
('R23-1','2023-7-6','2023-11-6',1),
('R23-1','2023-7-6','2023-11-6',2),
('R23-1','2023-7-6','2023-11-6',3),
('R23-1','2023-7-6','2023-11-6',5),
('R23-1','2023-7-6','2023-11-6',4),
('R23-1','2023-7-6','2023-11-6',5),
('R23-1','2023-7-6','2023-11-6',3),
('R23-1','2023-7-6','2023-11-6',2),
('R23-1','2023-7-6','2023-11-6',1),
('R23-1','2023-7-6','2023-11-6',2),
('R23-1','2023-7-6','2023-11-6',2)--3
go
insert into department.track --2
values
('dotnet full stack',1),
('mern full stack',1),
('front end track',2),
('social media',2),
('ai',3),
('embedded system',3),
('cyber security',4),
('system administration',5)
go
go
insert into department.branch --1
values
('iti cairo',14),
('iti mansoura',13),
('iti assiut',12),
('iti alex',11),
('iti aswan',10)

go
--8
insert into exam.exam
values
('Introduction to Programming','exam',1,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-01'),
('Intermediate Programming Concepts','exam',2,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-02'),
('Object-Oriented Programming','exam',3,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-03'),
('Data Structures and Algorithms','exam',4,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-04'),
('Web Development Fundamentals','exam',5,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-05'),
('Database Design and Management','exam',6,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-07'),
('Mobile App Development','exam',7,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-08'),
('Software Testing and Quality Assurance','exam',8,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-09'),
('Advanced Algorithms','exam',9,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-10'),
('Artificial Intelligence Fundamentals','exam',10,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-13'),
('Machine Learning Basics','exam',11,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-14'),
('Cybersecurity Essentials','exam',12,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-15'),
('Ethical Hacking','exam',13,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-20'),
('Cloud Computing Technologies','exam',14,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-21'),
('DevOps Practices','exam',15,FORMAT (getdate(), '09:00:00'),FORMAT (getdate(), '12:00:00'),'2023-01-22')
go
insert into exam.question
values
('mcq',1,'Alan Kay','Who invented OOP?',1),
('mcq',1,'Duplicate/Redundant data','Which is not a feature of OOP in general definitions?',1),
('mcq',1,'SmallTalk','Which was the first purely object oriented programming language developed?',1),
('mcq',1,'1970’s','When OOP concept did first came into picture?',1),
('t/f',1,'TRUE','Inheritance feature of OOP indicates code reusability?',1),
('mcq',1,'OOP can be used without using any header file','Which header file is required in C++ to use OOP?',1),
('mcq',1,'It supports usual declaration of primitive data types','Why Java is Partially OOP language?',1),
('mcq',1,'Platform independent','Which among the following doesn’t come under OOP concept?',1),
('mcq',1,'class derived_classname : access base_classname{ /*define class body*/ };','Which is the correct syntax of inheritance?',1),
('mcq',1,'Copy an object so that it can be passed to a function','The copy constructors can be used to',1),
('mcq',1,'Message Passing','The feature by which one object can interact with another object is',1),
('mcq',1,'The language must follow all the rules of OOP','Which among the following for a pure OOP language is true?',1),
('mcq',1,'3','How many types of access specifiers are provided in OOP (C++)?',1),
('mcq',1,'Code reusability','In multilevel inheritance which is the most significant feature of OOP used?',1),
('mcq',1,'It is a way of combining various data members and member functions that operate on those data members into a single unit','What is encapsulation in OOP?',1),
('mcq',1,'Increases overhead of function definition always','Which of the following is not true about polymorphism?',1),
('mcq',1,'classname()','Which among the following represents correct constructor?',1),
('mcq',1,'Hiding the implementation and showing only the features','What is an abstraction in object-oriented programming?',1),
('t/f',1,'TRUE','Overloading << can show polymorphism?',1),
('t/f',1,'FALSE','In  Private access should a constructor be defined so that object of the class can be created in any function?',1),

('t/f',1,'TRUE','int x[] = new int[]{02030} <br><br>Arrays can also be created and initialize as in above statement.',2),
('t/f',1,'TRUE','In an instance method or a constructor "this" is a reference to the current object.	',2),
('t/f',1,'FALSE','Garbage Collection is manual process.',2),
('t/f',1,'TRUE','The JRE deletes objects when it determines that they are no longer being used. This process is called Garbage Collection.',2),
('t/f',1,'FALSE','Constructor overloading is not possible in Java.',2),
('t/f',1,'FALSE','Assignment operator is evaluated Left to Right.',2),
('t/f',1,'TRUE','All binary operators except for the assignment operators are evaluated from Left to Right',2),
('t/f',1,'FALSE','Java programming is not statically-typed means all variables should not first be declared before they can be used.',2),
('t/f',1,'TRUE','In Java SE 7 and later underscore characters "_" can appear anywhere between digits in a numerical literal',2),
('t/f',1,'TRUE','Variable name can begin with a letter "$" or "_".',2),
('mcq',1,'Floating-point value assigned to an integer type','What is Truncation in Java?',2),
('mcq',1,'Compile time polymorphism','Which of the following is a type of polymorphism in Java Programming?',2),
('mcq',1,'Floating-point value assigned to an integer type','What is Truncation in Java?',2),
('mcq',1,'.class','What is the extension of compiled java classes?',2),
('mcq',1,'OutOfMemoryError','Which exception is thrown when java is out of memory?',2),
('mcq',1,'if()','Which of these are selection statements in Java?',2),
('mcq',1,'interface','Which of these keywords is used to define interfaces in Java?',2),
('mcq',1,'Object class','Which of the following is a superclass of every class in Java?',2),
('mcq',1,'javlang','Which of these packages contains the exception Stack Overflow in Java?',2),
('mcq',1,'try','Which of these packages contains the exception Stack Overflow in Java?',2)
go
insert into exam.choices
values
(4,'Andrea Ferro'),
(4,'Adele Goldberg'),
(4,'Alan Kay'),
(4,'Dennis Ritchie'),

(5,'Efficient Code'),
(5,'Code reusability'),
(5,'Modularity'),
(5,'Duplicate/Redundant data'),

(6,'Kotlin'),
(6,'SmallTalk'),
(6,'Java'),
(6,'C++'),

(7,'1980’s'),
(7,'1995'),
(7,'1970’s'),
(7,'1993'),

(8,'FALSE'),
(8,'TRUE'),

(9,'OOP can be used without using any header file'),
(9,'stdlih'),
(9,'iostream.h'),
(9,'stdio.h'),

(10,'It allows code to be written outside classes'),
(10,'It supports usual declaration of primitive data types'),
(10,'It does not support pointers'),
(10,'It doesn’t support all types of inheritance'),

(11,'Data hiding'),
(11,'Message passing'),
(11,'Platform independent'),
(11,'Data binding'),

(12,'class base_classname :access derived_classname{ /*define class body*/ };'),
(12,'class derived_classname : access base_classname{ /*define class body*/ };'),
(12,'class derived_classname : base_classname{ /*define class body*/ };'),
(12,'class base_classname : derived_classname{ /*define class body*/ };'),

(13,'Copy an object so that it can be passed to another primitive type variable'),
(13,'Copy an object for type casting'),
(13,'Copy an object so that it can be passed to a function'),
(13,'Copy an object so that it can be passed to a class'),

(14,'Message reading'),
(14,'Message Passing'),
(14,'Data transfer'),
(14,'Data Binding'),

(15,'The language should follow at least 1 feature of OOP'),
(15,'The language must follow only 3 features of OOP'),
(15,'The language must follow all the rules of OOP'),
(15,'The language should follow 3 or more features of OOP'),

(16,'4'),
(16,'3'),
(16,'2'),
(16,'1'),

(17,'Code efficiency'),
(17,'Code readability'),
(17,'Flexibility'),
(17,'Code reusability'),

(18,'It is a way of combining various data members and member functions that operate on those data members into a single unit'),
(18,'It is a way of combining various data members and member functions into a single unit which can operate on any data'),
(18,'It is a way of combining various data members into a single unit'),
(18,'It is a way of combining various member functions into a single unit'),

(19,'Helps in redefining the same functionality'),
(19,'Increases overhead of function definition always'),
(19,'It is feature of OOP'),
(19,'Ease in readability of program'),

(20,'–classname()'),
(20,'classname()'),
(20,'()classname'),
(20,'~classname()'),

(21,'Hiding the implementation and showing only the features'),
(21,'Hiding the important data'),
(21,'Hiding the implementation'),
(21,'Showing the important data'),

(22,'FALSE'),
(22,'TRUE'),

(23,'FALSE'),
(23,'TRUE'),

(24,'TRUE'),
(24,'FALSE'),

(25,'TRUE'),
(25,'FALSE'),

(26,'TRUE'),
(26,'FALSE'),

(27,'TRUE'),
(27,'FALSE'),

(28,'TRUE'),
(28,'FALSE'),

(29,'TRUE'),
(29,'FALSE'),

(30,'TRUE'),
(30,'FALSE'),

(31,'TRUE'),
(31,'FALSE'),

(32,'TRUE'),
(32,'FALSE'),

(33,'TRUE'),
(33,'FALSE'),

(34,'Floating-point value assigned to a Floating type'),
(34,'Floating-point value assigned to an integer type'),
(34,'Integer value assigned to floating type'),
(34,'Integer value assigned to floating type'),

(35,'Multiple polymorphism'),
(35,'Compile time polymorphism'),
(35,'Multilevel polymorphism'),
(35,'Execution time polymorphism'),

(36,'Floating-point value assigned to a Floating type'),
(36,'Floating-point value assigned to an integer type'),
(36,'Integer value assigned to floating type'),
(36,'Integer value assigned to floating type'),

(37,'.txt'),
(37,'.js'),
(37,'.class'),
(37,'.java'),

(38,'MemoryError'),
(38,'OutOfMemoryError'),
(38,'MemoryOutOfBoundsException'),
(38,'MemoryFullException'),

(39,'break'),
(39,'continue'),
(39,'for()'),
(39,'if()'),

(40,'intf'),
(40,'Intf'),
(40,'interface'),
(40,'Interface'),

(41,'ArrayList'),
(41,'Abstract class'),
(41,'Object class'),
(41,'String'),

(42,'javio'),
(42,'javsystem'),
(42,'javlang'),
(42,'javutil'),

(43,'check'),
(43,'throw'),
(43,'catch'),
(43,'try')

go
insert into mtm.instructorWork
values 
(1,1),
(2,1),
(3,1),

(4,2),
(5,2),
(6,2),

(7,3),
(8,3),
(9,3),

(10,4),
(11,4),
(12,4),

(13,5),
(14,5),
(15,5)
go
insert into mtm.studentCourse
values
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),

(2,1),
(2,2),
(2,3),
(2,4),
(2,5),
(2,6),
(2,7),
(2,8),
(2,9),
(2,10),

(3,1),
(3,2),
(3,3),
(3,4),
(3,5),
(3,6),
(3,7),
(3,8),
(3,9),
(3,10),

(4,1),
(4,2),
(4,3),
(4,4),
(4,5),
(4,6),
(4,7),
(4,8),
(4,9),
(4,10),

(5,1),
(5,2),
(5,3),
(5,4),
(5,5),
(5,6),
(5,7),
(5,8),
(5,9),
(5,10),

(6,1),
(6,2),
(6,3),
(6,4),
(6,5),
(6,6),
(6,7),
(6,8),
(6,9),
(6,10),

(7,11),
(7,12),
(7,13),
(7,14),
(7,15),
(7,16),
(7,17),
(7,18),
(7,19),
(7,20),

(8,11),
(8,12),
(8,13),
(8,14),
(8,15),
(8,16),
(8,17),
(8,18),
(8,19),
(8,20),

(9,11),
(9,12),
(9,13),
(9,14),
(9,15),
(9,16),
(9,17),
(9,18),
(9,19),
(9,20),

(10,21),
(10,22),
(10,23),
(10,24),
(10,25),
(10,26),
(10,27),
(10,28),
(10,29),
(10,30),

(11,21),
(11,22),
(11,23),
(11,24),
(11,25),
(11,26),
(11,27),
(11,28),
(11,29),
(11,30),

(12,21),
(12,22),
(12,23),
(12,24),
(12,25),
(12,26),
(12,27),
(12,28),
(12,29),
(12,30),

(13,21),
(13,22),
(13,23),
(13,24),
(13,25),
(13,26),
(13,27),
(13,28),
(13,29),
(13,30),

(14,11),
(14,12),
(14,13),
(14,14),
(14,15),
(14,16),
(14,17),
(14,18),
(14,19),
(14,10),

(15,21),
(15,22),
(15,23),
(15,24),
(15,25),
(15,26),
(15,27),
(15,28),
(15,29),
(15,30)
go
insert into class
values 
('lab 1','2023-1-1'),
('lab 2','2023-1-1'),
('lab 3','2023-1-1'),
('lab 4','2023-1-1'),
('lab 5','2023-1-1'),
('lab 6','2023-1-1'),
('lab 7','2023-1-1'),

('lab 1','2022-1-1'),
('lab 2','2022-1-1'),
('lab 3','2022-1-1'),
('lab 4','2022-1-1'),
('lab 5','2022-1-1'),
('lab 6','2022-1-1'),
('lab 7','2022-1-1'),

('lab 1','2021-1-1'),
('lab 2','2021-1-1'),
('lab 3','2021-1-1'),
('lab 4','2021-1-1'),
('lab 5','2021-1-1'),
('lab 6','2021-1-1'),
('lab 7','2021-1-1')

go
insert into [mtm].[instructorClass]
values
(1,1),
(1,2),
(1,3),

(2,1),
(2,2),
(2,3),

(3,1),
(3,2),
(3,3),

(4,4),
(4,5),
(4,6),

(5,4),
(5,5),
(5,6),

(6,4),
(6,5),
(6,6),

(7,4),
(7,5),
(7,6),

(8,4),
(8,5),
(8,6)

go