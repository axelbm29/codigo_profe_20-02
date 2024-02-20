-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 20-02-2024 a las 16:29:39
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `prueba`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `privilegios`
-- 

CREATE TABLE `privilegios` (
  `idPrivilegio` int(11) NOT NULL auto_increment,
  `labelPrivilegio` varchar(50) NOT NULL,
  `pathPrivilegio` varchar(250) NOT NULL,
  `nombrePrivilegio` varchar(50) NOT NULL,
  PRIMARY KEY  (`idPrivilegio`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `privilegios`
-- 

INSERT INTO `privilegios` VALUES (1, 'emitir proforma', '../moduloVentas/indexEmitirProforma.php', 'emitirProf');
INSERT INTO `privilegios` VALUES (2, 'emitir boleta', '../moduloVentas/indexEmitirBoleta.php', 'emitirBol');
INSERT INTO `privilegios` VALUES (3, 'registrar despacho', '../moduloVentas/indexRegDesp.php', 'registrarDespacho');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `estado` int(11) NOT NULL,
  `preguntaSecreta` varchar(50) NOT NULL,
  `respuestaSecreta` varchar(50) NOT NULL,
  PRIMARY KEY  (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 

INSERT INTO `usuarios` VALUES ('gato', '12345', 1, 'como se llama tu mama', 'gata');
INSERT INTO `usuarios` VALUES ('perro', '98765', 1, 'como se llama tu mascota', 'gato');
INSERT INTO `usuarios` VALUES ('rata', '2468', 0, 'mi comida favorita', 'queso');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuariosprivilegios`
-- 

CREATE TABLE `usuariosprivilegios` (
  `login` varchar(20) NOT NULL,
  `idPrivilegio` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `usuariosprivilegios`
-- 

INSERT INTO `usuariosprivilegios` VALUES ('gato', 1);
INSERT INTO `usuariosprivilegios` VALUES ('gato', 2);
INSERT INTO `usuariosprivilegios` VALUES ('gato', 3);
INSERT INTO `usuariosprivilegios` VALUES ('perro', 2);
INSERT INTO `usuariosprivilegios` VALUES ('perro', 1);
INSERT INTO `usuariosprivilegios` VALUES ('rata', 2);
