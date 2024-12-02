USE [CSC312-CISTeamProject];



insert into CollegeCodes (collegeCode, collegeName) values
('CLA', 'College of Liberal Arts and Sciences'),
('EGR', 'The School of Engineering'),
('BUS', 'The Stetson-Hatcher School of Business'),
('EDU', 'Tift College of Education'),
('MUS', 'Townsend School of Music'),
('CHP', 'College of Health Professions')
;



insert into Courses (courseID, courseName, courseDescription, department, collegeCode, creditHours) values
('CSC 125', 'Introduction to Computing', 'An introduction to computer systems with emphasis on the central processing unit, memory units, input and output devices, data communications, operating systems, computer software, programming concepts, and the impact of computers on society. Students will learn to use popular software packages for applications such as word processing, spreadsheets, and database systems.', 'CS', 'CLA', 3),
('CSC 148', 'Introduction to Data Science', 'An introduction to the basic concepts and foundational tools and skills needed by data scientists for managing, analyzing, and visualizing data. The course will provide students with experience in properly applying these tools and skills to data gathered from various sources.', 'CS', 'CLA', 4),
('CSC 198', 'Special Introductory Topics in Computer Science: (Subtitle)', 'Study of an introductory topic in Computer Science not covered in any of the departmental offerings. May be repeated with different topics; does not count toward the Computer Science major or minor.', 'CS', 'CLA', 3),
('CSC 204', 'Programming I', 'Students will gain an understanding of computer science foundations by learning how to program in a modern object-oriented language. Topics include structured and object-oriented programming, basic syntax and semantics, simple data types, control structures, classes, arrays, graphics, and secure computing principles. Students will be introduced to the formal logical and mathematical processes behind algorithm construction and learn how to use computers to test and debug algorithms of their own design.', 'CS', 'CLA', 4),
('CSC 205', 'Programming II', 'A continuation of CSC 204 with an emphasis on advanced object-oriented principles. Topics include inheritance, polymorphism, graphical user interfaces, multi-threaded and event-driven programming, recursion, and simple data structures (lists, stacks, queues, and binary search trees).', 'CS', 'CLA', 4),
('CSC 212', 'Programming Team Strategies', 'This course allows students to practice and discuss skills needed to be successful in computer programming team competitions. May be repeated for a maximum of 3 hours of credit. Graded S/U.', 'CS', 'CLA', 1),
('CSC 245', 'Data Structures and Algorithm Analysis', 'A rigorous study of the implementation of different data structures, and an analysis of the time and space complexity of their associated algorithms. Topics will include dynamic memory, trees, hashing, heaps, sorting, graphs, and data encryption.', 'CS', 'CLA', 3),
('CSC 285', 'Topics in Computer Science: (Subtitle)', 'Students must engage in projects or assignments requiring at least one contact hour, or equivalent, per week for every hour of credit. May be repeated with different topics.', 'CS', 'CLA', 1),
('CSC 295', 'Introduction to Research', 'An opportunity for students to be introduced to the research process and to explore independent computer science research. One hour of credit will be awarded for three hours per week per semester of satisfactory participation. A maximum of three credits can be earned per semester. May be repeated for a maximum of 6 hours of credit. Graded S/U.', 'CS', 'CLA', 1),
('CSC 303', 'Topics in Computational and Data Science: (Subtitle)', 'Students will engage in projects and assignments related to modeling and computation within one or more scientific disciplines. The course emphasizes the use of existing tools, but some programming may be required. Students must engage in projects or assignments requiring at least one contact hour, or equivalent, per week for every hour of credit. May be repeated with different topics.', 'CS', 'CLA', 1),
('CSC 308', 'Applied Data Science', 'This course focuses on advanced data science methods and tools. Techniques for data preparation, modeling, and exploration to uncover trends and relationships in large data sets will be demonstrated through real-world scientific and business scenarios. Methods to most effectively visualize and present the results for dissemination will also be covered.', 'CS', 'CLA', 3),
('CSC 310', 'File Structures and Advanced Algorithms', 'A study of the different data structures and algorithms that are appropriate for the placement and organization of data on secondary storage. Topics will include indexing, external sorting, B-trees, extendible hashing, and basic paradigms for the design and analysis of efficient algorithms.', 'CS', 'CLA', 3),
('CSC 312', 'Database Systems', 'A study of both logical and physical organization of computer database systems, including DBMS languages, architecture, and interfaces, data modeling, integrity, and security. Emphasis will be placed on relational models, languages, and systems.', 'CS', 'CLA', 3),
('CSC 315', 'Introduction to Computer Graphics', 'A survey of the basic hardware components and the software techniques used in the discipline of computer graphics. Topics to be covered will include two and three-dimensional geometry, matrix representations of transformations, clipping, perspective, stereoscopic views, viewing in three dimensions, and device interaction. Visual realism and animation using color, shading, lighting, and texturing will also be introduced. Each student will be required to complete a project utilizing a graphics workstation.', 'CS', 'CLA', 3),
('CSC 322', 'Computer Organization and Assembly Language', 'Designed to provide an introduction to fundamental concepts of the organization and operation of a computer and to the study of assembly language programming. Included will be the study of register sets, symbolic addresses, addressing techniques, parameter-passing techniques, and data representation.', 'CS', 'CLA', 3),
('CSC 323', 'Computer Organization and Logic Design', 'An introduction to the basic organization of a digital computer. Topics will include basic logic design at the circuit level, data coding and representations, functions of large-scale components of a computer system, and the mechanics of information transfer and control within a digital system. Students are introduced to practical design, breadboarding, and testing of digital circuits in the Hardware Laboratory.', 'CS', 'CLA', 4),
('CSC 325', 'Application Development and Deployment', 'An introduction to industry standard software development tools and practices. Integrated development environments, collaboration systems, continuous deployment mechanisms, and automated testing tools will be explored. Projects will be required which allow students to demonstrate competent use of software development fundamentals.', 'CS', 'CLA', 3),
('CSC 330', 'Organization of Programming Languages', 'A study of the concepts and issues underlying the design and implementation of programming languages. Topics considered will be the objects of computation, grammars, ambiguity, control structures, scope and typing of variables, block-structured languages, precedence, recursion, and input/output facilities. Examples will be drawn from a high-level language.', 'CS', 'CLA', 3),
('CSC 335', 'Numerical Methods', 'A study of numerical methods for the solution of mathematical problems and computer application of those methods. Topics will include methods such as the bisection algorithm and fixed point iteration for the solution of equations with a single variable, interpolation and polynomial approximation, numerical differentiation and integration, solution of systems of linear equations, and least squares approximation.', 'CS', 'CLA', 3),
('CSC 340', 'Introduction to the Theory of Computing', 'Fundamentals of computing theory are developed on an intuitive level. Topics studied include finite automata, context-free grammars, Turing machines, and recursive functions. The notion of undecidable or non-computable problems based on the Turing machine model is discussed briefly.', 'CS', 'CLA', 3),
('CSC 360', 'Theory of Data Communications', 'Consideration of the design of communication line characteristics, modems, synchronous and asynchronous line protocols, error detection and correction schemes including polynomial codes, basic multiplexing, and concentration.', 'CS', 'CLA', 3),
('CSC 380', 'Artificial Intelligence', 'An introduction to the problem domains of artificial intelligence and to the principles and techniques used to design systems that acquire knowledge and demonstrate intelligent responses. Particular areas studied include deterministic and heuristic search techniques appropriate for large problem spaces, formal methods of knowledge representation and logical reasoning, natural language understanding, and neural nets.', 'CS', 'CLA', 3),
('CSC 398', 'Internship in Computer Science', 'An intensive practicum experience at an approved business, organization, or academic institution. Students, under the direction of a faculty member and an on-site supervisor, must engage in projects or assignments requiring at least three on-site hours per week for every hour of credit. Students will learn through observation, regular discussions with the on-site supervisor and Mercer faculty member, and written reflection. In addition, students may be required to attend training events, workshops or weekly seminars. May be repeated for a total of 9 hours of credit. Graded S/U.', 'CS', 'CLA', 1),
('CSC 399', 'Independent Study', 'Independent Study is an opportunity for students to pursue an in-depth study of a particular topic in computer science that has not been covered in the curriculum. Topics will be chosen in consultation with a faculty member who will direct the student�s work. The course may be repeated for credit.', 'CS', 'CLA', 1),

