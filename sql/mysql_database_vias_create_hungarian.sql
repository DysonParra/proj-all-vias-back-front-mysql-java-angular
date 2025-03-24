DROP DATABASE IF EXISTS `vias`;
CREATE DATABASE IF NOT EXISTS `vias`;
USE `vias`;

CREATE TABLE IF NOT EXISTS `configuracion` (
    `strCodigo`                         VARCHAR(100)        NOT NULL,
    `strParametro`                      VARCHAR(100)            NULL DEFAULT NULL,
    `strValor`                          VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`strCodigo` ASC)
);

CREATE TABLE IF NOT EXISTS `conductor` (
    `intCedula`                         INT                 NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strEstado`                         VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`intCedula` ASC)
);

CREATE TABLE IF NOT EXISTS `codigo_identificacion_vial` (
    `strCiv`                            VARCHAR(50)         NOT NULL,
    `strNombreEjeVia`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strNombreExtremoInicial`           VARCHAR(100)            NULL DEFAULT NULL,
    `strNombreExtremoFinal`             VARCHAR(100)            NULL DEFAULT NULL,
    `strTipoMalla`                      VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`strCiv` ASC)
);

CREATE TABLE IF NOT EXISTS `cliente` (
    `strNit`                            VARCHAR(50)         NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strDireccion`                      VARCHAR(100)            NULL DEFAULT NULL,
    `strTelefono`                       VARCHAR(100)            NULL DEFAULT NULL,
    `strFax`                            VARCHAR(100)            NULL DEFAULT NULL,
    `strObservaciones`                  VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`strNit` ASC)
);

CREATE TABLE IF NOT EXISTS `ayudante` (
    `intCedula`                         INT                 NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strEstado`                         VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`intCedula` ASC)
);

CREATE TABLE IF NOT EXISTS `materia_prima` (
    `strCodigo`                         VARCHAR(100)        NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strDetalles`                       VARCHAR(250)            NULL DEFAULT NULL,
    `strTipo`                           VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`strCodigo` ASC)
);

CREATE TABLE IF NOT EXISTS `indicador` (
    `strCodigo`                         VARCHAR(100)        NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strTamanoTrama`                    VARCHAR(10)             NULL DEFAULT NULL,
    `strPosicionInicialPeso`            VARCHAR(10)             NULL DEFAULT NULL,
    `strTotalDatosPeso`                 VARCHAR(10)             NULL DEFAULT NULL,
    `strCaracterFinTrama`               VARCHAR(10)             NULL DEFAULT NULL,
    `strCaracterInicioTrama`            VARCHAR(10)             NULL DEFAULT NULL,
    PRIMARY KEY (`strCodigo` ASC)
);

CREATE TABLE IF NOT EXISTS `usuario` (
    `intCedula`                         INT                 NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strApellido`                       VARCHAR(100)            NULL DEFAULT NULL,
    `strNick`                           VARCHAR(50)             NULL DEFAULT NULL,
    `strTipo`                           VARCHAR(50)             NULL DEFAULT NULL,
    `strPassword`                       VARCHAR(200)            NULL DEFAULT NULL,
    PRIMARY KEY (`intCedula` ASC)
);

CREATE TABLE IF NOT EXISTS `transportadora` (
    `strNombre`                         VARCHAR(100)        NOT NULL,
    `strNit`                            VARCHAR(50)             NULL DEFAULT NULL,
    `strDireccion`                      VARCHAR(100)            NULL DEFAULT NULL,
    `strTelefono`                       VARCHAR(50)             NULL DEFAULT NULL,
    `strFax`                            VARCHAR(100)            NULL DEFAULT NULL,
    `strObservaciones`                  VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`strNombre` ASC)
);

CREATE TABLE IF NOT EXISTS `proveedor` (
    `strNit`                            VARCHAR(50)         NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strDireccion`                      VARCHAR(100)            NULL DEFAULT NULL,
    `strTelefono`                       VARCHAR(100)            NULL DEFAULT NULL,
    `strFax`                            VARCHAR(100)            NULL DEFAULT NULL,
    `strObservaciones`                  VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`strNit` ASC)
);

