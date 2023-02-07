DROP DATABASE IF EXISTS `vias`;
CREATE DATABASE IF NOT EXISTS `vias`;
USE `vias`;

CREATE TABLE IF NOT EXISTS `configuracion` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `parametro`                         VARCHAR(100)            NULL DEFAULT NULL,
    `valor`                             VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `conductor` (
    `cedula`                            INT                 NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `estado`                            VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`cedula` ASC)
);

CREATE TABLE IF NOT EXISTS `codigo_identificacion_vial` (
    `civ`                               VARCHAR(50)         NOT NULL,
    `nombre_eje_via`                    VARCHAR(100)            NULL DEFAULT NULL,
    `nombre_extremo_inicial`            VARCHAR(100)            NULL DEFAULT NULL,
    `nombre_extremo_final`              VARCHAR(100)            NULL DEFAULT NULL,
    `tipo_malla`                        VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`civ` ASC)
);

CREATE TABLE IF NOT EXISTS `cliente` (
    `nit`                               VARCHAR(50)         NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `direccion`                         VARCHAR(100)            NULL DEFAULT NULL,
    `telefono`                          VARCHAR(100)            NULL DEFAULT NULL,
    `fax`                               VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`nit` ASC)
);

CREATE TABLE IF NOT EXISTS `ayudante` (
    `cedula`                            INT                 NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `estado`                            VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`cedula` ASC)
);

CREATE TABLE IF NOT EXISTS `materia_prima` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `detalles`                          VARCHAR(250)            NULL DEFAULT NULL,
    `tipo`                              VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `indicador` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `tamano_trama`                      VARCHAR(10)             NULL DEFAULT NULL,
    `posicion_inicial_peso`             VARCHAR(10)             NULL DEFAULT NULL,
    `total_datos_peso`                  VARCHAR(10)             NULL DEFAULT NULL,
    `caracter_fin_trama`                VARCHAR(10)             NULL DEFAULT NULL,
    `caracter_inicio_trama`             VARCHAR(10)             NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `usuario` (
    `cedula`                            INT                 NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `apellido`                          VARCHAR(100)            NULL DEFAULT NULL,
    `nick`                              VARCHAR(50)             NULL DEFAULT NULL,
    `tipo`                              VARCHAR(50)             NULL DEFAULT NULL,
    `password`                          VARCHAR(200)            NULL DEFAULT NULL,
    PRIMARY KEY (`cedula` ASC)
);

CREATE TABLE IF NOT EXISTS `transportadora` (
    `nombre`                            VARCHAR(100)        NOT NULL,
    `nit`                               VARCHAR(50)             NULL DEFAULT NULL,
    `direccion`                         VARCHAR(100)            NULL DEFAULT NULL,
    `telefono`                          VARCHAR(50)             NULL DEFAULT NULL,
    `fax`                               VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`nombre` ASC)
);

CREATE TABLE IF NOT EXISTS `proveedor` (
    `nit`                               VARCHAR(50)         NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `direccion`                         VARCHAR(100)            NULL DEFAULT NULL,
    `telefono`                          VARCHAR(100)            NULL DEFAULT NULL,
    `fax`                               VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`nit` ASC)
);

