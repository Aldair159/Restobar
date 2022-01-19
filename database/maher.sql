-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2022 a las 05:27:17
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `maher`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(2, 1, 'abcd', 100, 4, 400),
(3, 8, 'abcd', 30, 1, 30),
(4, 2, 'abcd', 100, 3, 300),
(5, 6, 'abcd', 30, 3, 90),
(6, 11, 'admin', 30, 2, 60),
(7, 4, 'abcd', 40, 2, 80),
(8, 4, 'abcd', 40, 1, 40),
(9, 34, 'abcd', 1, 3, 3),
(10, 13, 'abcd', 30, 1, 30),
(11, 35, 'abcd', 50, 1, 50),
(12, 35, 'abcd', 50, 4, 200),
(13, 35, 'abcd', 50, 4, 200),
(15, 35, 'Aldair', 50, 1, 50),
(18, 36, 'Aldair', 522, 2, 1044),
(20, 41, 'Victor', 15, 1, 15),
(21, 35, 'Victor', 50, 2, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('aldi', 'aldi'),
('ander', 'ander'),
('nilkanth', 'nilkanth');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(99, 41, 'Victor', 'Victor', 910851147, 'prueba5@gmail.com', 'dentro de 10 a 15 minutos estare en su local.'),
(100, 35, 'Victor', 'Victor', 910851147, 'prueba5@gmail.com', 'dentro de 10 a 15 minutos estare en su local.'),
(101, 41, 'Victor', 'Victor', 910851147, 'prueba5@gmail.com', 'dentro de 10 a 15 minutos estare en su local.'),
(102, 35, 'Victor', 'Victor', 910851147, 'prueba5@gmail.com', 'dentro de 10 a 15 minutos estare en su local.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(57, 'rajsthani', 'alcohol'),
(58, 'kathiyawadi', 'amburguesas'),
(59, 'kathiyawadi', 'Alitas Broaster'),
(60, 'rise', 'concet'),
(61, 'rise', 'coctel'),
(62, 'tava', 'mix'),
(63, 'kathiyawadi', 'broaster');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(3, 'img/5c7515fc03eded3e20e78a6f_1551177212604.jpg'),
(5, 'img/the-gujarati-thali-served.jpg'),
(6, 'img/the-gujarati-thali-served.jpg'),
(7, 'img/images.jpg'),
(8, 'img/thali.jpg'),
(9, 'img/chines.jpg'),
(10, 'img/abc.jpg'),
(11, 'img/alitas.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(35, 'kathiyawadi', '', 'Alitas', 'Alitas super picantes', 50, 'mimg/alitas.png'),
(36, 'kathiyawadi', 'Maher Special', 'friturass', 'dfasd', 522, 'mimg/alitas.png'),
(37, 'rise', 'Vagharela Bhat', 'asd', 'asd', 21, 'mimg/2.png'),
(38, 'rise', 'Kadhi-Khichadi', 'sdf', 'sdf', 54, 'mimg/2.png'),
(39, 'rajsthani', 'Butter Milk', 'gfd', 'dfg', 54, 'mimg/2.png'),
(40, 'kathiyawadi', 'amburguesas', 'sdf', 'sdfdsf', 36, 'mimg/istockphoto-1188412964-612x612.jpg'),
(41, 'tava', 'mix', 'comida rápida y bebida', 'sandwichd con un baso de cerveza', 15, 'mimg/descarga.jpg'),
(42, 'rise', 'coctel', 'Between the sheets', 'cóctel que consiste en ron blanco, coñac, triple sec y jugo de limón. Cuando se hace con ginebra, en lugar de ron y coñac, se llama \"oración de la doncella\".', 65, 'mimg/Between-the-sheets.png'),
(43, 'rise', 'coctel', 'Between the sheets', ' \"oración de la doncella\"', 65, 'mimg/Between-the-sheets.png'),
(44, 'kathiyawadi', 'broaster', 'broaster', 'pollo frito con papas gritas', 14, 'mimg/descarga (1).jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(1, 'abcd', 'xyz', 'abc@yahoo.com'),
(2, 'aa', 'bb', 'cc@y.com'),
(3, 'nilkanth', 'nilkanth', 'aaabb@y.com'),
(4, 'abcd', 'ppp', 'abc@yahoo.com'),
(5, 'abcd', 'asdf', 'abc@yahoo.com'),
(6, 'Aldair', 'qwer', 'chaguaita@gmail.com'),
(7, 'Aldair', 'qwer', 'chaguaita@gmail.com'),
(8, 'Aldair', 'qwer', 'chaguaita@gmail.com'),
(9, 'Andy', 'qwe', 'Ccyerroresx@outlook.com'),
(10, 'Anderson', 'chagua', 'prueba1@gmail.com'),
(11, 'jose', 'serrano', 'prueba2@gmail.com'),
(12, 'atencia', 'Gauaman', 'prueba3@gmail.com'),
(13, 'Miguel', 'medrano', 'prueba4@gmail.com'),
(14, 'Victor', 'Villazante', 'prueba5@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(5, 'Milan vagh', 'Exellent', 'best hotel oh gujarat'),
(16, 'perez', 'Good', 'Estubo listo al momento de llegar 10/10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indices de la tabla `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