CREATE TABLE IF NOT EXISTS `producto` (
    `strCodigo`                         VARCHAR(100)        NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strDetalles`                       VARCHAR(100)            NULL DEFAULT NULL,
    `strTipo`                           VARCHAR(100)            NULL DEFAULT NULL,
    PRIMARY KEY (`strCodigo` ASC)
);

CREATE TABLE IF NOT EXISTS `planta` (
    `strCodigo`                         VARCHAR(100)        NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strDetalles`                       VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`strCodigo` ASC)
);

CREATE TABLE IF NOT EXISTS `origen` (
    `strCodigo`                         VARCHAR(100)        NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strDetalles`                       VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`strCodigo` ASC)
);

CREATE TABLE IF NOT EXISTS `destino` (
    `strCodigo`                         VARCHAR(100)        NOT NULL,
    `strNombre`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strDetalles`                       VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`strCodigo` ASC)
);

CREATE TABLE IF NOT EXISTS `vehiculo` (
    `strCodigo`                         VARCHAR(100)        NOT NULL,
    `strPlacaVehiculo`                  VARCHAR(50)             NULL DEFAULT NULL,
    `strNumeroInterno`                  VARCHAR(50)             NULL DEFAULT NULL,
    `strIdTransportador`                VARCHAR(100)            NULL DEFAULT NULL,
    `strTara`                           VARCHAR(50)             NULL DEFAULT NULL,
    `strEjes`                           VARCHAR(50)             NULL DEFAULT NULL,
    `strVolumenVehiculo`                VARCHAR(50)             NULL DEFAULT NULL,
    `strInterno`                        VARCHAR(50)             NULL DEFAULT NULL,
    `strPatronado`                      VARCHAR(50)             NULL DEFAULT NULL,
    `strObservacion`                    VARCHAR(200)            NULL DEFAULT NULL,
    PRIMARY KEY (`strCodigo` ASC)
);

