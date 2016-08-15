-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-08-2016 a las 07:25:56
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sirhem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acuerdos`
--

CREATE TABLE IF NOT EXISTS `acuerdos` (
  `IDACUERDO` int(11) NOT NULL,
  `IDTIPOACUERDO` int(11) DEFAULT NULL,
  `NUMACUERDO` int(11) DEFAULT NULL,
  `FOLIOACUERDO` int(11) DEFAULT NULL,
  `DETALLEACUERDO` varchar(300) DEFAULT NULL,
  `SECRETARIO` varchar(80) DEFAULT NULL,
  `FECHAACUERDO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capacitacion`
--

CREATE TABLE IF NOT EXISTS `capacitacion` (
  `IDCAPACITACION` int(11) NOT NULL,
  `IDTIPOINVITACI` int(11) DEFAULT NULL,
  `IDEXPEDIENTE` int(11) DEFAULT NULL,
  `NOMBRECAPACITACION` varchar(150) DEFAULT NULL,
  `FECHINICCAPACITA` date DEFAULT NULL,
  `FECHFINCAPACITA` date DEFAULT NULL,
  `HORA_INIC_CAPACITA` time DEFAULT NULL,
  `HORA_FIN_CAPACITA` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE IF NOT EXISTS `cargo` (
  `IDCARGO` int(11) NOT NULL,
  `IDTIPOCARGO` int(11) DEFAULT NULL,
  `NOMBRECARGO` varchar(60) DEFAULT NULL,
  `DETALLCARGO` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE IF NOT EXISTS `contrato` (
  `IDCONTRATO` int(11) NOT NULL,
  `IDCARGO` int(11) DEFAULT NULL,
  `IDTIPOCONTRATO` int(11) DEFAULT NULL,
  `NUMCONTRATO` int(11) DEFAULT NULL,
  `FECINICCONTRATO` date DEFAULT NULL,
  `FECFINCONTRATO` date DEFAULT NULL,
  `DETALLCONTRATO` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `IDDEPARTAMENTO` int(11) NOT NULL,
  `NOMBREDEPARTAMENTO` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE IF NOT EXISTS `documento` (
  `IDDOCUMENTO` int(11) NOT NULL,
  `IDTIPODOCUMENTO` int(11) DEFAULT NULL,
  `IDEXPEDIENTE` int(11) DEFAULT NULL,
  `FECHADOCUMENTO` datetime DEFAULT NULL,
  `DETALLDOCUMENTO` varchar(200) DEFAULT NULL,
  `RUTADOCUMENTO` varchar(200) DEFAULT NULL,
  `METADATOS` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expediente`
--

