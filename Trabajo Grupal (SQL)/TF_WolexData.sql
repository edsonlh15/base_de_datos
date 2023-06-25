-- Usar la base de datos en la nube
USE wolex;

-- Inserts para la tabla "usuario"
INSERT INTO usuario (idUsuario, nombres, apellidos, telefono, dni)
VALUES (1, 'Brian', 'Uceda Hirata', '982849285', '12345678'),
       (2, 'Luis', 'Pérez Gonzales', '987654321', '87654321'),
       (3, 'Ana', 'Gutiérrez Torres', '956784512', '76543210'),
       (4, 'María', 'López Rodríguez', '964738291', '65432109'),
       (5, 'Carlos', 'Vargas Silva', '951234567', '54321098');

-- Inserts para la tabla "ciudad"
INSERT INTO ciudad (idCiudad, nombreCiudad, codigoPostal)
VALUES (1, 'Lima', '15029'),
       (2, 'Arequipa', '10592'),
       (3, 'Trujillo', '13005');

-- Inserts para la tabla "distrito"
INSERT INTO distrito (idDistrito, nombreDistrito, codigoDistrital, idCiudad)
VALUES (1, 'Miraflores', '150104', 1),
       (2, 'San Isidro', '150126', 1),
       (3, 'Yanahuara', '040105', 2),
       (4, 'Cercado de Arequipa', '040101', 2),
       (5, 'Moche', '130104', 3);

-- Inserts para la tabla "zona"
INSERT INTO zona (idZona, nombreZona, latitud, longitud, idDistrito)
VALUES 
  (1, 'Parque Kennedy', -12.121584, -77.029764, 1),
  (2, 'Malecón de Miraflores', -12.142985, -77.033508, 1),
  (3, 'Bosque El Olivar', -12.101246, -77.032609, 1),
  (4, 'Larcomar', -12.132695, -77.030851, 1),
  (5, 'Parque del Amor', -12.148388, -77.023469, 1),
  (6, 'Parque Castilla', -12.083204, -77.029908, 2),
  (7, 'Parque de las Aguas', -12.077514, -77.036760, 2),
  (8, 'Parque del Bombero', -12.088420, -77.035736, 2),
  (9, 'Parque Mariscal Castilla', -12.085657, -77.033163, 2),
  (10, 'Parque de los Niños', -12.086688, -77.028759, 2),
  (11, 'Parque Huanchaco', -8.079829, -79.112201, 3),
  (12, 'Plaza de Armas de Trujillo', -8.107247, -79.030623, 3),
  (13, 'Balneario Las Delicias', -8.112754, -79.029107, 3),
  (14, 'Parque de la Amistad', -8.115140, -79.021040, 3),
  (15, 'Plaza Mayor de Yanahuara', -16.390576, -71.535551, 4),
  (16, 'Mirador de Yanahuara', -16.396798, -71.531611, 4),
  (17, 'Iglesia de San Juan Bautista', -16.398704, -71.530554, 4),
  (18, 'Complejo de Santa Catalina', -16.395571, -71.530914, 4),
  (19, 'Plaza de Armas de Moche', -8.164712, -79.002945, 5),
  (20, 'Complejo El Brujo', -8.208933, -78.996686, 5),
  (21, 'Parque Reducto', -12.116917, -77.026728, 1),
  (22, 'Parque Tradiciones', -12.108695, -77.020537, 1),
  (23, 'Parque El Faro', -12.137383, -77.020589, 1),
  (24, 'Parque María Reiche', -12.151421, -77.023257, 1),
  (25, 'Parque Salazar', -12.135086, -77.027670, 1),
  (26, 'Parque Castilla II', -12.089368, -77.036352, 2),
  (27, 'Parque de las Leyendas', -12.062732, -77.084084, 2),
  (28, 'Parque Los Próceres', -12.086333, -77.023487, 2),
  (29, 'Parque de la Exposición', -12.064615, -77.030019, 2),
  (30, 'Parque Campo de Marte', -12.089497, -77.037802, 2);

-- Inserts para la tabla "empresa_reguladora"
INSERT INTO empresa_reguladora (idEmpresaReguladora, nombreReguladora, informacion)
VALUES (1, 'OSINERGMIN', 'Información de OSINERGMIN');

-- Inserts para la tabla "empresa_proveedora"
INSERT INTO empresa_proveedora (idEmpresaproveedora, nombreProveedora, informacion, idEmpresaReguladora)
VALUES (1, 'Luz del Sur', 'Información de Luz del Sur', 1),
       (2, 'Enel Perú', 'Información de Enel Perú', 1),
       (3, 'Electro Dunas', 'Información de Electro Dunas', 1);

-- Inserts para la tabla "dispositivo_medidor"
INSERT INTO dispositivo_medidor (idDispositivoMedidor, modeloMedidor, marcaMedidor, tipoMedidor, capacidadMedidor)
VALUES
  (1, 'ABB Alpha Plus', 'ABB', 'Medidor de energía', 100.00),
  (2, 'Itron Centron', 'Itron', 'Medidor de energía', 200.00),
  (3, 'Schneider Electric ION8650', 'Schneider Electric', 'Medidor de energía', 150.00),
  (4, 'Elster A3 ALPHA', 'Elster', 'Medidor de energía', 300.00),
  (5, 'ABB Delta Plus', 'ABB', 'Medidor de energía', 250.00),
  (6, 'Itron Centron Plus', 'Itron', 'Medidor de energía', 350.00),
  (7, 'Schneider Electric ION8750', 'Schneider Electric', 'Medidor de energía', 400.00),
  (8, 'Elster A3 BETA', 'Elster', 'Medidor de energía', 450.00),
  (9, 'ABB Gamma Plus', 'ABB', 'Medidor de energía', 300.00),
  (10, 'Itron Centron Pro', 'Itron', 'Medidor de energía', 500.00),
  (11, 'Schneider Electric ION8850', 'Schneider Electric', 'Medidor de energía', 550.00),
  (12, 'Elster A3 GAMMA', 'Elster', 'Medidor de energía', 600.00),
  (13, 'ABB Alpha Advanced', 'ABB', 'Medidor de energía', 350.00),
  (14, 'Itron Centron Advanced', 'Itron', 'Medidor de energía', 650.00),
  (15, 'Schneider Electric ION8950', 'Schneider Electric', 'Medidor de energía', 700.00),
  (16, 'Elster A3 DELTA', 'Elster', 'Medidor de energía', 750.00),
  (17, 'ABB Beta Advanced', 'ABB', 'Medidor de energía', 400.00),
  (18, 'Itron Centron Elite', 'Itron', 'Medidor de energía', 800.00),
  (19, 'Schneider Electric ION9050', 'Schneider Electric', 'Medidor de energía', 850.00),
  (20, 'Elster A3 EPSILON', 'Elster', 'Medidor de energía', 900.00),
  (21, 'ABB Gamma Advanced', 'ABB', 'Medidor de energía', 450.00),
  (22, 'Itron Centron Max', 'Itron', 'Medidor de energía', 950.00),
  (23, 'Schneider Electric ION9150', 'Schneider Electric', 'Medidor de energía', 1000.00),
  (24, 'Elster A3 ZETA', 'Elster', 'Medidor de energía', 1050.00),
  (25, 'ABB Delta Advanced', 'ABB', 'Medidor de energía', 500.00),
  (26, 'Itron Centron Ultra', 'Itron', 'Medidor de energía', 1100.00),
  (27, 'Schneider Electric ION9250', 'Schneider Electric', 'Medidor de energía', 1150.00),
  (28, 'Elster A3 ETA', 'Elster', 'Medidor de energía', 1200.00),
  (29, 'ABB Alpha Premium', 'ABB', 'Medidor de energía', 550.00),
  (30, 'Itron Centron Supreme', 'Itron', 'Medidor de energía', 1250.00);

