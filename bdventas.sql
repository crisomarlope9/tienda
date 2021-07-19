-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2021 a las 00:38:10
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idarticulo` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idpresentacion` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `idpresentacion`, `codigo`, `nombre`, `descripcion`) VALUES
(1, 4, 3, 'a001', 'arroz caserita', 'arroz de calidad'),
(2, 3, 1, 'b002', 'gaseosa fanta', 'helada con sabor a naranja'),
(3, 1, 2, 'ce003', 'angel', 'cereales angel de chocolate'),
(4, 10, 7, 'e004', 'hod dot', 'hot dot de pollo'),
(5, 7, 1, 'l005', 'cartavio licor', 'sabor a uva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`) VALUES
(1, 'cereales', 'cereales nutritivos'),
(2, 'menestras', 'menestras nutritivos'),
(3, 'bebidas', 'gaseosas variadas'),
(4, 'abarrotes', 'abarrotes en general'),
(5, 'postres', 'postres nutritivos'),
(6, 'verduras', 'verduras frescas'),
(7, 'licores', 'licores exportados'),
(8, 'perfumeria', 'productos necesarios'),
(9, 'carnes', 'carnes frescas'),
(10, 'embutidos', 'frescos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `num_documento` varchar(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `apellidos`, `sexo`, `fecha_nacimiento`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`) VALUES
(1, 'juan grabiel', 'ancajima cruz', 'm', '2021-07-16', 'dni', '77132300', 'jr san francisco 214', '111111', 'juan@gmail.com'),
(2, 'miguel angel', 'ancajima cruz', 'm', '1999-07-09', 'dni', '77132301', 'jr san francisco 214', '111112', 'miguel@gmail.com'),
(3, 'marcia del pilar', 'ancajima cruz', 'f', '2013-07-18', 'dni', '77132303', 'jr san francisco 214', '111113', 'marcia@gmail.com'),
(4, 'deysi maribel', 'ancajima cruz', 'f', '2011-07-21', 'dni', '77132304', 'jr san francisco 214', '111114', 'deysi@gmail.com'),
(5, 'victor manuel', 'ancajima cruz', 'm', '2015-10-29', 'dni', '77132305', 'jr san francisco 214', '111115', 'victor@gmail.com'),
(6, 'nancy noemi', 'ancajima cruz', 'f', '2002-04-18', 'dni', '77132306', 'jr san francisco 214', '111116', 'nancy@gmail.com'),
(7, 'aaron jesus', 'alfaro nunura', 'm', '2003-07-03', 'dni', '77132307', 'jr piura 216', '111117', 'aron@gmail.com'),
(8, 'cristhian omar', 'chumacero lopez', 'm', '1997-07-10', 'dni', '77132308', 'jr zepita 200', '111118', 'cristhian@gmail.com'),
(9, 'daniel jesus', 'gutierrez villegas', 'm', '1997-07-23', 'dni', '77132309', 'jr cusco 240', '111119', 'daniel@gmail.com'),
(10, 'edwin joel', 'sandoval valencia', 'm', '2018-07-25', 'dni', '77132310', 'jr mariano dias 214', '111110', 'edwin@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ingreso`
--

CREATE TABLE `detalle_ingreso` (
  `iddetalle_ingreso` int(11) NOT NULL,
  `idingreso` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `precio_compra` decimal(10,0) NOT NULL,
  `precio_venta` decimal(10,0) NOT NULL,
  `stock_inicial` int(11) NOT NULL,
  `stock_actual` int(11) NOT NULL,
  `fecha_produccion` date NOT NULL,
  `fecha_vencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_ingreso`
--

INSERT INTO `detalle_ingreso` (`iddetalle_ingreso`, `idingreso`, `idarticulo`, `precio_compra`, `precio_venta`, `stock_inicial`, `stock_actual`, `fecha_produccion`, `fecha_vencimiento`) VALUES
(1, 1, 1, '15', '17', 5, 10, '2020-07-09', '2021-07-31'),
(2, 2, 3, '10', '15', 3, 10, '2019-07-10', '2021-08-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `iddetalle_ingreso` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(10,0) NOT NULL,
  `descuento` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`iddetalle_venta`, `idventa`, `iddetalle_ingreso`, `cantidad`, `precio_venta`, `descuento`) VALUES
(1, 1, 1, 2, '17', '3'),
(2, 2, 2, 2, '15', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `idingreso` int(11) NOT NULL,
  `idtrabajador` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie` varchar(4) NOT NULL,
  `correlativo` varchar(7) NOT NULL,
  `igv` decimal(4,2) NOT NULL,
  `estado` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`idingreso`, `idtrabajador`, `idproveedor`, `fecha`, `tipo_comprobante`, `serie`, `correlativo`, `igv`, `estado`) VALUES
(1, 1, 1, '2021-07-16', 'boleta', '1', '001', '0.00', 'nuevo'),
(2, 1, 2, '2021-07-16', 'factura', '2', '002', '0.00', 'nuevo'),
(5, 1, 1, '2021-07-16', 'boleta', '1', '001', '1.00', 'nuevo'),
(7, 1, 2, '2021-07-16', 'factura', '2', '002', '2.00', 'nuevo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentacion`
--

CREATE TABLE `presentacion` (
  `idpresentacion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `presentacion`
--

INSERT INTO `presentacion` (`idpresentacion`, `nombre`, `descripcion`) VALUES
(1, 'botella', 'botella de 1L'),
(2, 'caja', 'reciclable'),
(3, 'bolsa', 'bolsa de 3K'),
(4, 'lata', 'lata chica'),
(5, 'vidrio', 'vidrio reciclable'),
(6, 'empaquetado', 'paquetes individuales'),
(7, 'suelto', 'suleto para pesar por kilos'),
(8, 'frasco', 'frascos de plasticos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `razon_social` varchar(150) NOT NULL,
  `sector_comercial` varchar(50) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `num_documento` varchar(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `razon_social`, `sector_comercial`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `url`) VALUES
(1, 'empresa abarrotes', 'abarrotes', 'dni', '71717171', 'A.H juan jesus 321', '123450', 'abarrotes@gmail.com', '-----'),
(2, 'bebidas sin alcohol', 'bebidas', 'dni', '98765432', 'jr mariano diaz 289', '987632', 'bebidas@gmail.com', '----------');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `idtrabajador` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `num_documento` varchar(8) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `acceso` varchar(20) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`idtrabajador`, `nombre`, `apellidos`, `sexo`, `fecha_nacimiento`, `num_documento`, `direccion`, `telefono`, `email`, `acceso`, `usuario`, `password`) VALUES
(1, 'marlon jair', 'sandoval marchena', 'm', '1997-07-17', '12345678', 'av grau 234', '943447643', 'marlon@gmail.com', 'vendedor', 'marlon', '12345'),
(2, 'maria cecilia', 'carmen zegarra', 'f', '1994-11-30', '12345679', 'jr paredes 251', '943447642', 'maria', 'cobradora', 'maria', '12346');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idtrabajador` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie` varchar(4) NOT NULL,
  `correlativo` varchar(7) NOT NULL,
  `igv` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `idcliente`, `idtrabajador`, `fecha`, `tipo_comprobante`, `serie`, `correlativo`, `igv`) VALUES
(1, 7, 1, '2021-07-16', 'boleta', '1', '001', '0.00'),
(2, 2, 1, '2021-07-16', 'factura', '2', '002', '0.00'),
(5, 7, 1, '2021-07-16', 'boleta', '1', '001', '1.00'),
(7, 2, 1, '2021-07-16', 'factura', '2', '002', '1.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idarticulo`),
  ADD KEY `FK_articulo_categoria` (`idcategoria`),
  ADD KEY `FK_articulo_presentacion` (`idpresentacion`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD PRIMARY KEY (`iddetalle_ingreso`),
  ADD KEY `FK_detalle_ingreso_articulo` (`idarticulo`),
  ADD KEY `FK_detalle_ingreso_ingreso` (`idingreso`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`iddetalle_venta`),
  ADD KEY `FK_detalle_venta_detalle_ingreso` (`iddetalle_ingreso`),
  ADD KEY `FK_detalle_venta_venta` (`idventa`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`idingreso`),
  ADD KEY `FK_ingreso_proveedor` (`idproveedor`),
  ADD KEY `FK_ingreso_trabajador` (`idtrabajador`);

--
-- Indices de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  ADD PRIMARY KEY (`idpresentacion`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`idtrabajador`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `FK_venta_cliente` (`idcliente`),
  ADD KEY `FK_venta_trabajador` (`idtrabajador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idarticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  MODIFY `iddetalle_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `idingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  MODIFY `idpresentacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `idtrabajador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `FK_articulo_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`),
  ADD CONSTRAINT `FK_articulo_presentacion` FOREIGN KEY (`idpresentacion`) REFERENCES `presentacion` (`idpresentacion`);

--
-- Filtros para la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD CONSTRAINT `FK_detalle_ingreso_articulo` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`),
  ADD CONSTRAINT `FK_detalle_ingreso_ingreso` FOREIGN KEY (`idingreso`) REFERENCES `ingreso` (`idingreso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `FK_detalle_venta_detalle_ingreso` FOREIGN KEY (`iddetalle_ingreso`) REFERENCES `detalle_ingreso` (`iddetalle_ingreso`),
  ADD CONSTRAINT `FK_detalle_venta_venta` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `FK_ingreso_proveedor` FOREIGN KEY (`idproveedor`) REFERENCES `proveedor` (`idproveedor`),
  ADD CONSTRAINT `FK_ingreso_trabajador` FOREIGN KEY (`idtrabajador`) REFERENCES `trabajador` (`idtrabajador`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `FK_venta_cliente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`),
  ADD CONSTRAINT `FK_venta_trabajador` FOREIGN KEY (`idtrabajador`) REFERENCES `trabajador` (`idtrabajador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