CREATE TABLE IF NOT EXISTS `expediente` (
  `IDEXPEDIENTE` int(11) NOT NULL,
  `IDMUNICIPIO` int(11) DEFAULT NULL,
  `IDUNIDADFOUES` int(11) DEFAULT NULL,
  `IDTIPOEMPLEADO` int(11) DEFAULT NULL,
  `CODIGOEXPEDIENTE` varchar(100) DEFAULT NULL,
  `PRIMERNOMBRE` varchar(30) DEFAULT NULL,
  `SEGUNDNOMBRE` varchar(30) DEFAULT NULL,
  `PRIMERAPELLIDO` varchar(30) DEFAULT NULL,
  `SEGUNDAPELLIDO` varchar(30) DEFAULT NULL,
  `GENERO` int(11) DEFAULT NULL,
  `CIP` varchar(50) DEFAULT NULL,
  `ISSS` varchar(50) DEFAULT NULL,
  `INPEP` varchar(50) DEFAULT NULL,
  `NIT` varchar(25) DEFAULT NULL,
  `NUP` varchar(25) DEFAULT NULL,
  `DUI` varchar(25) DEFAULT NULL,
  `PENSION` varchar(25) DEFAULT NULL,
  `HORAS` int(11) DEFAULT NULL,
  `MINGRACIA` int(11) DEFAULT NULL,
  `CODIGOMARCADOR` int(11) DEFAULT NULL,
  `EMPLEA_PRESTACION` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedi_acuerdos`
--

CREATE TABLE IF NOT EXISTS `expedi_acuerdos` (
  `IDACUERDO` int(11) NOT NULL,
  `IDEXPEDIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedi_contrato`
--

CREATE TABLE IF NOT EXISTS `expedi_contrato` (
  `IDCONTRATO` int(11) NOT NULL,
  `IDEXPEDIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `histmarcacion`
--

CREATE TABLE IF NOT EXISTS `histmarcacion` (
  `IDHISTMARCACION` int(11) NOT NULL,
  `IDEXPEDIENTE` int(11) DEFAULT NULL,
  `FECHAMARCACION` date DEFAULT NULL,
  `INHORAMARCACION` time DEFAULT NULL,
  `OUTHORAMARCACION` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcmanual`
--

CREATE TABLE IF NOT EXISTS `marcmanual` (
  `IDMARCMANUAL` int(11) NOT NULL,
  `IDEXPEDIENTE` int(11) DEFAULT NULL,
  `EXP_IDEXPEDIENTE` int(11) DEFAULT NULL,
  `FECHMARCMANUAL` date DEFAULT NULL,
  `INHORAMANUAL` time DEFAULT NULL,
  `OUTHORAMANUAL` time DEFAULT NULL,
  `OBSMARCMANUAL` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `IDMENU` int(11) NOT NULL,
  `NOMBREMENU` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
  `IDMUNICIPIO` int(11) NOT NULL,
  `IDDEPARTAMENTO` int(11) DEFAULT NULL,
  `NOMBREMUNICIPIO` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
  `ID_PERMISO` int(11) NOT NULL,
  `ID_TIPO_PERMISO` int(11) DEFAULT NULL,
  `ID_EXPEDIENTE` int(11) DEFAULT NULL,
  `ID_JEFE_AUTORIZA_PERMISO` int(11) DEFAULT NULL,
  `MOTIVO_PERMISO` varchar(500) DEFAULT NULL,
  `FEC_INIC_PERMISO` date DEFAULT NULL,
  `FEC_FIN_PERMISO` date DEFAULT NULL,
  `HORAS_PERMISO` int(11) DEFAULT NULL,
  `MINUTOS_PERMISO` int(11) DEFAULT NULL,
  `SEGUNDOS_PERMISO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `IDROL` int(11) NOT NULL,
  `NOMBREROL` varchar(25) DEFAULT NULL,
  `DESCRIROL` varchar(120) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`IDROL`, `NOMBREROL`, `DESCRIROL`) VALUES
(1, 'Administrador', 'Administrador del Sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `IDSUBMENU` int(11) NOT NULL,
  `IDMENU` int(11) DEFAULT NULL,
  `NOMBRESUBMENU` varchar(40) DEFAULT NULL,
  `ORDEN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoacuerdo`
--

CREATE TABLE IF NOT EXISTS `tipoacuerdo` (
  `IDTIPOACUERDO` int(11) NOT NULL,
  `TIPOACUERDO` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocargo`
--

CREATE TABLE IF NOT EXISTS `tipocargo` (
  `IDTIPOCARGO` int(11) NOT NULL,
  `TIPOCARGO` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocontrato`
--

CREATE TABLE IF NOT EXISTS `tipocontrato` (
  `IDTIPOCONTRATO` int(11) NOT NULL,
  `TIPOCONTRATO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE IF NOT EXISTS `tipodocumento` (
  `IDTIPODOCUMENTO` int(11) NOT NULL,
  `TIPODOCUMENTO` varchar(80) DEFAULT NULL,
  `DESCRIPTIPO` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoempleado`
--

CREATE TABLE IF NOT EXISTS `tipoempleado` (
  `IDTIPOEMPLEADO` int(11) NOT NULL,
  `TIPOEMPLEADO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoinvitacion`
--

CREATE TABLE IF NOT EXISTS `tipoinvitacion` (
  `IDTIPOINVITACI` int(11) NOT NULL,
  `TIPOINVITACION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopermiso`
--

CREATE TABLE IF NOT EXISTS `tipopermiso` (
  `IDTIPOPERMISO` int(11) NOT NULL,
  `NOMTIPOPERMISO` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadfoues`
--

CREATE TABLE IF NOT EXISTS `unidadfoues` (
  `IDUNIDADFOUES` int(11) NOT NULL,
  `NOMBREUNIDAD` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `IDUSUARIO` int(11) NOT NULL,
  `IDROL` int(11) DEFAULT NULL,
  `IDEXPEDIENTE` int(11) DEFAULT NULL,
  `USERUSUARIO` varchar(30) DEFAULT NULL,
  `PASSUSUARIO` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDUSUARIO`, `IDROL`, `IDEXPEDIENTE`, `USERUSUARIO`, `PASSUSUARIO`) VALUES
(1, 1, NULL, 'Exau', 'be4b669b658aaad8ce1c1070e1ecb783'),
(2, 1, NULL, 'Ligia', 'f3fd05a73b48288c895de69da46b2943'),
(3, 1, NULL, 'Samuel', 'e7ec4c603ee70851f5266811e1d54ee5'),
(4, 1, NULL, 'Mayella', '371db11ba618e17004c70d082b64d2b7'),
(5, 1, NULL, 'Susana', '551898bddbaf1285c67adc6b2f6d8ffb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_submenu`
--

CREATE TABLE IF NOT EXISTS `usuario_submenu` (
  `IDUSUARIO` int(11) NOT NULL,
  `IDSUBMENU` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acuerdos`
--
ALTER TABLE `acuerdos`
  ADD PRIMARY KEY (`IDACUERDO`), ADD KEY `FK_ASSOCIATION22` (`IDTIPOACUERDO`);

--
-- Indices de la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
  ADD PRIMARY KEY (`IDCAPACITACION`), ADD KEY `FK_ASSOCIATION10` (`IDEXPEDIENTE`), ADD KEY `FK_ASSOCIATION9` (`IDTIPOINVITACI`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`IDCARGO`), ADD KEY `FK_ASSOCIATION19` (`IDTIPOCARGO`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`IDCONTRATO`), ADD KEY `FK_ASSOCIATION18` (`IDCARGO`), ADD KEY `FK_ASSOCIATION20` (`IDTIPOCONTRATO`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`IDDEPARTAMENTO`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`IDDOCUMENTO`), ADD KEY `FK_ASSOCIATION15` (`IDTIPODOCUMENTO`), ADD KEY `FK_ASSOCIATION16` (`IDEXPEDIENTE`);

--
-- Indices de la tabla `expediente`
--
ALTER TABLE `expediente`
  ADD PRIMARY KEY (`IDEXPEDIENTE`), ADD KEY `FK_ASSOCIATION3` (`IDMUNICIPIO`), ADD KEY `FK_ASSOCIATION4` (`IDUNIDADFOUES`), ADD KEY `FK_ASSOCIATION8` (`IDTIPOEMPLEADO`);

--
-- Indices de la tabla `expedi_acuerdos`
--
ALTER TABLE `expedi_acuerdos`
  ADD PRIMARY KEY (`IDACUERDO`,`IDEXPEDIENTE`), ADD KEY `FK_ASSOCIATION21` (`IDEXPEDIENTE`);

--
-- Indices de la tabla `expedi_contrato`
--
ALTER TABLE `expedi_contrato`
  ADD PRIMARY KEY (`IDCONTRATO`,`IDEXPEDIENTE`), ADD KEY `FK_ASSOCIATION17` (`IDEXPEDIENTE`);

--
-- Indices de la tabla `histmarcacion`
--
ALTER TABLE `histmarcacion`
  ADD PRIMARY KEY (`IDHISTMARCACION`), ADD KEY `FK_ASSOCIATION6` (`IDEXPEDIENTE`);

--
-- Indices de la tabla `marcmanual`
--
ALTER TABLE `marcmanual`
  ADD PRIMARY KEY (`IDMARCMANUAL`), ADD KEY `FK_RELATIONSHIP_24` (`EXP_IDEXPEDIENTE`), ADD KEY `FK_ASSOCIATION7` (`IDEXPEDIENTE`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`IDMENU`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`IDMUNICIPIO`), ADD KEY `FK_ASSOCIATION1` (`IDDEPARTAMENTO`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`ID_PERMISO`), ADD KEY `FK_RELATIONSHIP_23` (`ID_JEFE_AUTORIZA_PERMISO`), ADD KEY `FK_ASSOCIATION2` (`ID_TIPO_PERMISO`), ADD KEY `FK_ASSOCIATION5` (`ID_EXPEDIENTE`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`IDROL`);

--
-- Indices de la tabla `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`IDSUBMENU`), ADD KEY `FK_ASSOCIATION12` (`IDMENU`);

--
-- Indices de la tabla `tipoacuerdo`
--
ALTER TABLE `tipoacuerdo`
  ADD PRIMARY KEY (`IDTIPOACUERDO`);

--
-- Indices de la tabla `tipocargo`
--
ALTER TABLE `tipocargo`
  ADD PRIMARY KEY (`IDTIPOCARGO`);

--
-- Indices de la tabla `tipocontrato`
--
ALTER TABLE `tipocontrato`
  ADD PRIMARY KEY (`IDTIPOCONTRATO`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`IDTIPODOCUMENTO`);

--
-- Indices de la tabla `tipoempleado`
--
ALTER TABLE `tipoempleado`
  ADD PRIMARY KEY (`IDTIPOEMPLEADO`);

--
-- Indices de la tabla `tipoinvitacion`
--
ALTER TABLE `tipoinvitacion`
  ADD PRIMARY KEY (`IDTIPOINVITACI`);

--
-- Indices de la tabla `tipopermiso`
--
ALTER TABLE `tipopermiso`
  ADD PRIMARY KEY (`IDTIPOPERMISO`);

--
-- Indices de la tabla `unidadfoues`
--
ALTER TABLE `unidadfoues`
  ADD PRIMARY KEY (`IDUNIDADFOUES`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDUSUARIO`), ADD KEY `FK_ASSOCIATION11` (`IDROL`), ADD KEY `FK_ASSOCIATION14` (`IDEXPEDIENTE`);

--
-- Indices de la tabla `usuario_submenu`
--
ALTER TABLE `usuario_submenu`
  ADD PRIMARY KEY (`IDUSUARIO`,`IDSUBMENU`), ADD KEY `FK_ASSOCIATION13` (`IDSUBMENU`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acuerdos`
--
ALTER TABLE `acuerdos`
  MODIFY `IDACUERDO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
  MODIFY `IDCAPACITACION` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `IDCARGO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `IDCONTRATO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `IDDEPARTAMENTO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `IDDOCUMENTO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `expediente`
--
ALTER TABLE `expediente`
  MODIFY `IDEXPEDIENTE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `histmarcacion`
--
ALTER TABLE `histmarcacion`
  MODIFY `IDHISTMARCACION` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `marcmanual`
--
ALTER TABLE `marcmanual`
  MODIFY `IDMARCMANUAL` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `IDMENU` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `IDMUNICIPIO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `ID_PERMISO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `IDROL` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `submenu`
--
ALTER TABLE `submenu`
  MODIFY `IDSUBMENU` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoacuerdo`
--
ALTER TABLE `tipoacuerdo`
  MODIFY `IDTIPOACUERDO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipocargo`
--
ALTER TABLE `tipocargo`
  MODIFY `IDTIPOCARGO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipocontrato`
--
ALTER TABLE `tipocontrato`
  MODIFY `IDTIPOCONTRATO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `IDTIPODOCUMENTO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoempleado`
--
ALTER TABLE `tipoempleado`
  MODIFY `IDTIPOEMPLEADO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoinvitacion`
--
ALTER TABLE `tipoinvitacion`
  MODIFY `IDTIPOINVITACI` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipopermiso`
--
ALTER TABLE `tipopermiso`
  MODIFY `IDTIPOPERMISO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `unidadfoues`
--
ALTER TABLE `unidadfoues`
  MODIFY `IDUNIDADFOUES` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDUSUARIO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acuerdos`
--
ALTER TABLE `acuerdos`
ADD CONSTRAINT `FK_ASSOCIATION22` FOREIGN KEY (`IDTIPOACUERDO`) REFERENCES `tipoacuerdo` (`IDTIPOACUERDO`);

--
-- Filtros para la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
ADD CONSTRAINT `FK_ASSOCIATION10` FOREIGN KEY (`IDEXPEDIENTE`) REFERENCES `expediente` (`IDEXPEDIENTE`),
ADD CONSTRAINT `FK_ASSOCIATION9` FOREIGN KEY (`IDTIPOINVITACI`) REFERENCES `tipoinvitacion` (`IDTIPOINVITACI`);

--
-- Filtros para la tabla `cargo`
--
ALTER TABLE `cargo`
ADD CONSTRAINT `FK_ASSOCIATION19` FOREIGN KEY (`IDTIPOCARGO`) REFERENCES `tipocargo` (`IDTIPOCARGO`);

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
ADD CONSTRAINT `FK_ASSOCIATION18` FOREIGN KEY (`IDCARGO`) REFERENCES `cargo` (`IDCARGO`),
ADD CONSTRAINT `FK_ASSOCIATION20` FOREIGN KEY (`IDTIPOCONTRATO`) REFERENCES `tipocontrato` (`IDTIPOCONTRATO`);

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
ADD CONSTRAINT `FK_ASSOCIATION15` FOREIGN KEY (`IDTIPODOCUMENTO`) REFERENCES `tipodocumento` (`IDTIPODOCUMENTO`),
ADD CONSTRAINT `FK_ASSOCIATION16` FOREIGN KEY (`IDEXPEDIENTE`) REFERENCES `expediente` (`IDEXPEDIENTE`);

--
-- Filtros para la tabla `expediente`
--
ALTER TABLE `expediente`
ADD CONSTRAINT `FK_ASSOCIATION3` FOREIGN KEY (`IDMUNICIPIO`) REFERENCES `municipio` (`IDMUNICIPIO`),
ADD CONSTRAINT `FK_ASSOCIATION4` FOREIGN KEY (`IDUNIDADFOUES`) REFERENCES `unidadfoues` (`IDUNIDADFOUES`),
ADD CONSTRAINT `FK_ASSOCIATION8` FOREIGN KEY (`IDTIPOEMPLEADO`) REFERENCES `tipoempleado` (`IDTIPOEMPLEADO`);

--
-- Filtros para la tabla `expedi_acuerdos`
--
ALTER TABLE `expedi_acuerdos`
ADD CONSTRAINT `FK_ASSOCIATION21` FOREIGN KEY (`IDEXPEDIENTE`) REFERENCES `expediente` (`IDEXPEDIENTE`),
ADD CONSTRAINT `FK_ASSOCIATION21_2` FOREIGN KEY (`IDACUERDO`) REFERENCES `acuerdos` (`IDACUERDO`);

--
-- Filtros para la tabla `expedi_contrato`
--
ALTER TABLE `expedi_contrato`
ADD CONSTRAINT `FK_ASSOCIATION17` FOREIGN KEY (`IDEXPEDIENTE`) REFERENCES `expediente` (`IDEXPEDIENTE`),
ADD CONSTRAINT `FK_ASSOCIATION17_2` FOREIGN KEY (`IDCONTRATO`) REFERENCES `contrato` (`IDCONTRATO`);

--
-- Filtros para la tabla `histmarcacion`
--
ALTER TABLE `histmarcacion`
ADD CONSTRAINT `FK_ASSOCIATION6` FOREIGN KEY (`IDEXPEDIENTE`) REFERENCES `expediente` (`IDEXPEDIENTE`);

--
-- Filtros para la tabla `marcmanual`
--
ALTER TABLE `marcmanual`
ADD CONSTRAINT `FK_ASSOCIATION7` FOREIGN KEY (`IDEXPEDIENTE`) REFERENCES `expediente` (`IDEXPEDIENTE`),
ADD CONSTRAINT `FK_RELATIONSHIP_24` FOREIGN KEY (`EXP_IDEXPEDIENTE`) REFERENCES `expediente` (`IDEXPEDIENTE`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
ADD CONSTRAINT `FK_ASSOCIATION1` FOREIGN KEY (`IDDEPARTAMENTO`) REFERENCES `departamento` (`IDDEPARTAMENTO`);

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
ADD CONSTRAINT `FK_ASSOCIATION2` FOREIGN KEY (`ID_TIPO_PERMISO`) REFERENCES `tipopermiso` (`IDTIPOPERMISO`),
ADD CONSTRAINT `FK_ASSOCIATION5` FOREIGN KEY (`ID_EXPEDIENTE`) REFERENCES `expediente` (`IDEXPEDIENTE`),
ADD CONSTRAINT `FK_RELATIONSHIP_23` FOREIGN KEY (`ID_JEFE_AUTORIZA_PERMISO`) REFERENCES `expediente` (`IDEXPEDIENTE`);

--
-- Filtros para la tabla `submenu`
--
ALTER TABLE `submenu`
ADD CONSTRAINT `FK_ASSOCIATION12` FOREIGN KEY (`IDMENU`) REFERENCES `menu` (`IDMENU`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
ADD CONSTRAINT `FK_ASSOCIATION11` FOREIGN KEY (`IDROL`) REFERENCES `rol` (`IDROL`),
ADD CONSTRAINT `FK_ASSOCIATION14` FOREIGN KEY (`IDEXPEDIENTE`) REFERENCES `expediente` (`IDEXPEDIENTE`);

--
-- Filtros para la tabla `usuario_submenu`
--
ALTER TABLE `usuario_submenu`
ADD CONSTRAINT `FK_ASSOCIATION13` FOREIGN KEY (`IDSUBMENU`) REFERENCES `submenu` (`IDSUBMENU`),
ADD CONSTRAINT `FK_ASSOCIATION13_2` FOREIGN KEY (`IDUSUARIO`) REFERENCES `usuario` (`IDUSUARIO`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
