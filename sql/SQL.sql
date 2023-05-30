-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2017 a las 20:44:23
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shareiv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `Uid_rank` int(11) NOT NULL,
  `name` varchar(11) DEFAULT NULL,
  `user_ID` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `permission_users` tinyint(1) DEFAULT NULL,
  `permission_chats` tinyint(1) DEFAULT NULL,
  `permission_login` tinyint(1) DEFAULT NULL,
  `permission_settings` tinyint(1) DEFAULT NULL,
  `permission_u_edit` tinyint(1) DEFAULT NULL,
  `permission_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`Uid_rank`, `name`, `user_ID`, `rank`, `permission_users`, `permission_chats`, `permission_login`, `permission_settings`, `permission_u_edit`, `permission_admin`) VALUES
(1, 'Admin', 1, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_browser_graphics`
--

CREATE TABLE `admin_browser_graphics` (
  `Browser` varchar(25) NOT NULL,
  `Access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_device_graphics`
--

CREATE TABLE `admin_device_graphics` (
  `Device` varchar(25) NOT NULL,
  `Access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_graphics`
--

CREATE TABLE `admin_graphics` (
  `graphicsID` int(11) NOT NULL,
  `look` date NOT NULL,
  `Visits` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `chat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin_graphics`
--

INSERT INTO `admin_graphics` (`graphicsID`, `look`, `Visits`, `click`, `user`, `chat`) VALUES
(1, '2017-10-18', 1, 90, 1, 0),
(2, '2017-10-19', 2, 721, 0, 0),
(3, '2017-10-22', 3, 681, 0, 0),
(4, '2017-10-23', 1, 103, 0, 0),
(5, '2017-10-24', 1, 16, 0, 0),
(6, '2017-10-25', 1, 11, 0, 0),
(7, '2017-10-28', 2, 27, 0, 0),
(8, '2017-11-08', 4, 489, 1, 0),
(9, '2017-11-10', 3, 93, 0, 0),
(10, '2017-11-12', 1, 48, 0, 0),
(11, '2017-11-13', 1, 10, 0, 0),
(12, '2017-11-14', 0, 21, 0, 0),
(13, '2017-11-15', 2, 7060, 1, 0),
(14, '2017-11-16', 1, 30, 0, 0),
(15, '2017-11-19', 1, 20, 0, 0),
(16, '2017-11-20', 0, 29, 0, 0),
(17, '2017-11-21', 1, 32, 0, 0),
(18, '2017-11-22', 3, 1863, 0, 0),
(19, '2017-11-23', 3, 39, 0, 0),
(20, '2017-11-24', 1, 106, 0, 0),
(21, '2017-11-25', 149, 202, 0, 0),
(22, '2017-11-26', 238, 1015, 0, 0),
(23, '2017-11-27', 153, 1488, 0, 0),
(24, '2017-11-28', 46, 143, 0, 0),
(25, '2017-11-29', 1, 43, 0, 0),
(26, '2017-11-30', 38, 512, 0, 0),
(27, '2017-12-01', 69, 469, 0, 0),
(28, '2017-12-02', 2, 245, 0, 0),
(29, '2017-12-03', 1, 37, 0, 1),
(30, '2017-12-04', 1, 30, 0, 0),
(31, '2017-12-06', 2, 480, 0, 0),
(32, '2017-12-08', 1, 30, 0, 0),
(33, '2017-12-09', 2, 277, 0, 0),
(34, '2017-12-10', 2, 187, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_graphics_countries`
--

CREATE TABLE `admin_graphics_countries` (
  `Countries` varchar(255) NOT NULL,
  `Results` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_graphic_visits_month`
--

CREATE TABLE `admin_graphic_visits_month` (
  `sessionIP` char(255) NOT NULL,
  `time` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_settings`
--

CREATE TABLE `admin_settings` (
  `Web_Site` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Footer_Info` varchar(120) NOT NULL,
  `Administrator` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Header` varchar(10000) NOT NULL,
  `Footer` text NOT NULL,
  `language` varchar(120) NOT NULL,
  `Ads_One` varchar(255) NOT NULL,
  `Ads_Two` text NOT NULL,
  `Auth_Key` varchar(255) NOT NULL,
  `Captcha` tinyint(1) NOT NULL,
  `Public_Key` varchar(255) NOT NULL,
  `Private_Key` varchar(255) NOT NULL,
  `Advertising_Probability` varchar(255) NOT NULL,
  `User_Registration` tinyint(1) NOT NULL,
  `User_Password` tinyint(1) NOT NULL,
  `Can_Vip` tinyint(1) NOT NULL,
  `Can_Day` tinyint(1) NOT NULL,
  `Can_Seconds` tinyint(1) NOT NULL,
  `Can_Audio` tinyint(1) NOT NULL,
  `Can_Images` tinyint(1) NOT NULL,
  `Can_Emojis` tinyint(1) NOT NULL,
  `Can_Urls` tinyint(1) NOT NULL,
  `Can_Embed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin_settings`
--

INSERT INTO `admin_settings` (`Web_Site`, `Name`, `Description`, `Footer_Info`, `Administrator`, `Password`, `Email`, `Header`, `Footer`, `language`, `Ads_One`, `Ads_Two`, `Auth_Key`, `Captcha`, `Public_Key`, `Private_Key`, `Advertising_Probability`, `User_Registration`, `User_Password`, `Can_Vip`, `Can_Day`, `Can_Seconds`, `Can_Audio`, `Can_Images`, `Can_Emojis`, `Can_Urls`, `Can_Embed`) VALUES
('', 'chatone ', '- online', 'Developed by ChatOne 2016 - like', 'Admin', '123', 'CHUYD23@GMAIL.com', '<meta charset=\"UTF-8\">\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n\r\n	<link rel=\"icon\" href=\"img/favicon.png\">\r\n	\r\n	<link rel=\"stylesheet\" href=\"css/reset.css\">\r\n	\r\n	<link rel=\"stylesheet\" href=\"css/main.css\">\r\n\r\n        <link rel=\"stylesheet\" href=\"css/css_user.css\">\r\n	\r\n	<link rel=\"stylesheet\" href=\"css/main_m.css\">\r\n	\r\n	<script type=\"text/javascript\" src=\"js/jquery.js\"></script>\r\n	<!-- jquery html2canvas -->\r\n	<script type=\"text/javascript\" src=\"js/html2canvas.js\"></script>\r\n	<!-- jquery Functions -->\r\n	<script src=\"js/Functions.js\"></script>\r\n	<!-- jquery ajax -->\r\n	<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js\"></script>\r\n	<!-- bootstrap Latest compiled and minified CSS -->\r\n 	<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\r\n	', '       <script src=\"js/shareplus.js\"></script>\r\n        <script src=\"js/Functions_footer.js\"></script>\r\n	<!-- jquery UI -->\r\n	<script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>\r\n', 'en', '<img src=\"img/publi.png\" style=\"width: 300px;height: 239px;\">', '<img src=\"https://i.imgur.com/KYoMcsO.png\">', 'b396954eeb2d1d9ed7902b8bae237b287f21ad9e', 0, '6LfHZCgUAAAAAAbcjY_R8KzQP8CwBob85oDbtjqy', '6LfHZCgUAAAAAM73Avf7TGhrcmTGcrUSBl2Vkc8d', '', 1, 1, 0, 0, 1, 0, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `mensaje` varchar(1000) NOT NULL,
  `hashtag` varchar(100) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `tipo` varchar(11) NOT NULL,
  `post` int(11) NOT NULL,
  `pads` int(11) NOT NULL,
  `ads` int(11) NOT NULL,
  `time` varchar(100) DEFAULT NULL,
  `media` varchar(100) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`id`, `mensaje`, `hashtag`, `userID`, `nombre`, `tipo`, `post`, `pads`, `ads`, `time`, `media`, `link`) VALUES
(1, 'Hello :D', '', 1, 'Admin', '0', 1, 0, 0, '1512247945', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_online`
--

CREATE TABLE `chat_online` (
  `session` char(255) NOT NULL,
  `time` int(11) NOT NULL,
  `chat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chat_online`
--

INSERT INTO `chat_online` (`session`, `time`, `chat`) VALUES
('ooihgcr520k3c6o8hec44kiakc', 1512697219, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_report`
--

CREATE TABLE `chat_report` (
  `reportID` int(11) NOT NULL,
  `chat` int(11) NOT NULL,
  `Commentary` text NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favourite`
--

CREATE TABLE `favourite` (
  `fav_id` int(11) NOT NULL,
  `fav_user` int(11) DEFAULT NULL,
  `fav_chat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `favourite`
--

INSERT INTO `favourite` (`fav_id`, `fav_user`, `fav_chat`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feed`
--

CREATE TABLE `feed` (
  `pasteID` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `feed`
--

INSERT INTO `feed` (`pasteID`, `user_id`, `name`, `body`, `address`, `media`, `type`) VALUES
(1, 14, 'porno', 'efwfefw', 46, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `friends`
--

CREATE TABLE `friends` (
  `friend_ID` int(11) NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `friends`
--

INSERT INTO `friends` (`friend_ID`, `user_one`, `user_two`) VALUES
(1, 1, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `friends_request`
--

CREATE TABLE `friends_request` (
  `friend_id` int(11) NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `No_friendship` int(11) NOT NULL,
  `Pending` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `friends_request`
--

INSERT INTO `friends_request` (`friend_id`, `user_one`, `user_two`, `No_friendship`, `Pending`) VALUES
(1, 35, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `messagesID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `for_user` varchar(120) NOT NULL,
  `messages` varchar(120) DEFAULT NULL,
  `post_chat_id` int(11) DEFAULT NULL,
  `viewed` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages_open`
--

CREATE TABLE `messages_open` (
  `user_one` int(11) DEFAULT NULL,
  `user_two` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `messages_open`
--

INSERT INTO `messages_open` (`user_one`, `user_two`) VALUES
(1, 1),
(35, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages_private`
--

CREATE TABLE `messages_private` (
  `messagesID` int(11) NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `message` text,
  `media` varchar(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `link` varchar(11) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `viewed` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification`
--

CREATE TABLE `notification` (
  `notificationID` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `user` int(11) NOT NULL,
  `group_id_fk` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `viewed` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paste`
--

CREATE TABLE `paste` (
  `pasteID` int(11) NOT NULL,
  `embedID` varchar(120) DEFAULT NULL,
  `pass` varchar(170) DEFAULT NULL,
  `Titulo` varchar(350) DEFAULT NULL,
  `Description` text,
  `seconds` varchar(11) DEFAULT NULL,
  `images` tinyint(1) DEFAULT NULL,
  `Emoticons` tinyint(1) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Time` int(11) DEFAULT NULL,
  `reported` tinyint(1) NOT NULL,
  `Mesrep` text,
  `Repute` tinyint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paste`
--

INSERT INTO `paste` (`pasteID`, `embedID`, `pass`, `Titulo`, `Description`, `seconds`, `images`, `Emoticons`, `views`, `user_id`, `Time`, `reported`, `Mesrep`, `Repute`) VALUES
(1, '19352670814', '', 'Welcome to ChatOne :DÃƒÂŒ  Ã†Â©xy  Ã¤Â¸Â­Ã¦Â–Â‡', 'ChatOne 1.5 script', '1000', 0, 0, 2, 1, 1503010040, 0, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trending`
--

CREATE TABLE `trending` (
  `id` int(11) NOT NULL,
  `hashtag` varchar(100) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `post` int(11) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `user` varchar(170) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `Wall` varchar(10000) NOT NULL,
  `website` varchar(1000) DEFAULT NULL,
  `mail` varchar(170) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `vipdate` varchar(25) DEFAULT NULL,
  `vip` tinyint(1) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `online` varchar(11) DEFAULT NULL,
  `time` varchar(25) DEFAULT NULL,
  `language` varchar(120) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `day` varchar(11) DEFAULT NULL,
  `month` varchar(11) DEFAULT NULL,
  `year` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userID`, `user`, `pass`, `Wall`, `website`, `mail`, `name`, `sex`, `vipdate`, `vip`, `banned`, `verified`, `image`, `online`, `time`, `language`, `country`, `day`, `month`, `year`) VALUES
(1, 'Admin', 'c62672c961ec63233d96e0fc9332f026', 'hack hola efwejife feiwfiejwff aewgnarejgireg re gaigiareg are garegirejagjoiejrgnergaer\r\ngaergaer8agoijroijreg\r\negrajrogjiaejirjgearguhrughahierhgiuaneirgnoaegaerg\r\ngaehrguhauhrghiaehguiaergnoanergea rgaer\r\naergaergee\r\ngraegaerhuiaeg', 'zhare.com', 'CHUYD23@GMAIL.com', 'chuy mu&ntilde;oz  mu&ntilde;oz', '', '', 0, 0, 0, 'Admin.png', 'yes', '1503010040', 'en', 'Estados Unidos', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_online`
--

CREATE TABLE `user_online` (
  `session` char(255) NOT NULL,
  `time` varchar(11) NOT NULL,
  `user` varchar(11) NOT NULL,
  `chat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_online`
--

INSERT INTO `user_online` (`session`, `time`, `user`, `chat`) VALUES
('ooihgcr520k3c6o8hec44kiakc', '1512697385', '1', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voucher`
--

CREATE TABLE `voucher` (
  `voucherID` int(11) NOT NULL,
  `voucher` varchar(32) DEFAULT NULL,
  `days` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Uid_rank`);

--
-- Indices de la tabla `admin_graphics`
--
ALTER TABLE `admin_graphics`
  ADD PRIMARY KEY (`graphicsID`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat_report`
--
ALTER TABLE `chat_report`
  ADD PRIMARY KEY (`reportID`);

--
-- Indices de la tabla `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indices de la tabla `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`pasteID`);

--
-- Indices de la tabla `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`friend_ID`);

--
-- Indices de la tabla `friends_request`
--
ALTER TABLE `friends_request`
  ADD PRIMARY KEY (`friend_id`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messagesID`);

--
-- Indices de la tabla `messages_private`
--
ALTER TABLE `messages_private`
  ADD PRIMARY KEY (`messagesID`);

--
-- Indices de la tabla `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notificationID`);

--
-- Indices de la tabla `paste`
--
ALTER TABLE `paste`
  ADD PRIMARY KEY (`pasteID`);

--
-- Indices de la tabla `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indices de la tabla `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`voucherID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `Uid_rank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `admin_graphics`
--
ALTER TABLE `admin_graphics`
  MODIFY `graphicsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;
--
-- AUTO_INCREMENT de la tabla `chat_report`
--
ALTER TABLE `chat_report`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `favourite`
--
ALTER TABLE `favourite`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `feed`
--
ALTER TABLE `feed`
  MODIFY `pasteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `friends`
--
ALTER TABLE `friends`
  MODIFY `friend_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `friends_request`
--
ALTER TABLE `friends_request`
  MODIFY `friend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `messagesID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `messages_private`
--
ALTER TABLE `messages_private`
  MODIFY `messagesID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `notification`
--
ALTER TABLE `notification`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `paste`
--
ALTER TABLE `paste`
  MODIFY `pasteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `trending`
--
ALTER TABLE `trending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
