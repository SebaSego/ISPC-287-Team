
-- Base de datos: `bd valoracion final`

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `dueno`

CREATE TABLE `dueno` (
  `DNI` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(100) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(45) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `dueno`

INSERT INTO `dueno` (`DNI`, `nombre`, `apellido`, `telefono`, `direccion`) VALUES
(24565487, 'Jeremias', 'Gomez', '3516584796', 'Av Libertador 452');

-- Actualización de la direccion de un dueño
UPDATE dueno SET direccion = "Libertad 123" WHERE DNI = 24565487
-- Estructura de tabla para la tabla `historial`

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_perro` int(11) NOT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL,
  `monto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `historial`

INSERT INTO `historial` (`id`, `fecha`, `id_perro`, `descripcion`, `monto`) VALUES
(1, '2022-08-02', 9, 'peluqueria ', 5622);

-- Estructura de tabla para la tabla `perro`

CREATE TABLE `perro` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  `DNI_dueno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `perro`

INSERT INTO `perro` (`id`, `nombre`, `fecha_nac`, `sexo`, `DNI_dueno`) VALUES
(9, 'Lula', '2016-10-07', 1, 24565487);

-- Índices para tablas volcadas

-- Indices de la tabla `dueno`

ALTER TABLE `dueno`
  ADD PRIMARY KEY (`DNI`);

-- Indices de la tabla `historial`

ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monto_perro` (`id_perro`);

-- Indices de la tabla `perro`

ALTER TABLE `perro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perro_ibfk_1` (`DNI_dueno`);

-- AUTO_INCREMENT de las tablas volcadas

-- AUTO_INCREMENT de la tabla `dueno`

ALTER TABLE `dueno`
  MODIFY `DNI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41697985;

-- AUTO_INCREMENT de la tabla `historial`

ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- AUTO_INCREMENT de la tabla `perro`

ALTER TABLE `perro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


-- Restricciones para tablas volcadas


-- Filtros para la tabla `historial`

ALTER TABLE `historial`
  ADD CONSTRAINT `monto_perro` FOREIGN KEY (`id_perro`) REFERENCES `perro` (`id`);


-- Filtros para la tabla `perro`

ALTER TABLE `perro`
  ADD CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`DNI_dueno`) REFERENCES `dueno` (`DNI`);
COMMIT;