CREATE TABLE IF NOT EXISTS `vehiculo_en_transito` (
    `strPlaca`                          VARCHAR(100)        NOT NULL,
    `strCaso`                           VARCHAR(100)            NULL DEFAULT NULL,
    `strConductor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `intCedula`                         INT                     NULL DEFAULT NULL,
    `strMateriaPrimaProducto`           VARCHAR(100)            NULL DEFAULT NULL,
    `strPlanta`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strClienteProveedor`               VARCHAR(100)            NULL DEFAULT NULL,
    `strOrigenDestino`                  VARCHAR(100)            NULL DEFAULT NULL,
    `strTransportadora`                 VARCHAR(100)            NULL DEFAULT NULL,
    `strFechaEntrada`                   VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraEntrada`                    VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaPesoVacio`                 VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraPesoVacio`                  VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaDespachoPlanta`            VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraDespachoPlanta`             VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaPesoLleno`                 VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraPesoLleno`                  VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaSalida`                    VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraSalida`                     VARCHAR(20)             NULL DEFAULT NULL,
    `intBruto`                          INT                     NULL DEFAULT NULL,
    `intTara`                           INT                     NULL DEFAULT NULL,
    `intNeto`                           INT                     NULL DEFAULT NULL,
    `intNoTiquete`                      INT                     NULL DEFAULT NULL,
    `strNoShipment`                     VARCHAR(100)            NULL DEFAULT NULL,
    `strNoSello`                        VARCHAR(100)            NULL DEFAULT NULL,
    `strNoR`                            VARCHAR(100)            NULL DEFAULT NULL,
    `strNoContenedor`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strOperario`                       VARCHAR(100)            NULL DEFAULT NULL,
    `strNickOperario`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strObservaciones`                  VARCHAR(250)            NULL DEFAULT NULL,
    `strNoInterno`                      VARCHAR(100)            NULL DEFAULT NULL,
    `strTipoVehiculo`                   VARCHAR(50)             NULL DEFAULT NULL,
    `strEntregadoPor`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strRecibidoPor`                    VARCHAR(100)            NULL DEFAULT NULL,
    `strDireccion`                      VARCHAR(100)            NULL DEFAULT NULL,
    `strCiv`                            VARCHAR(50)             NULL DEFAULT NULL,
    `strIdVehiculo`                     VARCHAR(100)            NULL DEFAULT NULL,
    `strTipoProducto`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strIdProducto`                     VARCHAR(100)            NULL DEFAULT NULL,
    `strUnidad`                         VARCHAR(50)             NULL DEFAULT NULL,
    `strVolumen`                        VARCHAR(50)             NULL DEFAULT NULL,
    PRIMARY KEY (`strPlaca` ASC)
);

CREATE TABLE IF NOT EXISTS `registro_eliminado` (
    `strPlaca`                          VARCHAR(100)        NOT NULL,
    `strCaso`                           VARCHAR(100)            NULL DEFAULT NULL,
    `strConductor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `intCedula`                         INT                     NULL DEFAULT NULL,
    `strMateriaPrimaProducto`           VARCHAR(100)            NULL DEFAULT NULL,
    `strPlanta`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strClienteProveedor`               VARCHAR(100)            NULL DEFAULT NULL,
    `strOrigenDestino`                  VARCHAR(100)            NULL DEFAULT NULL,
    `strTransportadora`                 VARCHAR(100)            NULL DEFAULT NULL,
    `strFechaEntrada`                   VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraEntrada`                    VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaPesoVacio`                 VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraPesoVacio`                  VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaDespachoPlanta`            VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraDespachoPlanta`             VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaPesoLleno`                 VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraPesoLleno`                  VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaSalida`                    VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraSalida`                     VARCHAR(20)             NULL DEFAULT NULL,
    `intBruto`                          INT                     NULL DEFAULT NULL,
    `intTara`                           INT                     NULL DEFAULT NULL,
    `intNeto`                           INT                     NULL DEFAULT NULL,
    `strNoShipment`                     VARCHAR(100)            NULL DEFAULT NULL,
    `strNoSello`                        VARCHAR(100)            NULL DEFAULT NULL,
    `strNoR`                            VARCHAR(100)            NULL DEFAULT NULL,
    `strNoContenedor`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strOperario`                       VARCHAR(100)            NULL DEFAULT NULL,
    `strNickOperario`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strObservaciones`                  VARCHAR(250)            NULL DEFAULT NULL,
    PRIMARY KEY (`strPlaca` ASC)
);