-- Inserts para la tabla "propiedad"
INSERT INTO propiedad (idPropiedad, tipoPropiedad, idZona, idUsuario, idDispositivoMedidor, idEmpresaproveedora)
VALUES 
  (1, 'Departamento', 1, 1, 1, 1),
  (2, 'Departamento', 2, 5, 2, 2),
  (3, 'Departamento', 3, 5, 3, 3),
  (4, 'Departamento', 4, 4, 4, 2),
  (5, 'Departamento', 5, 3, 5, 2),
  (6, 'Casa', 6, 1, 6, 1),
  (7, 'Casa', 7, 2, 7, 2),
  (8, 'Casa', 8, 5, 8, 3),
  (9, 'Casa', 9, 2, 9, 3),
  (10, 'Casa', 10, 2, 10, 1),
  (11, 'Departamento', 11, 1, 11, 1),
  (12, 'Departamento', 12, 2, 12, 2),
  (13, 'Departamento', 13, 4, 13, 2),
  (14, 'Departamento', 14, 1, 14, 3),
  (15, 'Departamento', 15, 4, 15, 3),
  (16, 'Casa', 16, 1, 16, 1),
  (17, 'Casa', 17, 3, 17, 1),
  (18, 'Casa', 18, 5, 18, 2),
  (19, 'Casa', 19, 5, 19, 3),
  (20, 'Casa', 20, 4, 20, 3),
  (21, 'Departamento', 21, 2, 21, 2),
  (22, 'Departamento', 22, 4, 22, 3),
  (23, 'Departamento', 23, 5, 23, 2),
  (24, 'Departamento', 24, 4, 24, 3),
  (25, 'Casa', 25, 1, 25, 1),
  (26, 'Casa', 26, 3, 26, 2),
  (27, 'Casa', 27, 5, 27, 1),
  (28, 'Departamento', 28, 1, 28, 3),
  (29, 'Departamento', 29, 4, 29, 3),
  (30, 'Casa', 30, 1, 30, 1);

