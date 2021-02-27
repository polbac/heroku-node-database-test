CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdAt` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `updatedAt`, `createdAt`) VALUES
(1, 'Reloj', NULL, NULL),
(2, 'Media', NULL, NULL),
(3, 'Remera', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `offer` tinyint(4) DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `createdAt`, `deletedAt`, `updatedAt`, `offer`, `order`, `category_id`) VALUES
(1, 'Reloj Casio Deportivo Ae-1300wh', '5829', 'https://http2.mlstatic.com/D_NQ_NP_2X_707768-MLA31063055001_062019-F.webp', NULL, NULL, NULL, 1, 1, NULL),
(2, 'Casio Hombre Dw-291h', '7220', 'https://http2.mlstatic.com/D_NQ_NP_2X_844321-MLA41110736091_032020-F.webp', NULL, NULL, NULL, 1, 2, NULL),
(3, 'Casio W-59 W 59 W59', '2770', 'https://http2.mlstatic.com/D_NQ_NP_2X_809757-MLA31581657680_072019-F.webp', NULL, NULL, NULL, 1, 3, NULL),
(4, 'Casio A168wg Retro Vintage Gold', '1000', 'https://http2.mlstatic.com/D_NQ_NP_2X_989145-MLA41109772086_032020-F.webp', NULL, NULL, NULL, 0, 4, NULL),
(5, 'product test', '11', '77785902-a759-4044-b39c-defa51b41050.png', '2021-02-27 19:57:55', '2021-02-27 21:06:16', '2021-02-27 19:57:55', 0, 0, NULL),
(6, 'product test 2', '2131', '284f28f5-9625-4f57-ab25-3cb907d92faa.png', '2021-02-27 19:59:00', '2021-02-27 21:06:16', '2021-02-27 19:59:00', 0, 0, NULL),
(7, 'test 2', '11', 'ab70d4b4-b0c6-446a-9b40-6b416d9fcd21.', '2021-02-27 19:59:24', '2021-02-27 21:06:15', '2021-02-27 19:59:24', 0, 0, NULL),
(8, 'twrew', '111', 'ecec7c99-dfc3-4851-8a38-4255e2f31c96.png', '2021-02-27 20:13:18', '2021-02-27 21:06:14', '2021-02-27 20:13:18', 0, 1, NULL),
(9, '111', '1', 'f6c24531-7768-41a0-8816-b10e59cb8e43.jpeg', '2021-02-27 20:19:03', '2021-02-27 21:06:13', '2021-02-27 20:19:03', 0, 1, NULL),
(10, 'dsadsa', '231321', 'd6e785c9-0ac3-4cc8-8132-d76b63f6e5e1.png', '2021-02-27 20:25:44', '2021-02-27 21:06:11', '2021-02-27 20:25:44', 0, 11, NULL),
(11, 'editeeeed5', '1', '4b435219-9cd1-4fc1-a237-0ba82920ffbc.png', '2021-02-27 20:44:49', '2021-02-27 21:06:09', '2021-02-27 20:54:57', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id_idx` (`category_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;