('MAT 095', 'Intermediate Algebra', 'An introductory course in algebra including fundamental algebraic operations, factoring, algebraic fractions, equations and inequalities, exponents, and radicals. Credit does not count toward graduation.', 'MAT', 'CLA', 3),
('MAT 104', 'Mathematical Ideas', 'An introduction to mathematical ideas including classical proofs, real-world applications such as probability and risk, and abstractions such as infinite sets and graph theory.', 'MAT', 'CLA', 3),
('MAT 131', 'College Algebra: Functions and Graphs', 'Study of graphs and functions, including linear, quadratic, polynomial, rational, exponential, and logarithmic functions.', 'MAT', 'CLA', 3),
('MAT 133', 'Precalculus', 'Study of graphs and functions, including trigonometric and inverse trigonometric functions, and trigonometric identities.', 'MAT', 'CLA', 4),
('MAT 141', 'Calculus for the Social Sciences', 'Introduction to derivatives and integration of algebraic, exponential, and logarithmic functions with business applications.', 'MAT', 'CLA', 3),
('MAT 191', 'Calculus I', 'Topics include limits, continuity, derivatives, antiderivatives, definite integrals, and the Fundamental Theorem of Calculus.', 'MAT', 'CLA', 4),
('MAT 192', 'Calculus II', 'Covers numerical integration, techniques of antidifferentiation, improper integrals, infinite series, differential equations, and polar coordinates.', 'MAT', 'CLA', 4),
('MAT 293', 'Multivariable Calculus', 'Study of vector calculus, partial derivatives, limits and continuity of functions of several variables, and multiple integrals with applications.', 'MAT', 'CLA', 3),
('MAT 225', 'Discrete Mathematics', 'Introduction to discrete mathematics covering sets, functions, Boolean algebra, graph theory, counting techniques, and methods of proof.', 'MAT', 'CLA', 4),
('MAT 260', 'Introduction to Abstract Mathematics', 'Designed to transition students into theorem-proving courses, covering sets, logic, relations, and number systems.', 'MAT', 'CLA', 3),
('MAT 340', 'Linear Algebra', 'Introduction to vector spaces, matrices, systems of linear equations, and linear transformations.', 'MAT', 'CLA', 3),
('MAT 330', 'Introduction to Differential Equations', 'Study of ordinary differential equations with qualitative, numerical, and analytic approaches. Includes Laplace transforms and applications.', 'MAT', 'CLA', 3),
('MAT 320', 'Probability and Mathematical Statistics', 'Covers probability distributions, independence, sampling distributions, and limiting distributions.', 'MAT', 'CLA', 3),
('MAT 461', 'Abstract Algebra I', 'Study of groups, rings, and fields, including homomorphisms, quotient structures, and polynomial rings.', 'MAT', 'CLA', 3),
('MAT 462', 'Abstract Algebra II', 'Continuation of MAT 461, focusing on advanced topics in groups, rings, and fields.', 'MAT', 'CLA', 3),
('MAT 481', 'Real Analysis I', 'Rigorous study of real numbers, continuity, differentiability, integrability, and topology.', 'MAT', 'CLA', 3),
('MAT 482', 'Real Analysis II', 'Continuation of MAT 481, delving deeper into the analysis of real numbers and associated mathematical properties.', 'MAT', 'CLA', 3),
('MAT 499', 'Senior Seminar in Mathematics', 'A capstone course designed to help students synthesize their mathematics education and deliver mathematical presentations.', 'MAT', 'CLA', 1),