-- Inserts para la tabla "reporte_consumo"
INSERT INTO reporte_consumo (idReporteConsumoEnergia, fechaExacta, idUsuario, idPropiedad, idDispositivoMedidor)
VALUES 
  -- Reportes para el usuario 1 (Brian)
  (1, '2023-06-22 00:00:00', 1, 16, 1),
  (2, '2023-06-23 01:30:00', 1, 30, 2),
  (3, '2023-06-24 02:45:00', 1, 28, 3),
  (4, '2023-06-25 04:20:00', 1, 25, 4),
  (5, '2023-06-26 06:30:00', 1, 1, 2),
  (6, '2023-06-27 11:15:00', 1, 14, 2),
  (7, '2023-06-28 13:50:00', 1, 11, 2),
  (8, '2023-06-29 15:40:00', 1, 6, 3),
  (9, '2023-07-01 10:00:00', 1, 16, 1),
  (10, '2023-07-02 11:30:00', 1, 30, 2),
  (11, '2023-07-03 12:45:00', 1, 28, 3),
  (12, '2023-07-04 14:20:00', 1, 25, 4),
  (13, '2023-07-05 16:30:00', 1, 1, 2),
  (14, '2023-07-06 11:15:00', 1, 14, 2),
  (15, '2023-07-07 13:50:00', 1, 11, 2),
  (16, '2023-07-08 15:40:00', 1, 6, 3),
  (17, '2023-07-09 10:00:00', 1, 16, 1),
  (18, '2023-07-10 11:30:00', 1, 30, 2),
  (19, '2023-07-11 12:45:00', 1, 28, 3),
  (20, '2023-07-12 14:20:00', 1, 25, 4),
  (21, '2023-07-13 16:30:00', 1, 1, 2),
  (22, '2023-07-14 11:15:00', 1, 14, 2),
  (23, '2023-07-15 13:50:00', 1, 11, 2),
  (24, '2023-07-16 15:40:00', 1, 6, 4),
  (25, '2023-07-17 10:00:00', 1, 16, 1),
  (26, '2023-07-18 11:30:00', 1, 30, 2),
  (27, '2023-07-19 12:45:00', 1, 28, 3),
  (28, '2023-07-20 14:20:00', 1, 25, 4),
  (29, '2023-07-21 16:30:00', 1, 1, 2),
  (30, '2023-07-22 11:15:00', 1, 14, 2),
  (31, '2023-07-23 13:50:00', 1, 11, 2),
  (32, '2023-07-24 15:40:00', 1, 6, 4),
  -- Reportes para el usuario 2 (Luis)
  (33, '2023-06-22 00:00:00', 2, 9, 1),
  (34, '2023-06-23 01:30:00', 2, 10, 2),
  (35, '2023-06-24 02:45:00', 2, 7, 3),
  (36, '2023-06-25 04:20:00', 2, 12, 4),
  (37, '2023-06-26 06:30:00', 2, 21, 2),
  (38, '2023-06-27 11:15:00', 2, 9, 2),
  (39, '2023-06-28 13:50:00', 2, 10, 2),
  (40, '2023-06-29 15:40:00', 2, 7, 4),
  (41, '2023-07-01 10:00:00', 2, 12, 1),
  (42, '2023-07-02 11:30:00', 2, 21, 2),
  (43, '2023-07-03 12:45:00', 2, 9, 3),
  (44, '2023-07-04 14:20:00', 2, 10, 4),
  (45, '2023-07-05 16:30:00', 2, 7, 2),
  (46, '2023-07-06 11:15:00', 2, 12, 2),
  (47, '2023-07-07 13:50:00', 2, 21, 3),
  (48, '2023-07-08 15:40:00', 2, 9, 4),
  (49, '2023-07-09 10:00:00', 2, 10, 1),
  (50, '2023-07-10 11:30:00', 2, 7, 2),
  (51, '2023-07-11 12:45:00', 2, 12, 3),
  (52, '2023-07-12 14:20:00', 2, 21, 4),
  (53, '2023-07-13 16:30:00', 2, 9, 2),
  (54, '2023-07-14 11:15:00', 2, 10, 4),
  (55, '2023-07-15 13:50:00', 2, 7, 3),
  (56, '2023-07-16 15:40:00', 2, 12, 4),
  (57, '2023-07-17 10:00:00', 2, 21, 1),
  (58, '2023-07-18 11:30:00', 2, 9, 2),
  (59, '2023-07-19 12:45:00', 2, 10, 3),
  (60, '2023-07-20 14:20:00', 2, 7, 4),
  (61, '2023-07-21 16:30:00', 2, 12, 2),
  (62, '2023-07-22 11:15:00', 2, 21, 4),
  (63, '2023-07-23 13:50:00', 2, 9, 3),
  (64, '2023-07-24 15:40:00', 2, 10, 4),
  -- Reportes para el usuario 3 (Ana)
  (65, '2023-06-22 00:00:00', 3, 26, 1),
  (66, '2023-06-23 01:30:00', 3, 17, 2),
  (67, '2023-06-24 02:45:00', 3, 5, 3),
  (68, '2023-06-25 04:20:00', 3, 26, 4),
  (69, '2023-06-26 06:30:00', 3, 17, 3),
  (70, '2023-06-27 11:15:00', 3, 5, 4),
  (71, '2023-06-28 13:50:00', 3, 26, 3),
  (72, '2023-06-29 15:40:00', 3, 17, 4),
  (73, '2023-07-01 10:00:00', 3, 5, 1),
  (74, '2023-07-02 11:30:00', 3, 26, 2),
  (75, '2023-07-03 12:45:00', 3, 17, 3),
  (76, '2023-07-04 14:20:00', 3, 5, 4),
  (77, '2023-07-05 16:30:00', 3, 26, 3),
  (78, '2023-07-06 11:15:00', 3, 17, 4),
  (79, '2023-07-07 13:50:00', 3, 5, 3),
  (80, '2023-07-08 15:40:00', 3, 26, 1),
  (81, '2023-07-09 10:00:00', 3, 17, 1),
  (82, '2023-07-10 11:30:00', 3, 5, 2),
  (83, '2023-07-11 12:45:00', 3, 26, 3),
  (84, '2023-07-12 14:20:00', 3, 17, 4),
  (85, '2023-07-13 16:30:00', 3, 5, 3),
  (86, '2023-07-14 11:15:00', 3, 26, 4),
  (87, '2023-07-15 13:50:00', 3, 17, 3),
  (88, '2023-07-16 15:40:00', 3, 5, 1),
  (89, '2023-07-17 10:00:00', 3, 26, 1),
  (90, '2023-07-18 11:30:00', 3, 17, 2),
  (91, '2023-07-19 12:45:00', 3, 5, 3),
  (92, '2023-07-20 14:20:00', 3, 26, 4),
  (93, '2023-07-21 16:30:00', 3, 17, 3),
  (94, '2023-07-22 11:15:00', 3, 5, 4),
  (95, '2023-07-23 13:50:00', 3, 26, 1),
  (96, '2023-07-24 15:40:00', 3, 17, 1),
  -- Reportes para el usuario 4 (Pedro)
  (97, '2023-06-22 00:00:00', 4, 15, 1),
  (98, '2023-06-23 01:30:00', 4, 29, 2),
  (99, '2023-06-24 02:45:00', 4, 20, 3),
  (100, '2023-06-25 04:20:00', 4, 13, 4),
  (101, '2023-06-26 06:30:00', 4, 22, 3),
  (102, '2023-06-27 11:15:00', 4, 24, 4),
  (103, '2023-06-28 13:50:00', 4, 4, 1),
  (104, '2023-06-29 15:40:00', 4, 15, 1),
  (105, '2023-07-01 10:00:00', 4, 29, 1),
  (106, '2023-07-02 11:30:00', 4, 20, 2),
  (107, '2023-07-03 12:45:00', 4, 13, 3),
  (108, '2023-07-04 14:20:00', 4, 22, 4),
  (109, '2023-07-05 16:30:00', 4, 24, 3),
  (110, '2023-07-06 11:15:00', 4, 4, 1),
  (111, '2023-07-07 13:50:00', 4, 15, 1),
  (112, '2023-07-08 15:40:00', 4, 29, 1),
  (113, '2023-07-09 10:00:00', 4, 20, 1),
  (114, '2023-07-10 11:30:00', 4, 13, 2),
  (115, '2023-07-11 12:45:00', 4, 22, 3),
  (116, '2023-07-12 14:20:00', 4, 24, 4),
  (117, '2023-07-13 16:30:00', 4, 4, 3),
  (118, '2023-07-14 11:15:00', 4, 15, 1),
  (119, '2023-07-15 13:50:00', 4, 29, 1),
  (120, '2023-07-16 15:40:00', 4, 20, 1),
  (121, '2023-07-17 10:00:00', 4, 13, 1),
  (122, '2023-07-18 11:30:00', 4, 22, 2),
  (123, '2023-07-19 12:45:00', 4, 24, 3),
  (124, '2023-07-20 14:20:00', 4, 4, 4),
  (125, '2023-07-21 16:30:00', 4, 15, 4),
  (126, '2023-07-22 11:15:00', 4, 29, 1),
  (127, '2023-07-23 13:50:00', 4, 20, 1),
  (128, '2023-07-24 15:40:00', 4, 13, 1),
  -- Reportes para el usuario 5 (María)
  (129, '2023-06-22 00:00:00', 5, 27, 1),
  (130, '2023-06-23 01:30:00', 5, 23, 2),
  (131, '2023-06-24 02:45:00', 5, 19, 3),
  (132, '2023-06-25 04:20:00', 5, 18, 4),
  (133, '2023-06-26 06:30:00', 5, 27, 4),
  (134, '2023-06-27 11:15:00', 5, 23, 1),
  (135, '2023-06-28 13:50:00', 5, 19, 1),
  (136, '2023-06-29 15:40:00', 5, 18, 3),
  (137, '2023-07-01 10:00:00', 5, 27, 1),
  (138, '2023-07-02 11:30:00', 5, 23, 2),
  (139, '2023-07-03 12:45:00', 5, 19, 3),
  (140, '2023-07-04 14:20:00', 5, 18, 4),
  (141, '2023-07-05 16:30:00', 5, 27, 4),
  (142, '2023-07-06 11:15:00', 5, 23, 1),
  (143, '2023-07-07 13:50:00', 5, 19, 1),
  (144, '2023-07-08 15:40:00', 5, 18, 3),
  (145, '2023-07-09 10:00:00', 5, 27, 1),
  (146, '2023-07-10 11:30:00', 5, 23, 2),
  (147, '2023-07-11 12:45:00', 5, 19, 3),
  (148, '2023-07-12 14:20:00', 5, 18, 4),
  (149, '2023-07-13 16:30:00', 5, 27, 4),
  (150, '2023-07-14 11:15:00', 5, 23, 1),
  (151, '2023-07-15 13:50:00', 5, 19, 2),
  (152, '2023-07-16 15:40:00', 5, 18, 3),
  (153, '2023-07-17 10:00:00', 5, 27, 1),
  (154, '2023-07-18 11:30:00', 5, 23, 2),
  (155, '2023-07-19 12:45:00', 5, 19, 3),
  (156, '2023-07-20 14:20:00', 5, 18, 4),
  (157, '2023-07-21 16:30:00', 5, 27, 1),
  (158, '2023-07-22 11:15:00', 5, 23, 1),
  (159, '2023-07-23 13:50:00', 5, 19, 2),
  (160, '2023-07-24 15:40:00', 5, 18, 4);