CREATE TABLE IF NOT EXISTS `ingreso` (
    `intNoTiquete`                      INT                 NOT NULL,
    `strPlaca`                          VARCHAR(10)             NULL DEFAULT NULL,
    `strConductor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `intCedula`                         INT                     NULL DEFAULT NULL,
    `strMateriaPrima`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strPlanta`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strProveedor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `strOrigen`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strTransportadora`                 VARCHAR(100)            NULL DEFAULT NULL,
    `strFechaEntrada`                   VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraEntrada`                    VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaPesoVacio`                 VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraPesoVacio`                  VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaDespachoPlanta`            VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraDespachoPlanta`             VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaPesoLleno`                 VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraPesoLleno`                  VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaSalida`                    VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraSalida`                     VARCHAR(20)             NULL DEFAULT NULL,
    `intBruto`                          INT                     NULL DEFAULT NULL,
    `intTara`                           INT                     NULL DEFAULT NULL,
    `intNeto`                           INT                     NULL DEFAULT NULL,
    `strNoShipment`                     VARCHAR(100)            NULL DEFAULT NULL,
    `strNoSello`                        VARCHAR(100)            NULL DEFAULT NULL,
    `strNoR`                            VARCHAR(100)            NULL DEFAULT NULL,
    `strNoContenedor`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strOperario`                       VARCHAR(100)            NULL DEFAULT NULL,
    `strNickOperario`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strObservaciones`                  VARCHAR(250)            NULL DEFAULT NULL,
    `strNoInterno`                      VARCHAR(100)            NULL DEFAULT NULL,
    `strCodigo`                         VARCHAR(50)             NULL DEFAULT NULL,
    `strTipoVehiculo`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strTipoProducto`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strDireccion`                      VARCHAR(200)            NULL DEFAULT NULL,
    `strEntregadoPor`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strRecibidoPor`                    VARCHAR(100)            NULL DEFAULT NULL,
    `strUnidad`                         VARCHAR(50)             NULL DEFAULT NULL,
    `strVolumen`                        VARCHAR(50)             NULL DEFAULT NULL,
    PRIMARY KEY (`intNoTiquete` ASC)
);

CREATE TABLE IF NOT EXISTS `despacho` (
    `intNoTiquete`                      INT                 NOT NULL,
    `strPlaca`                          VARCHAR(10)             NULL DEFAULT NULL,
    `strConductor`                      VARCHAR(100)            NULL DEFAULT NULL,
    `intCedula`                         INT                     NULL DEFAULT NULL,
    `strProducto`                       VARCHAR(100)            NULL DEFAULT NULL,
    `strPlanta`                         VARCHAR(100)            NULL DEFAULT NULL,
    `strCliente`                        VARCHAR(50)             NULL DEFAULT NULL,
    `strDestino`                        VARCHAR(100)            NULL DEFAULT NULL,
    `strTransportadora`                 VARCHAR(100)            NULL DEFAULT NULL,
    `strFechaEntrada`                   VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraEntrada`                    VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaPesoVacio`                 VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraPesoVacio`                  VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaDespachoPlanta`            VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraDespachoPlanta`             VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaPesoLleno`                 VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraPesoLleno`                  VARCHAR(20)             NULL DEFAULT NULL,
    `strFechaSalida`                    VARCHAR(20)             NULL DEFAULT NULL,
    `strHoraSalida`                     VARCHAR(20)             NULL DEFAULT NULL,
    `intBruto`                          INT                     NULL DEFAULT NULL,
    `intTara`                           INT                     NULL DEFAULT NULL,
    `intNeto`                           INT                     NULL DEFAULT NULL,
    `strNoShipment`                     VARCHAR(100)            NULL DEFAULT NULL,
    `strNoSello`                        VARCHAR(100)            NULL DEFAULT NULL,
    `strNoR`                            VARCHAR(100)            NULL DEFAULT NULL,
    `strNoContenedor`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strOperario`                       VARCHAR(100)            NULL DEFAULT NULL,
    `strNickOperario`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strObservaciones`                  VARCHAR(250)            NULL DEFAULT NULL,
    `strNoInterno`                      VARCHAR(50)             NULL DEFAULT NULL,
    `strCodigo`                         VARCHAR(50)             NULL DEFAULT NULL,
    `strTipoVehiculo`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strTipoProducto`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strIdProducto`                     VARCHAR(100)            NULL DEFAULT NULL,
    `strDireccion`                      VARCHAR(100)            NULL DEFAULT NULL,
    `strEntregadoPor`                   VARCHAR(100)            NULL DEFAULT NULL,
    `strRecibidoPor`                    VARCHAR(100)            NULL DEFAULT NULL,
    `strCiv`                            VARCHAR(50)             NULL DEFAULT NULL,
    `strUnidad`                         VARCHAR(50)             NULL DEFAULT NULL,
    `strVolumen`                        VARCHAR(50)             NULL DEFAULT NULL,
    PRIMARY KEY (`intNoTiquete` ASC)
);

-- ---------------------------- --
-- --------FOREIGN KEYS-------- --
-- ---------------------------- --