('STA 126', 'Introductory Statistics', 'Introductory statistics including the collection of data, descriptive statistics, probability, and inference. Topics include sampling methods, experiments, numerical and graphical descriptive methods, correlation and regression, contingency tables, probability concepts and distributions, confidence intervals, and hypothesis testing for means and proportions', 'STA', 'CLA', 3),
('STA 310', 'Computational Statistics', 'An introduction to statistical computing. The course will cover basic statistical programming: plotting graphics, data structures and manipulation, data visualization, simulation studies and Monte Carlo methods, and resampling methods such as the bootstrap. Students will learn how to use popular packages and techniques at the forefront of statistical computing.', 'STA', 'CLA', 3)
;



insert into Prerequisites (courseID, prereqCourseID, prereqDescription) values
('CSC 204', NULL, 'MAT 095 or placement in MAT 133 or higher'),
('CSC 205', 'CSC 204', NULL),
('CSC 212', NULL, 'competence in a programming language'),
('CSC 245', 'CSC 205', NULL),
('CSC 245', 'MAT 141', NULL),
('CSC 245', 'MAT 191', NULL),
('CSC 285', NULL, 'consent of instructor'),
('CSC 295', NULL, 'Permission of instructor'),
('CSC 303', NULL, 'to be determined by the instructor'),
('CSC 308', 'CSC 148', NULL),
('CSC 308', 'STA 310', NULL),
('CSC 310', 'CSC 245', NULL),
('CSC 312', 'CSC 245', NULL),
('CSC 315', 'CSC 205', NULL),
('CSC 322', 'CSC 204', NULL),
('CSC 323', 'CSC 204', NULL),
('CSC 325', 'CSC 245', NULL),
('CSC 330', 'CSC 245', NULL),
('CSC 335', NULL, 'MAT 192 and ability to write programs in a high-level computer language'),
('CSC 340', NULL, 'MAT 225; the ability to write programs in a high-level computer language'),
('CSC 360', 'CSC 205', NULL),
('CSC 380', 'CSC 245', NULL),
('CSC 380', 'MAT 225', NULL),
('CSC 398', NULL, 'to be determined by the instructor'),
('CSC 399', NULL, 'by permission of instructor'),

