/*
 * @fileoverview    {VehiculoEnTransitoDTO}
 *
 * @version         2.0
 *
 * @author          Dyson Arley Parra Tilano <dysontilano@gmail.com>
 *
 * @copyright       Dyson Parra
 * @see             github.com/DysonParra
 *
 * History
 * @version 1.0     Implementation done.
 * @version 2.0     Documentation added.
 */
package com.project.dev.api.dto;

import java.math.BigInteger;
import java.math.BigDecimal;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * TODO: Description of {@code VehiculoEnTransitoDTO}.
 *
 * @author Dyson Parra
 * @since Java 17 (LTS), Gradle 7.3
 */
@AllArgsConstructor
@Builder
@Data
@NoArgsConstructor
public class VehiculoEnTransitoDTO {

    private String strPlaca;
    private String strCaso;
    private String strConductor;
    private Integer intCedula;
    private String strMateriaPrimaProducto;
    private String strPlanta;
    private String strClienteProveedor;
    private String strOrigenDestino;
    private String strTransportadora;
    private String strFechaEntrada;
    private String strHoraEntrada;
    private String strFechaPesoVacio;
    private String strHoraPesoVacio;
    private String strFechaDespachoPlanta;
    private String strHoraDespachoPlanta;
    private String strFechaPesoLleno;
    private String strHoraPesoLleno;
    private String strFechaSalida;
    private String strHoraSalida;
    private Integer intBruto;
    private Integer intTara;
    private Integer intNeto;
    private Integer intNoTiquete;
    private String strNoShipment;
    private String strNoSello;
    private String strNoR;
    private String strNoContenedor;
    private String strOperario;
    private String strNickOperario;
    private String strObservaciones;
    private String strNoInterno;
    private String strTipoVehiculo;
    private String strEntregadoPor;
    private String strRecibidoPor;
    private String strDireccion;
    private String strCiv;
    private String strIdVehiculo;
    private String strTipoProducto;
    private String strIdProducto;
    private String strUnidad;
    private String strVolumen;

}
