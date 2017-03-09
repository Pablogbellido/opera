-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-03-2017 a las 22:47:58
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `opera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `idautor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `lugar_nacimiento` varchar(45) NOT NULL,
  `fecha_defuncion` date DEFAULT NULL,
  `lugar_defuncion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`idautor`, `nombre`, `fecha_nacimiento`, `lugar_nacimiento`, `fecha_defuncion`, `lugar_defuncion`) VALUES
(1, 'Giuseppe Verdi', '1813-10-10', 'Busseto', '1901-01-27', 'Milan'),
(2, 'George Bizet', '1838-10-25', 'Paris', '1875-06-27', 'Bougival'),
(3, 'Gaetano Donizetti', '1797-11-29', 'Bergamo', '1848-04-08', 'Bergamo'),
(4, 'W. Amadeus Mozart', '1756-01-27', 'Salzburgo', '1791-12-05', 'Viena'),
(5, 'Giacomo Puccini', '1858-12-22', 'Lucca', '1924-11-29', 'Bruselas'),
(6, 'Ludwig van Beethoven', '1770-12-16', 'Bonn', '1827-03-26', 'Viena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opera`
--

CREATE TABLE `opera` (
  `idopera` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha_estreno` date NOT NULL,
  `lugar_estreno` varchar(45) NOT NULL,
  `idioma` enum('I','F','A') DEFAULT NULL,
  `sinopsis` text,
  `autor_idautor` int(11) DEFAULT NULL,
  `video` varchar(200) NOT NULL,
  `votos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opera`
--

INSERT INTO `opera` (`idopera`, `nombre`, `fecha_estreno`, `lugar_estreno`, `idioma`, `sinopsis`, `autor_idautor`, `video`, `votos`) VALUES
(1, 'Carmen', '1875-03-03', 'Paris', 'F', 'Con argumento extraído de la novela homónima de Prosper Mérimée, es probablemente la más famosa de todas las óperas francesas. Los críticos del estreno estaban impresionados por la mezcla que hizo Bizet del Romanticismo y el realismo. Opéra-comique que en sus inicios no tuvo el éxito que fue adquiriendo en el siglo XX para convertirse en una de las más representadas.', 2, '<iframe width="560" height="315" src="//www.youtube.com/embed/nAzM2D2YxdY" frameborder="0" allowfullscreen></iframe>', 0),
(2, 'El elixir de amor', '1832-05-12', 'Milan', 'I', 'Esta obra fue la ópera interpretada más a menudo en Italia entre 1838 y 1848 y no ha desaparecido en ningún momento del repertorio. A principios del siglo XX fue adoptada por Enrico Caruso como título de éxito seguro y poco esfuerzo, motivo por el que duplicó su prestigio.', 3, '<iframe width="420" height="315" src="//www.youtube.com/embed/LGy_w6hCL7E" frameborder="0" allowfullscreen></iframe>', 0),
(3, 'Don Giovanni', '1787-10-29', 'Praga', 'I', 'La segunda con libreto de Da Ponte, Don Giovanni ha supuesto desde entonces un rompecabezas para escritores y filósofos sobre su composición. Fue la única ópera de Mozart que se representó con cierta regularidad durante el sigli XIX.', 4, '<iframe width="560" height="315" src="//www.youtube.com/embed/Viz4D8A4zU8" frameborder="0" allowfullscreen></iframe>', 0),
(4, 'La flauta mágica', '1791-09-30', 'Viena', 'A', 'Llegándose a describir como "la apoteosis del Singspiel", fue denigrada durante el siglo XIX por su confusión y falta de definición. No se convirtió en ópera de culto hasta la segunda mitad del siglo XX.', 4, '<iframe width="420" height="315" src="//www.youtube.com/embed/rxGy83aipbY" frameborder="0" allowfullscreen></iframe>', 0),
(5, 'Aida', '1871-12-24', 'El Cairo', 'I', 'Encargada por el gobernador de Egipto para la inauguración del canal de Suez, Verdi se inspiró en la grand''opéra francesa. Su gran dramatismo y excitante música le otorgó un éxito inmediato y en diez años se representó a 155 teatros diferentes en todo el mundo.', 1, '<iframe width="560" height="315" src="//www.youtube.com/embed/jJIYRRdsQEg" frameborder="0" allowfullscreen></iframe>', 0),
(6, 'Nabucco', '1842-03-09', 'Milan', 'I', 'Verdi describió esta ópera como el verdadero comienzo de su carrera artística. Recibió este encargo tras varios fracasos y después de la muerte sucesiva de sus dos hijos y de su esposa. Con esta ópera y su coro Va pensiero, Verdi se convirtió en el símbolo del Risorgimiento italiano.', 1, '<iframe width="420" height="315" src="//www.youtube.com/embed/DzdDf9hKfJw" frameborder="0" allowfullscreen></iframe>', 0),
(7, 'Madame Butterfly', '1904-02-17', 'Milan', 'I', 'Puccini investiga la música popular y la cultura japonesa para darle autenticidad a la obra. Aunque contiene motivos japoneses, la música sigue siendo italiana. Él mismo la definió como una de sus óperas más profundas e imaginativas.', 5, '<iframe width="560" height="315" src="//www.youtube.com/embed/oYtCS7attW0" frameborder="0" allowfullscreen></iframe>', 0),
(8, 'Rigoletto', '1851-03-11', 'Venecia', 'I', '﻿La primera -y más innovadora- de las tres óperas de Verdi del periodo intermedio y que se ha convertido en indispensable del repertorio. Basada en la comedia El rey se divierte de Victor Hugo. Después de un periodo no reeixit desde Luisa Miller, Verdi entra en la madurez con un drama de pasión, engaño, amor filial y venganza con una figura central, Rigoletto, un bufón cheperudo de la corte del ducado de Mantua. Es muy conocida el aria La donna è mobile.', 1, '<iframe width="560" height="315" src="//www.youtube.com/embed/Hc1dFDY3NKo" frameborder="0" allowfullscreen></iframe>', 0),
(9, 'La traviata', '1853-03-06', 'Venecia', 'I', 'Basada en la narración de La dame aux camélias de Alejandro Dumas, marcó el cenit de los éxitos de Verdi en la segunda parte de su carrera. Pocas óperas han tenido tanta difusión como esta. La escena del brindis es de las más conocidas de este género.', 1, '<iframe width="420" height="315" src="//www.youtube.com/embed/exNrK6jJUlo" frameborder="0" allowfullscreen></iframe>', 0),
(10, 'Don Pasquale', '1843-01-03', 'Paris', 'I', '﻿La obra maestra cómica de Donizetti, una de las últimas grandes opere buffe. La escribió como una pieza de época para contentar a un público distante con las nuevas tendencias. Es de las pocas óperas de Donizetti que siempre se han representado.', 3, '<iframe width="420" height="315" src="//www.youtube.com/embed/P1u28o1jisc" frameborder="0" allowfullscreen></iframe>', 0),
(11, 'Tosca', '1900-01-14', 'Roma', 'I', 'Tosca es la más wagneriana de las óperas de Puccini con un empleo frecuente del leitmotiv. Es una de sus óperas más famosas: un drama febril de amor, celos y muerte. La partitura, guiada por el temperamento feroz de Tosca, está llena de inquietantes arias y dúos.', 5, '<iframe width="420" height="315" src="//www.youtube.com/embed/hxdiJ74AL5Y" frameborder="0" allowfullscreen></iframe>', 0),
(12, 'Macbeth', '1847-03-14', 'Florencia', 'I', 'El primer Shakespeare de Verdi. Como tantos otros compositores románticos, Verdi admiraba a Shakespeare y llegó a componer tres óperas basadas en sus obras teatrales.', 1, '<iframe width="420" height="315" src="//www.youtube.com/embed/hWo8CAFv8YQ" frameborder="0" allowfullscreen></iframe>', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idautor`);

--
-- Indices de la tabla `opera`
--
ALTER TABLE `opera`
  ADD PRIMARY KEY (`idopera`),
  ADD KEY `fk_opera_autor1_idx` (`autor_idautor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `opera`
--
ALTER TABLE `opera`
  MODIFY `idopera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
