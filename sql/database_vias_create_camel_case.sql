DROP DATABASE IF EXISTS vias;
CREATE DATABASE IF NOT EXISTS vias;
USE vias;

CREATE TABLE IF NOT EXISTS `Configuracion` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `parametro`                         VARCHAR(100)            NULL DEFAULT NULL,
    `valor`                             VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `Conductor` (
    `cedula`                            INT                 NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `estado`                            VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`cedula` ASC)
);

CREATE TABLE IF NOT EXISTS `CodigoIdentificacionVial` (
    `civ`                               VARCHAR(50)         NOT NULL,
    `nombreEjeVia`                      VARCHAR(100)            NULL DEFAULT NULL,
    `nombreExtremoInicial`              VARCHAR(100)            NULL DEFAULT NULL,
    `nombreExtremoFinal`                VARCHAR(100)            NULL DEFAULT NULL,
    `tipoMalla`                         VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`civ` ASC)
);

CREATE TABLE IF NOT EXISTS `Cliente` (
    `nit`                               VARCHAR(50)         NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `direccion`                         VARCHAR(100)            NULL DEFAULT NULL,
    `telefono`                          VARCHAR(100)            NULL DEFAULT NULL,
    `fax`                               VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`nit` ASC)
);

CREATE TABLE IF NOT EXISTS `Ayudante` (
    `cedula`                            INT                 NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `estado`                            VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`cedula` ASC)
);

CREATE TABLE IF NOT EXISTS `MateriaPrima` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `detalles`                          VARCHAR(250)            NULL DEFAULT NULL,
    `tipo`                              VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `Indicador` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `tamanoTrama`                       VARCHAR(10)             NULL DEFAULT NULL,
    `posicionInicialPeso`               VARCHAR(10)             NULL DEFAULT NULL,
    `totalDatosPeso`                    VARCHAR(10)             NULL DEFAULT NULL,
    `caracterFinTrama`                  VARCHAR(10)             NULL DEFAULT NULL,
    `caracterInicioTrama`               VARCHAR(10)             NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `Usuario` (
    `cedula`                            INT                 NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `apellido`                          VARCHAR(100)            NULL DEFAULT NULL,
    `nick`                              VARCHAR(50)             NULL DEFAULT NULL,
    `tipo`                              VARCHAR(50)             NULL DEFAULT NULL,
    `password`                          VARCHAR(200)            NULL DEFAULT NULL,
    PRIMARY KEY (`cedula` ASC)
);

CREATE TABLE IF NOT EXISTS `Transportadora` (
    `nombre`                            VARCHAR(100)        NOT NULL,
    `nit`                               VARCHAR(50)             NULL DEFAULT NULL,
    `direccion`                         VARCHAR(100)            NULL DEFAULT NULL,
    `telefono`                          VARCHAR(50)             NULL DEFAULT NULL,
    `fax`                               VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`nombre` ASC)
);

CREATE TABLE IF NOT EXISTS `Proveedor` (
    `nit`                               VARCHAR(50)         NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `direccion`                         VARCHAR(100)            NULL DEFAULT NULL,
    `telefono`                          VARCHAR(100)            NULL DEFAULT NULL,
    `fax`                               VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`nit` ASC)
);

CREATE TABLE IF NOT EXISTS `Producto` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `detalles`                          VARCHAR(100)            NULL DEFAULT NULL,
    `tipo`                              VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `Planta` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `detalles`                          VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `Origen` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `detalles`                          VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `Destino` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `nombre`                            VARCHAR(100)            NULL DEFAULT NULL,
    `detalles`                          VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `Vehiculo` (
    `codigo`                            VARCHAR(100)        NOT NULL,
    `placaVehiculo`                     VARCHAR(50)             NULL DEFAULT NULL,
    `numeroInterno`                     VARCHAR(50)             NULL DEFAULT NULL,
    `idTransportador`                   VARCHAR(100)            NULL DEFAULT NULL,
    `tara`                              VARCHAR(50)             NULL DEFAULT NULL,
    `ejes`                              VARCHAR(50)             NULL DEFAULT NULL,
    `volumenVehiculo`                   VARCHAR(50)             NULL DEFAULT NULL,
    `interno`                           VARCHAR(50)             NULL DEFAULT NULL,
    `patronado`                         VARCHAR(50)             NULL DEFAULT NULL,
    `observacion`                       VARCHAR(200)            NULL DEFAULT NULL,
    PRIMARY KEY (`codigo` ASC)
);

