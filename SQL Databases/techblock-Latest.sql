-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 04:04 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techblock`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cId` int(11) NOT NULL,
  `cName` varchar(50) DEFAULT NULL,
  `cDescription` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cId`, `cName`, `cDescription`) VALUES
(1, 'Java', 'Java is a powerful general-purpose programming language. It is used to develop desktop and mobile applications, big data processing, embedded systems, and so on. According to Oracle, the company that owns Java, Java runs on 3 billion devices worldwide, which makes Java one of the most popular programming languages.\r\n\r\n'),
(2, 'Python', 'Python is a powerful general-purpose programming language. It is used in web development, data science, creating software prototypes, and so on. Fortunately for beginners, Python has simple easy-to-uPython is a powerful general-purpose programming language. It is used in web development, data science, creating software prototypes, and so on. Fortunately for beginners, Python has simple easy-to-use syntax. This makes Python an excellent language to learn to program for beginners.\r\n\r\n'),
(3, 'CPP', 'CPP is the base of Programming Language. We can design games using CPC++ is a powerful general-purpose programming language. It can be used to develop operating systems, browsers, games, and so on. C++ supports different ways of programming like procedural, object-oriented, functional, and so on. This makes C++ powerful as well as flexible.\r\n\r\n'),
(4, 'Web Developement', 'Web development broadly refers to the tasks associated with developing websites for hosting via intranet or internet. The web development process includes web design, web content development, client-side/server-side scripting and network security configuration, among other tasks.');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `pid` int(11) NOT NULL,
  `pTitle` varchar(150) NOT NULL,
  `pContent` longtext NOT NULL,
  `pCode` longtext DEFAULT NULL,
  `pPic` varchar(100) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `Tags` varchar(200) DEFAULT NULL,
  `pDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `catId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pid`, `pTitle`, `pContent`, `pCode`, `pPic`, `AuthorId`, `Tags`, `pDate`, `catId`) VALUES