CREATE TABLE IF NOT EXISTS `producto` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `detalles`                          VARCHAR(100)            NULL DEFAULT NULL,
    `tipo`                              VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `planta` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `detalles`                          VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `origen` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `detalles`                          VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `destino` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `detalles`                          VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `vehiculo` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `placa_vehiculo`                    VARCHAR(50)             NULL DEFAULT NULL,
    `numero_interno`                    VARCHAR(50)             NULL DEFAULT NULL,
    `id_transportador`                  VARCHAR(100)            NULL DEFAULT NULL,
    `tara`                              VARCHAR(50)             NULL DEFAULT NULL,
    `ejes`                              VARCHAR(50)             NULL DEFAULT NULL,
    `volumen_vehiculo`                  VARCHAR(50)             NULL DEFAULT NULL,
    `interno`                           VARCHAR(50)             NULL DEFAULT NULL,
    `patronado`                         VARCHAR(50)             NULL DEFAULT NULL,
    `observacion`                       VARCHAR(200)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `vehiculo_en_transito` (
    `placa`                             VARCHAR(100)        NOT NULL,
    `caso`                              VARCHAR(100)            NULL DEFAULT NULL,
    `conductor`                         VARCHAR(100)            NULL DEFAULT NULL,
    `cedula`                            INT                     NULL DEFAULT NULL,
    `materia_prima_producto`            VARCHAR(100)            NULL DEFAULT NULL,
    `planta`                            VARCHAR(100)            NULL DEFAULT NULL,
    `cliente_proveedor`                 VARCHAR(100)            NULL DEFAULT NULL,
    `origen_destino`                    VARCHAR(100)            NULL DEFAULT NULL,
    `transportadora`                    VARCHAR(100)            NULL DEFAULT NULL,
    `fecha_entrada`                     VARCHAR(20)             NULL DEFAULT NULL,
    `hora_entrada`                      VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_peso_vacio`                  VARCHAR(20)             NULL DEFAULT NULL,
    `hora_peso_vacio`                   VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_despacho_planta`             VARCHAR(20)             NULL DEFAULT NULL,
    `hora_despacho_planta`              VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_peso_lleno`                  VARCHAR(20)             NULL DEFAULT NULL,
    `hora_peso_lleno`                   VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_salida`                      VARCHAR(20)             NULL DEFAULT NULL,
    `hora_salida`                       VARCHAR(20)             NULL DEFAULT NULL,
    `bruto`                             INT                     NULL DEFAULT NULL,
    `tara`                              INT                     NULL DEFAULT NULL,
    `neto`                              INT                     NULL DEFAULT NULL,
    `no_tiquete`                        INT                     NULL DEFAULT NULL,
    `no_shipment`                       VARCHAR(100)            NULL DEFAULT NULL,
    `no_sello`                          VARCHAR(100)            NULL DEFAULT NULL,
    `no_r`                              VARCHAR(100)            NULL DEFAULT NULL,
    `no_contenedor`                     VARCHAR(100)            NULL DEFAULT NULL,
    `operario`                          VARCHAR(100)            NULL DEFAULT NULL,
    `nick_operario`                     VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    `no_interno`                        VARCHAR(100)            NULL DEFAULT NULL,
    `tipo_vehiculo`                     VARCHAR(50)             NULL DEFAULT NULL,
    `entregado_por`                     VARCHAR(100)            NULL DEFAULT NULL,
    `recibido_por`                      VARCHAR(100)            NULL DEFAULT NULL,
    `direccion`                         VARCHAR(100)            NULL DEFAULT NULL,
    `civ`                               VARCHAR(50)             NULL DEFAULT NULL,
    `id_vehiculo`                       VARCHAR(100)            NULL DEFAULT NULL,
    `tipo_producto`                     VARCHAR(100)            NULL DEFAULT NULL,
    `id_producto`                       VARCHAR(100)            NULL DEFAULT NULL,
    `unidad`                            VARCHAR(50)             NULL DEFAULT NULL,
    `volumen`                           VARCHAR(50)             NULL DEFAULT NULL,
    PRIMARY KEY (`placa` ASC)
);