CREATE TABLE IF NOT EXISTS `VehiculoEnTransito` (
    `placa`                             VARCHAR(100)        NOT NULL,
    `caso`                              VARCHAR(100)            NULL DEFAULT NULL,
    `conductor`                         VARCHAR(100)            NULL DEFAULT NULL,
    `cedula`                            INT                     NULL DEFAULT NULL,
    `materiaPrimaProducto`              VARCHAR(100)            NULL DEFAULT NULL,
    `planta`                            VARCHAR(100)            NULL DEFAULT NULL,
    `clienteProveedor`                  VARCHAR(100)            NULL DEFAULT NULL,
    `origenDestino`                     VARCHAR(100)            NULL DEFAULT NULL,
    `transportadora`                    VARCHAR(100)            NULL DEFAULT NULL,
    `fechaEntrada`                      VARCHAR(20)             NULL DEFAULT NULL,
    `horaEntrada`                       VARCHAR(20)             NULL DEFAULT NULL,
    `fechaPesoVacio`                    VARCHAR(20)             NULL DEFAULT NULL,
    `horaPesoVacio`                     VARCHAR(20)             NULL DEFAULT NULL,
    `fechaDespachoPlanta`               VARCHAR(20)             NULL DEFAULT NULL,
    `horaDespachoPlanta`                VARCHAR(20)             NULL DEFAULT NULL,
    `fechaPesoLleno`                    VARCHAR(20)             NULL DEFAULT NULL,
    `horaPesoLleno`                     VARCHAR(20)             NULL DEFAULT NULL,
    `fechaSalida`                       VARCHAR(20)             NULL DEFAULT NULL,
    `horaSalida`                        VARCHAR(20)             NULL DEFAULT NULL,
    `bruto`                             INT                     NULL DEFAULT NULL,
    `tara`                              INT                     NULL DEFAULT NULL,
    `neto`                              INT                     NULL DEFAULT NULL,
    `noTiquete`                         INT                     NULL DEFAULT NULL,
    `noShipment`                        VARCHAR(100)            NULL DEFAULT NULL,
    `noSello`                           VARCHAR(100)            NULL DEFAULT NULL,
    `noR`                               VARCHAR(100)            NULL DEFAULT NULL,
    `noContenedor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `operario`                          VARCHAR(100)            NULL DEFAULT NULL,
    `nickOperario`                      VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    `noInterno`                         VARCHAR(100)            NULL DEFAULT NULL,
    `tipoVehiculo`                      VARCHAR(50)             NULL DEFAULT NULL,
    `entregadoPor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `recibidoPor`                       VARCHAR(100)            NULL DEFAULT NULL,
    `direccion`                         VARCHAR(100)            NULL DEFAULT NULL,
    `civ`                               VARCHAR(50)             NULL DEFAULT NULL,
    `idVehiculo`                        VARCHAR(100)            NULL DEFAULT NULL,
    `tipoProducto`                      VARCHAR(100)            NULL DEFAULT NULL,
    `idProducto`                        VARCHAR(100)            NULL DEFAULT NULL,
    `unidad`                            VARCHAR(50)             NULL DEFAULT NULL,
    `volumen`                           VARCHAR(50)             NULL DEFAULT NULL,
    PRIMARY KEY (`placa` ASC)
);