ALTER TABLE `Vehiculo`
    ADD INDEX `vehiculoIdTraspotadorIdx` (`strIdTransportador` ASC),
    ADD CONSTRAINT `vehiculoIdTraspotador`
        FOREIGN KEY (`strIdTransportador`)
        REFERENCES `Transportadora` (`strNombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `VehiculoEnTransito`
    ADD INDEX `vehiculoEnTransitoPlantaIdx` (`strPlanta` ASC),
    ADD INDEX `vehiculoEnTransitoTransportadoraIdx` (`strTransportadora` ASC),
    ADD INDEX `vehiculoEnTransitoCivIdx` (`strCiv` ASC),
    ADD INDEX `vehiculoEnTransitoIdVehiculoIdx` (`strIdVehiculo` ASC),
    ADD INDEX `vehiculoEnTransitoIdProductoIdx` (`strIdProducto` ASC),
    ADD CONSTRAINT `vehiculoEnTransitoPlanta`
        FOREIGN KEY (`strPlanta`)
        REFERENCES `Planta` (`strCodigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculoEnTransitoTransportadora`
        FOREIGN KEY (`strTransportadora`)
        REFERENCES `Transportadora` (`strNombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculoEnTransitoCiv`
        FOREIGN KEY (`strCiv`)
        REFERENCES `CodigoIdentificacionVial` (`strCiv`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculoEnTransitoIdVehiculo`
        FOREIGN KEY (`strIdVehiculo`)
        REFERENCES `Vehiculo` (`strCodigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `vehiculoEnTransitoIdProducto`
        FOREIGN KEY (`strIdProducto`)
        REFERENCES `Producto` (`strCodigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `RegistroEliminado`
    ADD INDEX `registroEliminadoTransportadoraIdx` (`strPlanta` ASC),
    ADD INDEX `registroEliminadoPlantaIdx` (`strTransportadora` ASC),
    ADD CONSTRAINT `registroEliminadoPlanta`
        FOREIGN KEY (`strTransportadora`)
        REFERENCES `Planta` (`strCodigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `registroEliminadoTransportadora`
        FOREIGN KEY (`strPlanta`)
        REFERENCES `Transportadora` (`strNombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `Ingreso`
    ADD INDEX `ingresoCodMateriaPrimaIdx` (`strMateriaPrima` ASC),
    ADD INDEX `ingresoIdPlantaIdx` (`strPlanta` ASC),
    ADD INDEX `ingresoIdTranspotadorIdx` (`strTransportadora` ASC),
    ADD INDEX `ingresoOrigenIdx` (`strOrigen` ASC),
    ADD CONSTRAINT `ingresoCodMateriaPrima`
        FOREIGN KEY (`strMateriaPrima`)
        REFERENCES `MateriaPrima` (`strCodigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `ingresoIdPlanta`
        FOREIGN KEY (`strPlanta`)
        REFERENCES `Planta` (`strCodigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `ingresoIdTranspotador`
        FOREIGN KEY (`strTransportadora`)
        REFERENCES `Transportadora` (`strNombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `ingresoOrigen`
        FOREIGN KEY (`strOrigen`)
        REFERENCES `Origen` (`strCodigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;

ALTER TABLE `Despacho`
    ADD INDEX `despachoCodProductoIdx` (`strIdProducto` ASC),
    ADD INDEX `despachoIdClienteIdx` (`strCliente` ASC),
    ADD INDEX `despachoIdPlantaIdx` (`strPlanta` ASC),
    ADD INDEX `despachoIdTranspotadorIdx` (`strTransportadora` ASC),
    ADD INDEX `despachoCodIvIdx` (`strCiv` ASC),
    ADD INDEX `despachoDestinoIdx` (`strDestino` ASC),
    ADD CONSTRAINT `despachoCodProducto`
        FOREIGN KEY (`strIdProducto`)
        REFERENCES `Producto` (`strCodigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despachoIdCliente`
        FOREIGN KEY (`strCliente`)
        REFERENCES `Cliente` (`strNit`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despachoIdPlanta`
        FOREIGN KEY (`strPlanta`)
        REFERENCES `Planta` (`strCodigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despachoIdTranspotador`
        FOREIGN KEY (`strTransportadora`)
        REFERENCES `Transportadora` (`strNombre`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despachoCodIv`
        FOREIGN KEY (`strCiv`)
        REFERENCES `CodigoIdentificacionVial` (`strCiv`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    ADD CONSTRAINT `despachoDestino`
        FOREIGN KEY (`strDestino`)
        REFERENCES `Destino` (`strCodigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION;
