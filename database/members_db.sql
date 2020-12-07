-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 01 2020 г., 13:12
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.9


CREATE USER IF NOT EXISTS 'MemberBook'@'localhost' IDENTIFIED BY 'the_password';
GRANT ALL PRIVILEGES ON *.* TO 'new_user'@'localhost';
FLUSH PRIVILEGES;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `members_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `adminLogin` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`adminID`, `adminLogin`, `password`) VALUES
(1, 'admin', 'pas$word');

-- --------------------------------------------------------

--
-- Структура таблицы `members`
--

CREATE TABLE `members` (
  `memberID` int(11) NOT NULL,
  `memberName` varchar(45) NOT NULL,
  `memberSurname` varchar(45) NOT NULL,
  `memberEmail` varchar(45) NOT NULL,
  `memberContent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `members`
--

INSERT INTO `members` (`memberID`, `memberName`, `memberSurname`, `memberEmail`, `memberContent`) VALUES
(1, 'Kukumbrek', 'Akakiy', 'akak@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec eros non turpis ultricies molestie nec vitae lorem. Nam et blandit neque, sed commodo tellus. Etiam rutrum ultricies urna, vel ullamcorper purus ullamcorper sed. Donec a ligula ornare, aliquet urna tempor, imperdiet dolor. Vivamus id aliquam nisi, id commodo augue. Vestibulum tellus nisi, feugiat non tortor eu, ullamcorper varius tortor'),
(2, 'Volodymyr', 'Zhydkykh', 'email@mail.ru', 'Aenean sit amet elit vel neque pharetra efficitur. Nulla viverra fermentum ante, at dictum lacus posuere eget. Fusce urna est, congue vel hendrerit a, auctor ac ligula. Nam pellentesque metus nec turpis dictum, non mattis massa volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse ut nunc in lacus congue dignissim. Morbi suscipit semper imperdiet. Pellentesque placerat vel tellus et tincidunt. Vivamus tincidunt, risus quis efficitur finibus, purus eros consequat diam, et varius nisi libero in sem.'),
(3, 'Kukumbrek', 'Ukukumbryk', 'kukujob@kiou.kmjnh', 'Proin facilisis enim a justo sollicitudin, eu lacinia nulla pharetra. Etiam sed posuere ex. Pellentesque porttitor ut ipsum in hendrerit. Nunc imperdiet mauris eu tellus euismod dictum. Phasellus finibus purus nisi, non faucibus neque fringilla vel. Vivamus posuere mauris id tortor tempor consectetur. Donec dictum dui eget orci facilisis viverra. Nulla gravida venenatis odio eu tristique. Sed lacinia tempor sem, non porttitor orci ultricies sit amet. Mauris rhoncus aliquet nulla, sed interdum est ornare vel. In hac habitasse platea dictumst. Mauris dapibus sagittis ornare. Donec viverra at lacus in faucibus.'),
(4, 'Anna', 'Mazur', 'amazur232873729999@mail.com', 'In hac habitasse platea dictumst. Cras fringilla orci at lacus ultricies, malesuada porttitor felis pulvinar. Etiam eu ligula hendrerit, venenatis dui ac, aliquet nibh. Aliquam vel nisl sit amet nisl accumsan maximus. Vivamus nec blandit tortor. Donec maximus augue non ante hendrerit imperdiet. Suspendisse gravida sed elit id hendrerit.'),
(5, 'Kekich', 'Martynowski', 'sobaka@małpka.ue', 'Mauris viverra orci est, at ultricies nisi porttitor id. Vestibulum libero enim, mollis ut tellus non, finibus molestie felis. Mauris quis tristique lectus. Nulla at quam neque. Maecenas porta iaculis lobortis. Praesent scelerisque orci at neque convallis porta. Sed dolor tortor, fermentum in auctor id, condimentum vel lacus. Donec efficitur justo non quam lacinia semper. Etiam neque ligula, viverra vitae tincidunt sagittis, bibendum ac risus. Maecenas vel lacinia mi. Morbi viverra dui quis lorem molestie fermentum.'),
(6, 'Krya', 'Maladec', 'hfdskl@lol.plov', 'Ut accumsan vulputate mattis. Etiam vitae mauris sagittis, placerat lacus ac, laoreet risus. Praesent pharetra lacinia hendrerit. Aenean faucibus sapien in aliquam semper. Morbi purus nulla, volutpat nec iaculis quis, vulputate vel lectus. Curabitur pretium dictum enim vel rutrum. Proin malesuada nunc tellus, et accumsan lacus facilisis eu. Ut sit amet massa tellus. Sed pellentesque sagittis neque, ut faucibus lectus vestibulum eu. Fusce ornare, quam a maximus blandit, risus nisi bibendum neque, sed tempus odio sapien vitae metus. Suspendisse vitae magna at risus lobortis ultrices vitae a leo. Morbi non commodo risus, et sagittis lorem.'),
(7, 'asd', 'asda', 'vivonio.loh@gmail.com', 'dasd'),
(8, 'Vladyslav', 'Savok', 'savok_konch@mail.ru', 'asdgfhsjyhdgfjlksanl;fodhqwspoifdughqa;oudhsfuigsdfpouihasoihfydgs'),
(9, 'anna', 'sadas', 'zhydkykhv@gmail.com', 'asdasdas');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Индексы таблицы `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `members`
--
ALTER TABLE `members`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