(13, 'Hello World Program in Java', 'In this page, we will learn how to write the simple program of java. We can write a simple hello java program easily after installing the JDK.\r\n\r\nTo create a simple java program, you need to create a class that contains the main method. Let\'s understand the requirement first.\r\n\r\nThe requirement for Java Hello World Example\r\nFor executing any java program, you need to\r\nInstall the JDK if you don\'t have installed it, download the JDK and install it.\r\nSet path of the jdk/bin directory. http://www.javatpoint.com/how-to-set-path-in-java\r\nCreate the java program\r\nCompile and run the java program', 'class Simple{  \r\n    public static void main(String args[]){  \r\n     System.out.println(\"Hello Java\");  \r\n    }  \r\n} ', 'hello.png', 5, 'Hello world, java', '2020-06-11 13:00:34', 1),
(14, 'If else Statements in Java', 'Very often when you write code, you want to perform different actions for different decisions.\r\n\r\nYou can use conditional statements in your code to do this.\r\n\r\nIn JavaScript we have the following conditional statements:\r\n\r\nUse if to specify a block of code to be executed, if a specified condition is true\r\nUse else to specify a block of code to be executed, if the same condition is false\r\nUse else if to specify a new condition to test, if the first condition is false\r\nUse switch to specify many alternative blocks of code to be executed', 'public class IfExample {  \r\npublic static void main(String[] args) {  \r\n    //defining an \'age\' variable  \r\n    int age=20;  \r\n    //checking the age  \r\n    if(age>18){  \r\n        System.out.print(\"Age is greater than 18\");  \r\n    }  \r\n}  \r\n}  ', 'ifelse.png', 5, 'if else, ifelse, java', '2020-06-11 13:02:26', 1),
(15, 'Arrays in Java', 'Normally, an array is a collection of similar type of elements which has contiguous memory location.\r\n\r\nJava array is an object which contains elements of a similar data type. Additionally, The elements of an array are stored in a contiguous memory location. It is a data structure where we store similar elements. We can store only a fixed set of elements in a Java array.\r\n\r\nArray in Java is index-based, the first element of the array is stored at the 0th index, 2nd element is stored on 1st index and so on.\r\n\r\n\r\nUnlike C/C++, we can get the length of the array using the length member. In C/C++, we need to use the sizeof operator.\r\n\r\nIn Java, array is an object of a dynamically generated class. Java array inherits the Object class, and implements the Serializable as well as Cloneable interfaces. We can store primitive values or objects in an array in Java. Like C/C++, we can also create single dimentional or multidimentional arrays in Java.\r\n\r\nMoreover, Java provides the feature of anonymous arrays which is not available in C/C++.', 'class Testarray{  \r\npublic static void main(String args[]){  \r\nint a[]=new int[5];//declaration and instantiation  \r\na[0]=10;//initialization  \r\na[1]=20;  \r\na[2]=70;  \r\na[3]=40;  \r\na[4]=50;  \r\n//traversing array  \r\nfor(int i=0;i<a.length;i++)//length is the property of array  \r\nSystem.out.println(a[i]);  \r\n}} \r\n\r\nOutput - \r\n10\r\n20\r\n70\r\n40\r\n50', 'Arrays.png', 5, 'Arrays, java', '2020-06-11 13:05:43', 1),
(16, 'What is a method or functions in java?', 'In general, a method is a way to perform some task. Similarly, the method in Java is a collection of instructions that performs a specific task. It provides the reusability of code. We can also easily modify code using methods. In this section, we will learn what is a method in Java, types of methods, method declaration, and how to call a method in Java.\r\n\r\nWhat is a method in Java?\r\nA method is a block of code or collection of statements or a set of code grouped together to perform a certain task or operation. It is used to achieve the reusability of code. We write a method once and use it many times. We do not require to write code again and again. It also provides the easy modification and readability of code, just by adding or removing a chunk of code. The method is executed only when we call or invoke it.\r\n\r\nThe most important method in Java is the main() method. If you want to read more about the main() method, go through the link https://www.javatpoint.com/java-main-method.', '', 'methods.png', 5, 'Methods, functions, java', '2020-06-11 13:10:23', 1),
(17, 'What are variables in Java?', 'A variable is a container which holds the value while the Java program is executed. A variable is assigned with a data type.\r\n\r\nVariable is a name of memory location. There are three types of variables in java: local, instance and static.\r\n\r\nThere are two types of data types in Java: primitive and non-primitive.\r\n\r\n\r\nVariable\r\nVariable is name of reserved area allocated in memory. In other words, it is a name of memory location. It is a combination of \"vary + able\" that means its value can be changed.', '', 'variables.jpeg', 5, 'variables, java', '2020-06-11 13:12:51', 1),
(18, 'What is HTML?', 'HTML stands for Hypertext Markup Language. It allows the user to create and structure sections, paragraphs, headings, links, and blockquotes for web pages and applications.\r\n\r\nHTML is not a programming language, meaning it doesnÃ?Â¢??t have the ability to create dynamic functionality. Instead, it makes it possible to organize and format documents, similarly to Microsoft Word.\r\n\r\nWhen working with HTML, we use simple code structures (tags and attributes) to mark up a website page. Example in Code section.', 'we can create a paragraph by placing the enclosed text within a starting p and closing p tag.', 'html.jpg', 5, 'html, web developement', '2020-06-11 13:58:55', 4),
(19, 'History of HTML', 'HTML was invented by Tim Berners-Lee, a physicist at the CERN research institute in Switzerland. He came up with the idea of an Internet-based hypertext system.\r\n\r\nHypertext means a text that contains references (links) to other texts that viewers can access immediately. He published the first version of HTML in 1991, consisting of 18 HTML tags. Since then, each new version of the HTML language came with new tags and attributes (tag modifiers) to the markup.\r\n\r\nAccording to Mozilla Developer NetworkÃ¢??s HTML Element Reference, currently, there are 140 HTML tags, although some of them are already obsolete (not supported by modern browsers).\r\n\r\nDue to a quick rise in popularity, HTML is now considered an official web standard. The HTML specifications are maintained and developed by the World Wide Web Consortium (W3C). You can check out the latest state of the language anytime on W3CÃ¢??s website.\r\n\r\nThe biggest upgrade of the language was the introduction of HTML5 in 2014.', '', 'html.png', 5, 'html, web developement, history', '2020-06-11 13:57:31', 4),
(20, 'History of Python', 'Python was developed by Guido van Rossum in the late eighties and early nineties at the National Research Institute for Mathematics and Computer Science in the Netherlands.\r\n\r\nPython is derived from many other languages, including ABC, Modula-3, C, C++, Algol-68, SmallTalk, and Unix shell and other scripting languages.\r\n\r\nPython is copyrighted. Like Perl, Python source code is now available under the GNU General Public License (GPL).\r\n\r\nPython is now maintained by a core development team at the institute, although Guido van Rossum still holds a vital role in directing its progress.', '', 'python.png', 5, 'python, history of python', '2020-06-11 14:01:46', 2),
(21, 'History of CPP', 'History of C++ language is interesting to know. Here we are going to discuss brief history of C++ language.\r\n\r\nC++ programming language was developed in 1980 by Bjarne Stroustrup at bell laboratories of AT&T (American Telephone & Telegraph), located in U.S.A.\r\n\r\nBjarne Stroustrup is known as the founder of C++ language.\r\n\r\nIt was develop for adding a feature of OOP (Object Oriented Programming) in C without significantly changing the C component.\r\n\r\nC++ programming is \"relative\" (called a superset) of C, it means any valid C program is also a valid C++ program.', '', 'cpp.jpg', 5, 'history of cpp, cpp', '2020-06-11 14:02:54', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `User_PW` varchar(50) NOT NULL,
  `About` varchar(500) DEFAULT NULL,
  `Reg_Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Profile` varchar(100) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Username`, `Email`, `User_PW`, `About`, `Reg_Date`, `Profile`) VALUES
(1, 'Sports', 'S4Sony', 'Sony@pi.in', 'qwerty', 'Beginner programmer', '2020-06-02 12:04:20', 'default.png'),
(3, 'Crux', 'Crux', 'crux@mi.in', 'null', 'Pro Programmer', '2020-06-02 12:06:04', 'default.png'),
(5, 'Prince', 'R4Rohan', 'rohan@gmail.in', 'qwerty', 'I love to do programming! I have a good hand on Java, and Flutter! Talking about my non-technical skills I am good at Digital Marketing.', '2020-06-11 13:36:27', 'default.png'),
(6, 'test', 'test', 'test@gmail.in', '1234', 'this is a test message.', '2020-06-03 13:34:12', 'default.png'),
(7, 'Spade', 'Spade', 'spade@gmail.in', 'qwerty', 'Noob in everythin', '2020-06-05 08:29:51', 'default.png'),
(8, 'Mohit', 'Mohit', 'jnkjsnk@gmail.com', 'qwerty', 'DImag tej h', '2020-06-07 05:34:12', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `catId` (`catId`),
  ADD KEY `AuthorId` (`AuthorId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `categories` (`cId`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`AuthorId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