CREATE TABLE IF NOT EXISTS `RegistroEliminado` (
    `placa`                             VARCHAR(100)        NOT NULL,
    `caso`                              VARCHAR(100)            NULL DEFAULT NULL,
    `conductor`                         VARCHAR(100)            NULL DEFAULT NULL,
    `cedula`                            INT                     NULL DEFAULT NULL,
    `materiaPrimaProducto`              VARCHAR(100)            NULL DEFAULT NULL,
    `planta`                            VARCHAR(100)            NULL DEFAULT NULL,
    `clienteProveedor`                  VARCHAR(100)            NULL DEFAULT NULL,
    `origenDestino`                     VARCHAR(100)            NULL DEFAULT NULL,
    `transportadora`                    VARCHAR(100)            NULL DEFAULT NULL,
    `fechaEntrada`                      VARCHAR(20)             NULL DEFAULT NULL,
    `horaEntrada`                       VARCHAR(20)             NULL DEFAULT NULL,
    `fechaPesoVacio`                    VARCHAR(20)             NULL DEFAULT NULL,
    `horaPesoVacio`                     VARCHAR(20)             NULL DEFAULT NULL,
    `fechaDespachoPlanta`               VARCHAR(20)             NULL DEFAULT NULL,
    `horaDespachoPlanta`                VARCHAR(20)             NULL DEFAULT NULL,
    `fechaPesoLleno`                    VARCHAR(20)             NULL DEFAULT NULL,
    `horaPesoLleno`                     VARCHAR(20)             NULL DEFAULT NULL,
    `fechaSalida`                       VARCHAR(20)             NULL DEFAULT NULL,
    `horaSalida`                        VARCHAR(20)             NULL DEFAULT NULL,
    `bruto`                             INT                     NULL DEFAULT NULL,
    `tara`                              INT                     NULL DEFAULT NULL,
    `neto`                              INT                     NULL DEFAULT NULL,
    `noShipment`                        VARCHAR(100)            NULL DEFAULT NULL,
    `noSello`                           VARCHAR(100)            NULL DEFAULT NULL,
    `noR`                               VARCHAR(100)            NULL DEFAULT NULL,
    `noContenedor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `operario`                          VARCHAR(100)            NULL DEFAULT NULL,
    `nickOperario`                      VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`placa` ASC)
);

CREATE TABLE IF NOT EXISTS `Ingreso` (
    `noTiquete`                         INT                 NOT NULL,
    `placa`                             VARCHAR(10)             NULL DEFAULT NULL,
    `conductor`                         VARCHAR(100)            NULL DEFAULT NULL,
    `cedula`                            INT                     NULL DEFAULT NULL,
    `materiaPrima`                      VARCHAR(100)            NULL DEFAULT NULL,
    `planta`                            VARCHAR(100)            NULL DEFAULT NULL,
    `proveedor`                         VARCHAR(100)            NULL DEFAULT NULL,
    `origen`                            VARCHAR(100)            NULL DEFAULT NULL,
    `transportadora`                    VARCHAR(100)            NULL DEFAULT NULL,
    `fechaEntrada`                      VARCHAR(20)             NULL DEFAULT NULL,
    `horaEntrada`                       VARCHAR(20)             NULL DEFAULT NULL,
    `fechaPesoVacio`                    VARCHAR(20)             NULL DEFAULT NULL,
    `horaPesoVacio`                     VARCHAR(20)             NULL DEFAULT NULL,
    `fechaDespachoPlanta`               VARCHAR(20)             NULL DEFAULT NULL,
    `horaDespachoPlanta`                VARCHAR(20)             NULL DEFAULT NULL,
    `fechaPesoLleno`                    VARCHAR(20)             NULL DEFAULT NULL,
    `horaPesoLleno`                     VARCHAR(20)             NULL DEFAULT NULL,
    `fechaSalida`                       VARCHAR(20)             NULL DEFAULT NULL,
    `horaSalida`                        VARCHAR(20)             NULL DEFAULT NULL,
    `bruto`                             INT                     NULL DEFAULT NULL,
    `tara`                              INT                     NULL DEFAULT NULL,
    `neto`                              INT                     NULL DEFAULT NULL,
    `noShipment`                        VARCHAR(100)            NULL DEFAULT NULL,
    `noSello`                           VARCHAR(100)            NULL DEFAULT NULL,
    `noR`                               VARCHAR(100)            NULL DEFAULT NULL,
    `noContenedor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `operario`                          VARCHAR(100)            NULL DEFAULT NULL,
    `nickOperario`                      VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    `noInterno`                         VARCHAR(100)            NULL DEFAULT NULL,
    `codigo`                            VARCHAR(50)             NULL DEFAULT NULL,
    `tipoVehiculo`                      VARCHAR(100)            NULL DEFAULT NULL,
    `tipoProducto`                      VARCHAR(100)            NULL DEFAULT NULL,
    `direccion`                         VARCHAR(200)            NULL DEFAULT NULL,
    `entregadoPor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `recibidoPor`                       VARCHAR(100)            NULL DEFAULT NULL,
    `unidad`                            VARCHAR(50)             NULL DEFAULT NULL,
    `volumen`                           VARCHAR(50)             NULL DEFAULT NULL,
    PRIMARY KEY (`noTiquete` ASC)
);

CREATE TABLE IF NOT EXISTS `Despacho` (
    `noTiquete`                         INT                 NOT NULL,
    `placa`                             VARCHAR(10)             NULL DEFAULT NULL,
    `conductor`                         VARCHAR(100)            NULL DEFAULT NULL,
    `cedula`                            INT                     NULL DEFAULT NULL,
    `producto`                          VARCHAR(100)            NULL DEFAULT NULL,
    `planta`                            VARCHAR(100)            NULL DEFAULT NULL,
    `cliente`                           VARCHAR(100)            NULL DEFAULT NULL,
    `destino`                           VARCHAR(100)            NULL DEFAULT NULL,
    `transportadora`                    VARCHAR(100)            NULL DEFAULT NULL,
    `fechaEntrada`                      VARCHAR(20)             NULL DEFAULT NULL,
    `horaEntrada`                       VARCHAR(20)             NULL DEFAULT NULL,
    `fechaPesoVacio`                    VARCHAR(20)             NULL DEFAULT NULL,
    `horaPesoVacio`                     VARCHAR(20)             NULL DEFAULT NULL,
    `fechaDespachoPlanta`               VARCHAR(20)             NULL DEFAULT NULL,
    `horaDespachoPlanta`                VARCHAR(20)             NULL DEFAULT NULL,
    `fechaPesoLleno`                    VARCHAR(20)             NULL DEFAULT NULL,
    `horaPesoLleno`                     VARCHAR(20)             NULL DEFAULT NULL,
    `fechaSalida`                       VARCHAR(20)             NULL DEFAULT NULL,
    `horaSalida`                        VARCHAR(20)             NULL DEFAULT NULL,
    `bruto`                             INT                     NULL DEFAULT NULL,
    `tara`                              INT                     NULL DEFAULT NULL,
    `neto`                              INT                     NULL DEFAULT NULL,
    `noShipment`                        VARCHAR(100)            NULL DEFAULT NULL,
    `noSello`                           VARCHAR(100)            NULL DEFAULT NULL,
    `noR`                               VARCHAR(100)            NULL DEFAULT NULL,
    `noContenedor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `operario`                          VARCHAR(100)            NULL DEFAULT NULL,
    `nickOperario`                      VARCHAR(100)            NULL DEFAULT NULL,
    `observaciones`                     VARCHAR(250)            NULL DEFAULT NULL,
    `noInterno`                         VARCHAR(50)             NULL DEFAULT NULL,
    `codigo`                            VARCHAR(50)             NULL DEFAULT NULL,
    `tipoVehiculo`                      VARCHAR(100)            NULL DEFAULT NULL,
    `tipoProducto`                      VARCHAR(100)            NULL DEFAULT NULL,
    `idProducto`                        VARCHAR(50)             NULL DEFAULT NULL,
    `direccion`                         VARCHAR(100)            NULL DEFAULT NULL,
    `entregadoPor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `recibidoPor`                       VARCHAR(100)            NULL DEFAULT NULL,
    `civ`                               VARCHAR(50)             NULL DEFAULT NULL,
    `unidad`                            VARCHAR(50)             NULL DEFAULT NULL,
    `volumen`                           VARCHAR(50)             NULL DEFAULT NULL,
    PRIMARY KEY (`noTiquete` ASC)
);

-- ---------------------------- --
-- --------FOREIGN KEYS-------- --
-- ---------------------------- --

ALTER TABLE `Vehiculo`
    ADD INDEX `vehiculoIdTraspotadorIdx` (`idTransportador` ASC),
    ADD CONSTRAINT `vehiculoIdTraspotador`
        FOREIGN KEY (`idTransportador`)
        REFERENCES `Transportadora` (`nombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `VehiculoEnTransito`
    ADD INDEX `vehiculoEnTransitoPlantaIdx` (`planta` ASC),
    ADD INDEX `vehiculoEnTransitoTransportadoraIdx` (`transportadora` ASC),
    ADD INDEX `vehiculoEnTransitoCivIdx` (`civ` ASC),
    ADD INDEX `vehiculoEnTransitoIdVehiculoIdx` (`idVehiculo` ASC),
    ADD INDEX `vehiculoEnTransitoIdProductoIdx` (`idProducto` ASC),
    ADD CONSTRAINT `vehiculoEnTransitoPlanta`
        FOREIGN KEY (`planta`)
        REFERENCES `Planta` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculoEnTransitoTransportadora`
        FOREIGN KEY (`transportadora`)
        REFERENCES `Transportadora` (`nombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculoEnTransitoCiv`
        FOREIGN KEY (`civ`)
        REFERENCES `CodigoIdentificacionVial` (`civ`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculoEnTransitoIdVehiculo`
        FOREIGN KEY (`idVehiculo`)
        REFERENCES `Vehiculo` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculoEnTransitoIdProducto`
        FOREIGN KEY (`idProducto`)
        REFERENCES `Producto` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `RegistroEliminado`
    ADD INDEX `registroEliminadoTransportadoraIdx` (`planta` ASC),
    ADD INDEX `registroEliminadoPlantaIdx` (`transportadora` ASC),
    ADD CONSTRAINT `registroEliminadoPlanta`
        FOREIGN KEY (`transportadora`)
        REFERENCES `Planta` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `registroEliminadoTransportadora`
        FOREIGN KEY (`planta`)
        REFERENCES `Transportadora` (`nombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `Ingreso`
    ADD INDEX `ingresoCodMateriaPrimaIdx` (`materiaPrima` ASC),
    ADD INDEX `ingresoIdPlantaIdx` (`planta` ASC),
    ADD INDEX `ingresoIdTranspotadorIdx` (`transportadora` ASC),
    ADD INDEX `ingresoOrigenIdx` (`origen` ASC),
    ADD CONSTRAINT `ingresoCodMateriaPrima`
        FOREIGN KEY (`materiaPrima`)
        REFERENCES `MateriaPrima` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `ingresoIdPlanta`
        FOREIGN KEY (`planta`)
        REFERENCES `Planta` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `ingresoIdTranspotador`
        FOREIGN KEY (`transportadora`)
        REFERENCES `Transportadora` (`nombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `ingresoOrigen`
        FOREIGN KEY (`origen`)
        REFERENCES `Origen` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `Despacho`
    ADD INDEX `despachoCodProductoIdx` (`idProducto` ASC),
    ADD INDEX `despachoIdClienteIdx` (`cliente` ASC),
    ADD INDEX `despachoIdPlantaIdx` (`planta` ASC),
    ADD INDEX `despachoIdTranspotadorIdx` (`transportadora` ASC),
    ADD INDEX `despachoCodIvIdx` (`civ` ASC),
    ADD INDEX `despachoDestinoIdx` (`destino` ASC),
    ADD CONSTRAINT `despachoCodProducto`
        FOREIGN KEY (`idProducto`)
        REFERENCES `Producto` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despachoIdCliente`
        FOREIGN KEY (`cliente`)
        REFERENCES `Cliente` (`nit`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despachoIdPlanta`
        FOREIGN KEY (`planta`)
        REFERENCES `Planta` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despachoIdTranspotador`
        FOREIGN KEY (`transportadora`)
        REFERENCES `Transportadora` (`nombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despachoCodIv`
        FOREIGN KEY (`civ`)
        REFERENCES `CodigoIdentificacionVial` (`civ`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despachoDestino`
        FOREIGN KEY (`destino`)
        REFERENCES `Destino` (`codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;