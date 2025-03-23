/*
 * @fileoverview    {Despacho}
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
package com.project.dev.api.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * TODO: Description of {@code Despacho}.
 *
 * @author Dyson Parra
 * @since Java 17 (LTS), Gradle 7.3
 */
@Entity
@Table(name = "\"Despacho\"")
@AllArgsConstructor
@Builder
@Data
@NoArgsConstructor
public class Despacho implements Serializable {

    @Id
    @Basic(optional = false)
    @Column(nullable = false)
    private Integer intNoTiquete;
    private String strPlaca;
    private String strConductor;
    private Integer intCedula;
    private String strProducto;
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
    private String strNoShipment;
    private String strNoSello;
    private String strNoR;
    private String strNoContenedor;
    private String strOperario;
    private String strNickOperario;
    private String strObservaciones;
    private String strNoInterno;
    private String strCodigo;
    private String strTipoVehiculo;
    private String strTipoProducto;
    private String strDireccion;
    private String strEntregadoPor;
    private String strRecibidoPor;
    private String strUnidad;
    private String strVolumen;
    @JoinColumn(name = "strCiv", referencedColumnName = "strCiv")
    private String strCiv;
    @JoinColumn(name = "strIdProducto", referencedColumnName = "strCodigo")
    private String strIdProducto;
    @JoinColumn(name = "strDestino", referencedColumnName = "strCodigo")
    private String strDestino;
    @JoinColumn(name = "strCliente", referencedColumnName = "strNit")
    private String strCliente;
    @JoinColumn(name = "strPlanta", referencedColumnName = "strCodigo")
    private String strPlanta;
    @JoinColumn(name = "strTransportadora", referencedColumnName = "strNombre")
    private String strTransportadora;

}