-- Inserts para la tabla "electrodomestico"
INSERT INTO electrodomestico (idElectrodomestico, idDispositivoMedidor, idReporteConsumoEnergia, nombreElec, marcaElec, modeloElec, tipoElec, descripcionElec, minutosDeUsoElec, consumoEnergiaElec) VALUES
  (1, 1, 1, 'Televisor', 'Sony', 'ABC123', 'LED', 'Televisor de alta definición', 120, 200),
  (2, 1, 2, 'Refrigeradora', 'LG', 'XYZ456', 'Doble puerta', 'Refrigeradora con congelador', 240, 400),
  (3, 1, 3, 'Lavadora', 'Whirlpool', 'DEF789', 'Carga frontal', 'Lavadora de carga frontal', 90, 300),
  (4, 2, 4, 'Televisor', 'Samsung', 'GHI123', 'LED', 'Televisor inteligente', 180, 250),
  (5, 2, 5, 'Horno', 'KitchenAid', 'JKL456', 'Eléctrico', 'Horno eléctrico de convección', 60, 350),
  (6, 2, 6, 'Licuadora', 'Oster', 'MNO789', 'Vaso', 'Licuadora de alta velocidad', 15, 100),
  (7, 3, 7, 'Lavadora', 'Samsung', 'PQR123', 'Carga superior', 'Lavadora de carga superior', 75, 280),
  (8, 3, 8, 'Secadora', 'Whirlpool', 'STU456', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 400),
  (9, 3, 9, 'Microondas', 'LG', 'VWX789', 'Empotrable', 'Microondas empotrable', 30, 200),
  (10, 3, 10, 'Licuadora', 'Hamilton Beach', 'YZA123', 'Vaso', 'Licuadora personal', 10, 80),
  (11, 3, 11, 'Cafetera', 'Keurig', 'BCD456', 'Automática', 'Cafetera automática', 20, 150),
  (12, 3, 12, 'Tostadora', 'Black+Decker', 'EFG789', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (13, 4, 13, 'Televisor', 'LG', 'HIJ123', 'LED', 'Televisor OLED', 150, 300),
  (14, 4, 14, 'Refrigeradora', 'Samsung', 'KLM456', 'Side-by-side', 'Refrigeradora side-by-side', 240, 500),
  (15, 4, 15, 'Lavadora', 'Maytag', 'NOP789', 'Carga superior', 'Lavadora de carga superior', 90, 320),
  (16, 4, 16, 'Secadora', 'LG', 'QRS123', 'Gas', 'Secadora de ropa a gas', 120, 400),
  (17, 4, 17, 'Licuadora', 'Ninja', 'TUV456', 'Vaso', 'Licuadora profesional', 20, 150),
  (18, 5, 18, 'Televisor', 'Sony', 'VWX123', 'LED', 'Televisor 4K', 180, 350),
  (19, 5, 19, 'Horno', 'Whirlpool', 'YZA456', 'Gas', 'Horno de gas', 60, 300),
  (20, 5, 20, 'Lavadora', 'LG', 'BCD789', 'Carga frontal', 'Lavadora de carga frontal', 90, 280),
  (21, 5, 21, 'Licuadora', 'Vitamix', 'EFG123', 'Vaso', 'Licuadora de alta potencia', 15, 120),
  (22, 6, 22, 'Refrigeradora', 'Samsung', 'HIJ456', 'Francesa', 'Refrigeradora francesa', 240, 400),
  (23, 6, 23, 'Lavadora', 'Whirlpool', 'KLM789', 'Carga superior', 'Lavadora de carga superior', 90, 300),
  (24, 6, 24, 'Secadora', 'LG', 'NOP123', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 350),
  (25, 6, 25, 'Licuadora', 'Blendtec', 'QRS456', 'Vaso', 'Licuadora de alta velocidad', 20, 150),
  (26, 6, 26, 'Cafetera', 'Nespresso', 'TUV789', 'Automática', 'Cafetera automática', 30, 200),
  (27, 6, 27, 'Tostadora', 'Cuisinart', 'VWX456', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (28, 7, 28, 'Televisor', 'Samsung', 'YZA789', 'QLED', 'Televisor QLED', 150, 300),
  (29, 7, 29, 'Refrigeradora', 'LG', 'BCD123', 'Doble puerta', 'Refrigeradora de dos puertas', 240, 450),
  (30, 7, 30, 'Lavadora', 'Samsung', 'EFG456', 'Carga frontal', 'Lavadora de carga frontal', 90, 280),
  (31, 8, 31, 'Televisor', 'Sony', 'ABC123', 'LED', 'Televisor de alta definición', 120, 200),
  (32, 8, 32, 'Refrigeradora', 'LG', 'XYZ456', 'Doble puerta', 'Refrigeradora con congelador', 240, 400),
  (33, 8, 33, 'Lavadora', 'Whirlpool', 'DEF789', 'Carga frontal', 'Lavadora de carga frontal', 90, 300),
  (34, 8, 34, 'Horno', 'KitchenAid', 'JKL456', 'Eléctrico', 'Horno eléctrico de convección', 60, 350),
  (35, 8, 35, 'Licuadora', 'Oster', 'MNO789', 'Vaso', 'Licuadora de alta velocidad', 15, 100),
  (36, 8, 36, 'Cafetera', 'Keurig', 'PQR123', 'Automática', 'Cafetera automática', 20, 150),
  (37, 9, 37, 'Televisor', 'Samsung', 'GHI123', 'LED', 'Televisor inteligente', 180, 250),
  (38, 9, 38, 'Horno', 'LG', 'STU456', 'Eléctrico', 'Horno eléctrico', 60, 350),
  (39, 9, 39, 'Licuadora', 'Ninja', 'VWX789', 'Vaso', 'Licuadora profesional', 20, 150),
  (40, 9, 40, 'Cafetera', 'Hamilton Beach', 'YZA123', 'Automática', 'Cafetera automática', 30, 200),
  (41, 9, 41, 'Tostadora', 'Black+Decker', 'BCD456', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (42, 10, 42, 'Refrigeradora', 'Samsung', 'HIJ123', 'Side-by-side', 'Refrigeradora side-by-side', 240, 500),
  (43, 10, 43, 'Lavadora', 'Maytag', 'KLM456', 'Carga superior', 'Lavadora de carga superior', 90, 320),
  (44, 10, 44, 'Secadora', 'LG', 'NOP789', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 400),
  (45, 10, 45, 'Licuadora', 'Blendtec', 'QRS123', 'Vaso', 'Licuadora de alta velocidad', 20, 150),
  (46, 10, 46, 'Cafetera', 'Nespresso', 'TUV456', 'Automática', 'Cafetera automática', 30, 200),
  (47, 10, 47, 'Tostadora', 'Cuisinart', 'VWX789', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (48, 10, 48, 'Microondas', 'Panasonic', 'YZA123', 'Empotrable', 'Microondas empotrable', 10, 120),
  (49, 11, 49, 'Televisor', 'Sony', 'ABC456', 'LED', 'Televisor 4K', 150, 300),
  (50, 11, 50, 'Refrigeradora', 'LG', 'XYZ789', 'Doble puerta', 'Refrigeradora de dos puertas', 240, 450),
  (51, 11, 51, 'Lavadora', 'Samsung', 'DEF123', 'Carga frontal', 'Lavadora de carga frontal', 90, 280),
  (52, 11, 52, 'Licuadora', 'Vitamix', 'GHI456', 'Vaso', 'Licuadora de alta potencia', 15, 120),
  (53, 11, 53, 'Cafetera', 'Breville', 'JKL789', 'Automática', 'Cafetera automática', 30, 200),
  (54, 12, 54, 'Refrigeradora', 'Whirlpool', 'MNO123', 'Francesa', 'Refrigeradora francesa', 240, 400),
  (55, 12, 55, 'Lavadora', 'LG', 'PQR456', 'Carga superior', 'Lavadora de carga superior', 90, 300),
  (56, 12, 56, 'Secadora', 'Samsung', 'STU789', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 350),
  (57, 12, 57, 'Licuadora', 'KitchenAid', 'VWX123', 'Vaso', 'Licuadora de alta velocidad', 20, 150),
  (58, 12, 58, 'Cafetera', 'Hamilton Beach', 'YZA456', 'Automática', 'Cafetera automática', 30, 200),
  (59, 12, 59, 'Tostadora', 'Black+Decker', 'BCD789', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (60, 12, 60, 'Microondas', 'Panasonic', 'EFG123', 'Empotrable', 'Microondas empotrable', 10, 120),
  (61, 13, 61, 'Televisor', 'Samsung', 'HIJ456', 'QLED', 'Televisor QLED', 180, 350),
  (62, 13, 62, 'Refrigeradora', 'LG', 'KLM789', 'Side-by-side', 'Refrigeradora side-by-side', 240, 500),
  (63, 13, 63, 'Lavadora', 'Whirlpool', 'NOP123', 'Carga frontal', 'Lavadora de carga frontal', 90, 280),
  (64, 13, 64, 'Licuadora', 'Ninja', 'QRS456', 'Vaso', 'Licuadora profesional', 20, 150),
  (65, 13, 65, 'Cafetera', 'Keurig', 'TUV789', 'Automática', 'Cafetera automática', 30, 200),
  (66, 13, 66, 'Tostadora', 'Cuisinart', 'YZA456', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (67, 14, 67, 'Refrigeradora', 'Samsung', 'ABC789', 'Doble puerta', 'Refrigeradora de dos puertas', 240, 450),
  (68, 14, 68, 'Lavadora', 'Maytag', 'DEF123', 'Carga superior', 'Lavadora de carga superior', 90, 300),
  (69, 14, 69, 'Secadora', 'LG', 'GHI456', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 350),
  (70, 14, 70, 'Licuadora', 'Blendtec', 'JKL789', 'Vaso', 'Licuadora de alta velocidad', 20, 150),
  (71, 14, 71, 'Cafetera', 'Nespresso', 'MNO123', 'Automática', 'Cafetera automática', 30, 200),
  (72, 14, 72, 'Tostadora', 'Black+Decker', 'PQR456', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (73, 14, 73, 'Microondas', 'Panasonic', 'STU789', 'Empotrable', 'Microondas empotrable', 10, 120),
  (74, 15, 74, 'Televisor', 'Sony', 'VWX123', 'LED', 'Televisor de alta definición', 120, 200),
  (75, 15, 75, 'Refrigeradora', 'LG', 'YZA456', 'Doble puerta', 'Refrigeradora con congelador', 240, 400),
  (76, 15, 76, 'Lavadora', 'Whirlpool', 'BCD789', 'Carga frontal', 'Lavadora de carga frontal', 90, 300),
  (77, 15, 77, 'Horno', 'KitchenAid', 'EFG123', 'Eléctrico', 'Horno eléctrico de convección', 60, 350),
  (78, 15, 78, 'Licuadora', 'Oster', 'HIJ456', 'Vaso', 'Licuadora de alta velocidad', 15, 100),
  (79, 16, 79, 'Televisor', 'Samsung', 'KLM789', 'LED', 'Televisor inteligente', 180, 250),
  (80, 16, 80, 'Horno', 'LG', 'NOP123', 'Eléctrico', 'Horno eléctrico', 60, 350),
  (81, 16, 81, 'Licuadora', 'Ninja', 'QRS456', 'Vaso', 'Licuadora profesional', 20, 150),
  (82, 16, 82, 'Cafetera', 'Hamilton Beach', 'TUV789', 'Automática', 'Cafetera automática', 30, 200),
  (83, 16, 83, 'Tostadora', 'Black+Decker', 'YZA456', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (84, 17, 84, 'Refrigeradora', 'Samsung', 'BCD789', 'Side-by-side', 'Refrigeradora side-by-side', 240, 500),
  (85, 17, 85, 'Lavadora', 'Maytag', 'EFG123', 'Carga superior', 'Lavadora de carga superior', 90, 320),
  (86, 17, 86, 'Secadora', 'LG', 'HIJ456', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 400),
  (87, 17, 87, 'Licuadora', 'Blendtec', 'KLM789', 'Vaso', 'Licuadora de alta velocidad', 20, 150),
  (88, 17, 88, 'Cafetera', 'Nespresso', 'NOP123', 'Automática', 'Cafetera automática', 30, 200),
  (89, 17, 89, 'Tostadora', 'Cuisinart', 'QRS456', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (90, 17, 90, 'Microondas', 'Panasonic', 'TUV789', 'Empotrable', 'Microondas empotrable', 10, 120),
  (91, 18, 91, 'Televisor', 'Sony', 'YZA456', 'QLED', 'Televisor QLED', 150, 300),
  (92, 18, 92, 'Refrigeradora', 'LG', 'BCD789', 'Doble puerta', 'Refrigeradora de dos puertas', 240, 450),
  (93, 18, 93, 'Lavadora', 'Samsung', 'EFG123', 'Carga frontal', 'Lavadora de carga frontal', 90, 280),
  (94, 18, 94, 'Licuadora', 'Vitamix', 'HIJ456', 'Vaso', 'Licuadora de alta potencia', 15, 120),
  (95, 18, 95, 'Cafetera', 'Breville', 'KLM789', 'Automática', 'Cafetera automática', 30, 200),
  (96, 19, 96, 'Refrigeradora', 'Whirlpool', 'NOP123', 'Francesa', 'Refrigeradora francesa', 240, 400),
  (97, 19, 97, 'Lavadora', 'LG', 'QRS456', 'Carga superior', 'Lavadora de carga superior', 90, 300),
  (98, 19, 98, 'Secadora', 'Samsung', 'TUV789', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 350),
  (99, 19, 99, 'Licuadora', 'KitchenAid', 'YZA456', 'Vaso', 'Licuadora de alta velocidad', 20, 150),
  (100, 19, 100, 'Cafetera', 'Hamilton Beach', 'BCD789', 'Automática', 'Cafetera automática', 30, 200),
  (101, 19, 101, 'Tostadora', 'Black+Decker', 'EFG123', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (102, 19, 102, 'Microondas', 'Panasonic', 'HIJ456', 'Empotrable', 'Microondas empotrable', 10, 120),
  (103, 20, 103, 'Televisor', 'Samsung', 'KLM789', 'LED', 'Televisor inteligente', 180, 350),
  (104, 20, 104, 'Refrigeradora', 'LG', 'NOP123', 'Side-by-side', 'Refrigeradora side-by-side', 240, 500),
  (105, 20, 105, 'Lavadora', 'Whirlpool', 'QRS456', 'Carga frontal', 'Lavadora de carga frontal', 90, 280),
  (106, 20, 106, 'Licuadora', 'Ninja', 'TUV789', 'Vaso', 'Licuadora profesional', 20, 150),
  (107, 20, 107, 'Cafetera', 'Keurig', 'YZA456', 'Automática', 'Cafetera automática', 30, 200),
  (108, 20, 108, 'Tostadora', 'Cuisinart', 'BCD789', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (109, 21, 109, 'Refrigeradora', 'Samsung', 'EFG123', 'Doble puerta', 'Refrigeradora de dos puertas', 240, 450),
  (110, 21, 110, 'Lavadora', 'Maytag', 'HIJ456', 'Carga superior', 'Lavadora de carga superior', 90, 300),
  (111, 21, 111, 'Secadora', 'LG', 'KLM789', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 350),
  (112, 21, 112, 'Licuadora', 'Blendtec', 'NOP123', 'Vaso', 'Licuadora de alta velocidad', 20, 150),
  (113, 21, 113, 'Cafetera', 'Nespresso', 'QRS456', 'Automática', 'Cafetera automática', 30, 200),
  (114, 21, 114, 'Tostadora', 'Black+Decker', 'TUV789', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (115, 21, 115, 'Microondas', 'Panasonic', 'YZA456', 'Empotrable', 'Microondas empotrable', 10, 120),
  (116, 22, 116, 'Televisor', 'Sony', 'BCD789', 'LED', 'Televisor de alta definición', 120, 200),
  (117, 22, 117, 'Refrigeradora', 'LG', 'EFG123', 'Doble puerta', 'Refrigeradora con congelador', 240, 400),
  (118, 22, 118, 'Lavadora', 'Whirlpool', 'HIJ456', 'Carga frontal', 'Lavadora de carga frontal', 90, 300),
  (119, 22, 119, 'Horno', 'KitchenAid', 'KLM789', 'Eléctrico', 'Horno eléctrico de convección', 60, 350),
  (120, 22, 120, 'Licuadora', 'Oster', 'NOP123', 'Vaso', 'Licuadora de alta velocidad', 15, 100),
  (121, 23, 121, 'Televisor', 'Samsung', 'QRS456', 'LED', 'Televisor inteligente', 180, 250),
  (122, 23, 122, 'Horno', 'LG', 'TUV789', 'Eléctrico', 'Horno eléctrico', 60, 350),
  (123, 23, 123, 'Licuadora', 'Ninja', 'YZA456', 'Vaso', 'Licuadora profesional', 20, 150),
  (124, 23, 124, 'Cafetera', 'Hamilton Beach', 'BCD789', 'Automática', 'Cafetera automática', 30, 200),
  (125, 23, 125, 'Tostadora', 'Black+Decker', 'EFG123', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (126, 23, 126, 'Microondas', 'Panasonic', 'HIJ456', 'Empotrable', 'Microondas empotrable', 10, 120),
  (127, 24, 127, 'Refrigeradora', 'Samsung', 'KLM789', 'Doble puerta', 'Refrigeradora de dos puertas', 240, 450),
  (128, 24, 128, 'Lavadora', 'Maytag', 'NOP123', 'Carga frontal', 'Lavadora de carga frontal', 90, 280),
  (129, 24, 129, 'Secadora', 'LG', 'QRS456', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 350),
  (130, 24, 130, 'Licuadora', 'Blendtec', 'TUV789', 'Vaso', 'Licuadora de alta velocidad', 20, 150),
  (131, 24, 131, 'Cafetera', 'Nespresso', 'YZA456', 'Automática', 'Cafetera automática', 30, 200),
  (132, 24, 132, 'Tostadora', 'Cuisinart', 'BCD789', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (133, 25, 133, 'Refrigeradora', 'Samsung', 'EFG123', 'Side-by-side', 'Refrigeradora side-by-side', 240, 500),
  (134, 25, 134, 'Lavadora', 'Maytag', 'HIJ456', 'Carga superior', 'Lavadora de carga superior', 90, 300),
  (135, 25, 135, 'Secadora', 'LG', 'KLM789', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 350),
  (136, 25, 136, 'Licuadora', 'Blendtec', 'NOP123', 'Vaso', 'Licuadora de alta velocidad', 20, 150),
  (137, 25, 137, 'Cafetera', 'Nespresso', 'QRS456', 'Automática', 'Cafetera automática', 30, 200),
  (138, 25, 138, 'Tostadora', 'Cuisinart', 'TUV789', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (139, 25, 139, 'Microondas', 'Panasonic', 'YZA456', 'Empotrable', 'Microondas empotrable', 10, 120),
  (140, 26, 140, 'Televisor', 'Sony', 'BCD789', 'QLED', 'Televisor QLED', 150, 300),
  (141, 26, 141, 'Refrigeradora', 'LG', 'EFG123', 'Doble puerta', 'Refrigeradora de dos puertas', 240, 450),
  (142, 26, 142, 'Lavadora', 'Samsung', 'HIJ456', 'Carga frontal', 'Lavadora de carga frontal', 90, 280),
  (143, 26, 143, 'Licuadora', 'Vitamix', 'KLM789', 'Vaso', 'Licuadora de alta potencia', 15, 120),
  (144, 26, 144, 'Cafetera', 'Breville', 'NOP123', 'Automática', 'Cafetera automática', 30, 200),
  (145, 27, 145, 'Refrigeradora', 'Whirlpool', 'QRS456', 'Francesa', 'Refrigeradora francesa', 240, 400),
  (146, 27, 146, 'Lavadora', 'LG', 'TUV789', 'Carga superior', 'Lavadora de carga superior', 90, 300),
  (147, 27, 147, 'Secadora', 'Samsung', 'YZA456', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 350),
  (148, 27, 148, 'Licuadora', 'KitchenAid', 'BCD789', 'Vaso', 'Licuadora de alta velocidad', 20, 150),
  (149, 27, 149, 'Cafetera', 'Hamilton Beach', 'EFG123', 'Automática', 'Cafetera automática', 30, 200),
  (150, 27, 150, 'Tostadora', 'Black+Decker', 'HIJ456', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (151, 27, 151, 'Microondas', 'Panasonic', 'KLM789', 'Empotrable', 'Microondas empotrable', 10, 120),
  (152, 28, 152, 'Televisor', 'Samsung', 'NOP123', 'LED', 'Televisor inteligente', 180, 350),
  (153, 28, 153, 'Refrigeradora', 'LG', 'QRS456', 'Side-by-side', 'Refrigeradora side-by-side', 240, 500),
  (154, 28, 154, 'Lavadora', 'Whirlpool', 'TUV789', 'Carga frontal', 'Lavadora de carga frontal', 90, 280),
  (155, 29, 155, 'Licuadora', 'Ninja', 'YZA456', 'Vaso', 'Licuadora profesional', 20, 150),
  (156, 29, 156, 'Cafetera', 'Keurig', 'BCD789', 'Automática', 'Cafetera automática', 30, 200),
  (157, 29, 157, 'Tostadora', 'Cuisinart', 'EFG123', 'De ranura', 'Tostadora de ranura larga', 5, 70),
  (158, 29, 158, 'Refrigeradora', 'Samsung', 'HIJ456', 'Doble puerta', 'Refrigeradora de dos puertas', 240, 450),
  (159, 30, 159, 'Lavadora', 'Maytag', 'KLM789', 'Carga superior', 'Lavadora de carga superior', 90, 300),
  (160, 30, 160, 'Secadora', 'LG', 'NOP123', 'Eléctrica', 'Secadora de ropa eléctrica', 120, 350);

-- Inserts para la tabla "aviso"
INSERT INTO aviso (idAviso, fecha, mensaje, descripcionDetallada, idUsuario, idElectrodomestico)
VALUES
  (1, '2023-06-25', 'Consumo de energía fuera de lo común', 'Tu licuadora está consumiendo demasiada energía', 1, 5),
  (2, '2023-06-26', 'Problema de temperatura en el refrigerador', 'La temperatura del refrigerador parece estar demasiado alta. Verifica su configuración.', 2, 12),
  (3, '2023-06-27', 'Exceso de tiempo de uso en el televisor', 'Has utilizado el televisor durante un período prolongado. Recuerda apagarlo cuando no lo estés utilizando.', 3, 19),
  (4, '2023-06-28', 'Posible fuga de agua en la lavadora', 'Se ha detectado una posible fuga de agua en la lavadora. Verifica su funcionamiento y revisa las conexiones.', 4, 8),
  (5, '2023-06-29', 'Alarma de seguridad activada', 'La alarma de seguridad de tu propiedad ha sido activada. Asegúrate de revisar el estado de tu hogar.', 5, 15),
  (6, '2023-06-30', 'Sobrecarga en el horno', 'Se ha detectado una sobrecarga en el horno. Verifica la carga eléctrica y evita conectar varios electrodomésticos a la vez.', 1, 22),
  (7, '2023-07-01', 'Consumo excesivo de energía en el aire acondicionado', 'El aire acondicionado está consumiendo una cantidad elevada de energía. Considera ajustar su configuración para ahorrar energía.', 2, 29),
  (8, '2023-07-02', 'Posible falla en la cafetera', 'La cafetera ha presentado un comportamiento irregular. Revisa su funcionamiento y realiza el mantenimiento necesario.', 3, 4),
  (9, '2023-07-03', 'Batería baja en el sistema de seguridad', 'La batería del sistema de seguridad está baja. Reemplázala para garantizar un correcto funcionamiento.', 4, 11),
  (10, '2023-07-04', 'Desconexión del sistema de iluminación exterior', 'Se ha detectado una desconexión en el sistema de iluminación exterior. Verifica las conexiones y restablece el suministro.', 5, 18),
  (11, '2023-07-05', 'Exceso de consumo en el hervidor de agua', 'El hervidor de agua está consumiendo más energía de lo habitual. Verifica su estado y realiza el mantenimiento correspondiente.', 1, 25),
  (12, '2023-07-06', 'Problema de conexión en el televisor', 'Se ha perdido la conexión del televisor. Verifica los cables y reinicia el dispositivo.', 2, 2),
  (13, '2023-07-07', 'Fallo en el sistema de riego', 'El sistema de riego ha presentado un fallo en su funcionamiento. Revisa las válvulas y realiza las reparaciones necesarias.', 3, 9),
  (14, '2023-07-08', 'Luz intermitente en el horno microondas', 'La luz del horno microondas parpadea de manera intermitente. Verifica su funcionamiento y realiza el mantenimiento correspondiente.', 4, 16),
  (15, '2023-07-09', 'Consumo elevado en el sistema de calefacción', 'El sistema de calefacción está consumiendo más energía de lo habitual. Considera ajustar la temperatura y programarlo de manera eficiente.', 5, 23),
  (16, '2023-07-10', 'Posible fuga de gas en la cocina', 'Se ha detectado una posible fuga de gas en la cocina. Verifica las conexiones y asegúrate de tener una ventilación adecuada.', 1, 30),
  (17, '2023-07-11', 'Consumo anormal en la secadora de ropa', 'La secadora de ropa está consumiendo más energía de lo habitual. Verifica su funcionamiento y realiza el mantenimiento correspondiente.', 2, 7),
  (18, '2023-07-12', 'Fallo en el sistema de alarma', 'El sistema de alarma ha presentado un fallo en su funcionamiento. Revisa los sensores y restablece la configuración.', 3, 14),
  (19, '2023-07-13', 'Exceso de tiempo de uso en la computadora', 'Has utilizado la computadora durante un período prolongado. Recuerda apagarla o ponerla en modo de suspensión cuando no la estés utilizando.', 4, 21),
  (20, '2023-07-14', 'Problema de temperatura en el congelador', 'La temperatura del congelador parece estar demasiado baja. Verifica su configuración y realiza el mantenimiento correspondiente.', 5, 28),
  (21, '2023-07-15', 'Fallo en el sistema de iluminación interior', 'El sistema de iluminación interior ha presentado un fallo en su funcionamiento. Revisa las bombillas y restablece el suministro.', 1, 3),
  (22, '2023-07-16', 'Consumo de energía inusual en el televisor', 'El televisor está consumiendo una cantidad inusual de energía. Verifica su configuración y realiza el mantenimiento necesario.', 2, 10),
  (23, '2023-07-17', 'Falla en el sistema de riego automático', 'El sistema de riego automático ha presentado una falla en su funcionamiento. Verifica los programadores y realiza las reparaciones necesarias.', 3, 17),
  (24, '2023-07-18', 'Consumo excesivo de energía en la nevera', 'La nevera está consumiendo una cantidad elevada de energía. Considera revisar su estado y ajustar la temperatura para ahorrar energía.', 4, 24),
  (25, '2023-07-19', 'Problema de encendido en el horno', 'El horno ha presentado problemas al encenderse. Verifica las conexiones y realiza el mantenimiento necesario.', 5, 1),
  (26, '2023-07-20', 'Fallo en el sistema de iluminación exterior', 'El sistema de iluminación exterior ha presentado un fallo en su funcionamiento. Revisa las bombillas y restablece el suministro.', 1, 6),
  (27, '2023-07-21', 'Consumo de energía inusual en la lavadora', 'La lavadora está consumiendo una cantidad inusual de energía. Verifica su configuración y realiza el mantenimiento necesario.', 2, 13),
  (28, '2023-07-22', 'Falla en el sistema de alarma', 'El sistema de alarma ha presentado un fallo en su funcionamiento. Revisa los sensores y restablece la configuración.', 3, 20),
  (29, '2023-07-23', 'Exceso de tiempo de uso en la computadora', 'Has utilizado la computadora durante un período prolongado. Recuerda apagarla o ponerla en modo de suspensión cuando no la estés utilizando.', 4, 27),
  (30, '2023-07-24', 'Problema de temperatura en el congelador', 'La temperatura del congelador parece estar demasiado baja. Verifica su configuración y realiza el mantenimiento correspondiente.', 5, 4);

-- Inserts para la tabla "medidor_luz"
INSERT INTO medidor_luz (idMedidorLuz, marca, modelo, fechaInstalacion, capacidad, consumoMes, idEmpresaproveedora)
VALUES
    (1, 'Schneider Electric', 'iEM3150', '2022-01-01', 100.0000, 50.0000, 1),
    (2, 'ABB', 'B21', '2021-05-15', 200.0000, 80.0000, 2),
    (3, 'Siemens', 'PAC3200', '2023-03-10', 150.0000, 60.0000, 3);

-- Inserts para la tabla "reporte_consumo_proveedora"
INSERT INTO reporte_consumo_proveedora (idReporteConsumoProveedora, idMedidorLuz, consumoTotal, fecha)
VALUES
    (1, 1, 500, '2023-06-01'),
    (2, 2, 800, '2023-06-01'),
    (3, 3, 600, '2023-06-01');