CREATE TABLE IF NOT EXISTS `registro_eliminado` (
    `placa`                             VARCHAR(100)        NOT NULL,
    `caso`                              VARCHAR(100)            NULL DEFAULT NULL,
    `conductor`                         VARCHAR(100)            NULL DEFAULT NULL,
    `cedula`                            INT                     NULL DEFAULT NULL,
    `materia_prima_producto`            VARCHAR(100)            NULL DEFAULT NULL,
    `planta`                            VARCHAR(100)            NULL DEFAULT NULL,
    `cliente_proveedor`                 VARCHAR(100)            NULL DEFAULT NULL,
    `origen_destino`                    VARCHAR(100)            NULL DEFAULT NULL,
    `transportadora`                    VARCHAR(100)            NULL DEFAULT NULL,
    `fecha_entrada`                     VARCHAR(20)             NULL DEFAULT NULL,
    `hora_entrada`                      VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_peso_vacio`                  VARCHAR(20)             NULL DEFAULT NULL,
    `hora_peso_vacio`                   VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_despacho_planta`             VARCHAR(20)             NULL DEFAULT NULL,
    `hora_despacho_planta`              VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_peso_lleno`                  VARCHAR(20)             NULL DEFAULT NULL,
    `hora_peso_lleno`                   VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_salida`                      VARCHAR(20)             NULL DEFAULT NULL,
    `hora_salida`                       VARCHAR(20)             NULL DEFAULT NULL,
    `bruto`                             INT                     NULL DEFAULT NULL,
    `tara`                              INT                     NULL DEFAULT NULL,
    `neto`                              INT                     NULL DEFAULT NULL,
    `no_shipment`                       VARCHAR(100)            NULL DEFAULT NULL,
    `no_sello`                          VARCHAR(100)            NULL DEFAULT NULL,
    `no_r`                              VARCHAR(100)            NULL DEFAULT NULL,
    `no_contenedor`                     VARCHAR(100)            NULL DEFAULT NULL,
    `operario`                          VARCHAR(100)            NULL DEFAULT NULL,
    `nick_operario`                     VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`placa` ASC)
);

CREATE TABLE IF NOT EXISTS `ingreso` (
    `no_tiquete`                        INT                 NOT NULL,
    `placa`                             VARCHAR(10)             NULL DEFAULT NULL,
    `conductor`                         VARCHAR(100)            NULL DEFAULT NULL,
    `cedula`                            INT                     NULL DEFAULT NULL,
    `materia_prima`                     VARCHAR(100)            NULL DEFAULT NULL,
    `planta`                            VARCHAR(100)            NULL DEFAULT NULL,
    `proveedor`                         VARCHAR(100)            NULL DEFAULT NULL,
    `origen`                            VARCHAR(100)            NULL DEFAULT NULL,
    `transportadora`                    VARCHAR(100)            NULL DEFAULT NULL,
    `fecha_entrada`                     VARCHAR(20)             NULL DEFAULT NULL,
    `hora_entrada`                      VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_peso_vacio`                  VARCHAR(20)             NULL DEFAULT NULL,
    `hora_peso_vacio`                   VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_despacho_planta`             VARCHAR(20)             NULL DEFAULT NULL,
    `hora_despacho_planta`              VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_peso_lleno`                  VARCHAR(20)             NULL DEFAULT NULL,
    `hora_peso_lleno`                   VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_salida`                      VARCHAR(20)             NULL DEFAULT NULL,
    `hora_salida`                       VARCHAR(20)             NULL DEFAULT NULL,
    `bruto`                             INT                     NULL DEFAULT NULL,
    `tara`                              INT                     NULL DEFAULT NULL,
    `neto`                              INT                     NULL DEFAULT NULL,
    `no_shipment`                       VARCHAR(100)            NULL DEFAULT NULL,
    `no_sello`                          VARCHAR(100)            NULL DEFAULT NULL,
    `no_r`                              VARCHAR(100)            NULL DEFAULT NULL,
    `no_contenedor`                     VARCHAR(100)            NULL DEFAULT NULL,
    `operario`                          VARCHAR(100)            NULL DEFAULT NULL,
    `nick_operario`                     VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    `no_interno`                        VARCHAR(100)            NULL DEFAULT NULL,
    `codigo`                            VARCHAR(50)             NULL DEFAULT NULL,
    `tipo_vehiculo`                     VARCHAR(100)            NULL DEFAULT NULL,
    `tipo_producto`                     VARCHAR(100)            NULL DEFAULT NULL,
    `direccion`                         VARCHAR(200)            NULL DEFAULT NULL,
    `entregado_por`                     VARCHAR(100)            NULL DEFAULT NULL,
    `recibido_por`                      VARCHAR(100)            NULL DEFAULT NULL,
    `unidad`                            VARCHAR(50)             NULL DEFAULT NULL,
    `volumen`                           VARCHAR(50)             NULL DEFAULT NULL,
    PRIMARY KEY (`no_tiquete` ASC)
);