('MAT 131', 'MAT 095', 'MAT 095 or a specific score on the Math Index or Math Placement Test'),
('MAT 133', 'MAT 095', 'MAT 095 or a specific score on the Math Index or Math Placement Test'),
('MAT 141', 'MAT 131', 'MAT 131 or a specific score on the Math Index or Math Placement Test'),
('MAT 141', 'MAT 133', 'MAT 133 or a specific score on the Math Index or Math Placement Test'),
('MAT 191', 'MAT 133', 'MAT 133 or a specific score on the Math Index or Math Placement Test'),
('MAT 192', 'MAT 191', 'MAT 191 or consent of instructor'),
('MAT 225', 'MAT 191', NULL),
('MAT 260', 'MAT 192', NULL),
('MAT 340', 'MAT 225', 'MAT 225 or consent of instructor'),
('MAT 340', 'MAT 260', 'MAT 260 or consent of instructor'),
('MAT 330', 'MAT 192', NULL),
('MAT 320', 'MAT 192', NULL),
('MAT 461', 'MAT 340', NULL),
('MAT 462', 'MAT 461', NULL),
('MAT 481', 'MAT 293', NULL),
('MAT 482', 'MAT 481', NULL),

('STA 310', 'STA 126', NULL)
;



insert into Instructors (lastName, firstName, department, office, phoneNum, email) values
('Allen'     , 'Bob'         , 'CS' , 'WSC 232'  , '2817' , 'ALLEN_R@mercer.edu'),
('Digh'      , 'Andy'        , 'CS' , 'WSC 221'  , '2816' , 'DIGH_AD@mercer.edu'),
('Cozart'    , 'David'       , 'CS' , 'WSC 220'  , '4087' , 'COZART_DL@mercer.edu'),
('Kaur'      , 'Mehakpreet'  , 'CS' , 'WSC 224'  , '2819' , 'KAUR_M@mercer.edu'),
('Malik'     , 'Adeel'       , 'CS' , 'WSC 223'  , '2306' , 'MALIK_AA@mercer.edu'),
('Pounds'    , 'Andrew'      , 'CS' , 'WSC 231'  , '5627' , 'POUNDS_AJ@mercer.edu'),
('Yerby'     , 'Johnathan'   , 'CS' , 'WSC 228'  , '2601' , 'YERBY_JM@mercer.edu'),
('Zhao'      , 'Martin'      , 'CS' , 'WSC 224'  , '2452' , 'ZHAO_MQ@mercer.edu')
;



insert into Students (MUID4, lastName, firstName, state, major, minor) values
('5883' , 'Cutchens'   , 'Kyle'     , 'GA' , 'IST'       , 'MAT'),
('3571' , 'Bassett'    , 'Liam'     , 'GA' , 'IST'       , NULL),
('0205' , 'Donnelly'   , 'Alex'     , 'GA' , 'TCO & IST' , NULL),
('0506' , 'Elton'      , 'Sandy'    , 'GA' , 'IST'       , NULL),
('7085' , 'Garcia'     , 'Alvaro'   , 'NY' , 'CS & IST'  , NULL),
('7246' , 'Mandani'    , 'Tazeena'  , 'GA' , 'FIN'       , 'SPN'),
('1273' , 'Mathis'     , 'Chris'    , 'GA' , 'IST'       , 'CSC'),
('3767' , 'Mitchell'   , 'Daniel'   , 'GA' , 'IST'       , 'CSC'),
('8018' , 'Mohan'      , 'Anu'      , 'GA' , 'IST'       , NULL),
('9522' , 'Neal-Tysor' , 'Amoria'   , 'NC' , 'IST'       , 'COM'),
('6096' , 'Pulliam'    , 'Jeremiah' , 'AL' , 'TCO & IST' , NULL),
('8962' , 'Rangan'     , 'Anish'    , 'GA' , 'FIN & IST' , NULL),
('8715' , 'Stuckey'    , 'Willow'   , 'GA' , 'IST'       , 'STA'),
('6301' , 'Guest'      , 'Davis'    , 'GA' , 'CS'        , 'MAT')
;



insert into Enrollments (MUID4, courseID, instructorID, section, semester, classroom) values
('6301', 'CSC 312', 8, 1, 'Fall24', 'WSC 212')
;



select * from [Courses];
select * from [Instructors];
select * from [Students];
select * from [Enrollments];
select * from [CollegeCodes];
select * from [Prerequisites];