CREATE TABLE IF NOT EXISTS `despacho` (
    `no_tiquete`                        INT                 NOT NULL,
    `placa`                             VARCHAR(10)             NULL DEFAULT NULL,
    `conductor`                         VARCHAR(100)            NULL DEFAULT NULL,
    `cedula`                            INT                     NULL DEFAULT NULL,
    `producto`                          VARCHAR(100)            NULL DEFAULT NULL,
    `planta`                            VARCHAR(100)            NULL DEFAULT NULL,
    `cliente`                           VARCHAR(50)             NULL DEFAULT NULL,
    `destino`                           VARCHAR(100)            NULL DEFAULT NULL,
    `transportadora`                    VARCHAR(100)            NULL DEFAULT NULL,
    `fecha_entrada`                     VARCHAR(20)             NULL DEFAULT NULL,
    `hora_entrada`                      VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_peso_vacio`                  VARCHAR(20)             NULL DEFAULT NULL,
    `hora_peso_vacio`                   VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_despacho_planta`             VARCHAR(20)             NULL DEFAULT NULL,
    `hora_despacho_planta`              VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_peso_lleno`                  VARCHAR(20)             NULL DEFAULT NULL,
    `hora_peso_lleno`                   VARCHAR(20)             NULL DEFAULT NULL,
    `fecha_salida`                      VARCHAR(20)             NULL DEFAULT NULL,
    `hora_salida`                       VARCHAR(20)             NULL DEFAULT NULL,
    `bruto`                             INT                     NULL DEFAULT NULL,
    `tara`                              INT                     NULL DEFAULT NULL,
    `neto`                              INT                     NULL DEFAULT NULL,
    `no_shipment`                       VARCHAR(100)            NULL DEFAULT NULL,
    `no_sello`                          VARCHAR(100)            NULL DEFAULT NULL,
    `no_r`                              VARCHAR(100)            NULL DEFAULT NULL,
    `no_contenedor`                     VARCHAR(100)            NULL DEFAULT NULL,
    `operario`                          VARCHAR(100)            NULL DEFAULT NULL,
    `nick_operario`                     VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    `no_interno`                        VARCHAR(50)             NULL DEFAULT NULL,
    `codigo`                            VARCHAR(50)             NULL DEFAULT NULL,
    `tipo_vehiculo`                     VARCHAR(100)            NULL DEFAULT NULL,
    `tipo_producto`                     VARCHAR(100)            NULL DEFAULT NULL,
    `id_producto`                       VARCHAR(100)            NULL DEFAULT NULL,
    `direccion`                         VARCHAR(100)            NULL DEFAULT NULL,
    `entregado_por`                     VARCHAR(100)            NULL DEFAULT NULL,
    `recibido_por`                      VARCHAR(100)            NULL DEFAULT NULL,
    `civ`                               VARCHAR(50)             NULL DEFAULT NULL,
    `unidad`                            VARCHAR(50)             NULL DEFAULT NULL,
    `volumen`                           VARCHAR(50)             NULL DEFAULT NULL,
    PRIMARY KEY (`no_tiquete` ASC)
);

-- ---------------------------- --
-- --------FOREIGN KEYS-------- --
-- ---------------------------- --

ALTER TABLE `vehiculo`
    ADD INDEX `vehiculo_id_traspotador_idx` (`id_transportador` ASC),
    ADD CONSTRAINT `vehiculo_id_traspotador`
        FOREIGN KEY (`id_transportador`)
        REFERENCES `transportadora` (`nombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `vehiculo_en_transito`
    ADD INDEX `vehiculo_en_transito_planta_idx` (`planta` ASC),
    ADD INDEX `vehiculo_en_transito_transportadora_idx` (`transportadora` ASC),
    ADD INDEX `vehiculo_en_transito_civ_idx` (`civ` ASC),
    ADD INDEX `vehiculo_en_transito_id_vehiculo_idx` (`id_vehiculo` ASC),
    ADD INDEX `vehiculo_en_transito_id_producto_idx` (`id_producto` ASC),
    ADD CONSTRAINT `vehiculo_en_transito_planta`
        FOREIGN KEY (`planta`)
        REFERENCES `planta` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculo_en_transito_transportadora`
        FOREIGN KEY (`transportadora`)
        REFERENCES `transportadora` (`nombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculo_en_transito_civ`
        FOREIGN KEY (`civ`)
        REFERENCES `codigo_identificacion_vial` (`civ`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculo_en_transito_id_vehiculo`
        FOREIGN KEY (`id_vehiculo`)
        REFERENCES `vehiculo` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculo_en_transito_id_producto`
        FOREIGN KEY (`id_producto`)
        REFERENCES `producto` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `registro_eliminado`
    ADD INDEX `registro_eliminado_transportadora_idx` (`planta` ASC),
    ADD INDEX `registro_eliminado_planta_idx` (`transportadora` ASC),
    ADD CONSTRAINT `registro_eliminado_planta`
        FOREIGN KEY (`transportadora`)
        REFERENCES `planta` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `registro_eliminado_transportadora`
        FOREIGN KEY (`planta`)
        REFERENCES `transportadora` (`nombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `ingreso`
    ADD INDEX `ingreso_cod_materia_prima_idx` (`materia_prima` ASC),
    ADD INDEX `ingreso_id_planta_idx` (`planta` ASC),
    ADD INDEX `ingreso_id_transpotador_idx` (`transportadora` ASC),
    ADD INDEX `ingreso_origen_idx` (`origen` ASC),
    ADD CONSTRAINT `ingreso_cod_materia_prima`
        FOREIGN KEY (`materia_prima`)
        REFERENCES `materia_prima` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `ingreso_id_planta`
        FOREIGN KEY (`planta`)
        REFERENCES `planta` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `ingreso_id_transpotador`
        FOREIGN KEY (`transportadora`)
        REFERENCES `transportadora` (`nombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `ingreso_origen`
        FOREIGN KEY (`origen`)
        REFERENCES `origen` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `despacho`
    ADD INDEX `despacho_cod_producto_idx` (`id_producto` ASC),
    ADD INDEX `despacho_id_cliente_idx` (`cliente` ASC),
    ADD INDEX `despacho_id_planta_idx` (`planta` ASC),
    ADD INDEX `despacho_id_transpotador_idx` (`transportadora` ASC),
    ADD INDEX `despacho_cod_iv_idx` (`civ` ASC),
    ADD INDEX `despacho_destino_idx` (`destino` ASC),
    ADD CONSTRAINT `despacho_cod_producto`
        FOREIGN KEY (`id_producto`)
        REFERENCES `producto` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despacho_id_cliente`
        FOREIGN KEY (`cliente`)
        REFERENCES `cliente` (`nit`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despacho_id_planta`
        FOREIGN KEY (`planta`)
        REFERENCES `planta` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despacho_id_transpotador`
        FOREIGN KEY (`transportadora`)
        REFERENCES `transportadora` (`nombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despacho_cod_iv`
        FOREIGN KEY (`civ`)
        REFERENCES `codigo_identificacion_vial` (`civ`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despacho_destino`
        FOREIGN KEY (`destino`)
        REFERENCES `destino` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;
