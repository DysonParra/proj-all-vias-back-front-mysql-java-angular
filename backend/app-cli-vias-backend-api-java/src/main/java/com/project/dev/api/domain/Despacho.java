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
    @Column(length = 10)
    private String strPlaca;
    @Column(length = 100)
    private String strConductor;
    private Integer intCedula;
    @Column(length = 100)
    private String strProducto;
    @Column(length = 20)
    private String strFechaEntrada;
    @Column(length = 20)
    private String strHoraEntrada;
    @Column(length = 20)
    private String strFechaPesoVacio;
    @Column(length = 20)
    private String strHoraPesoVacio;
    @Column(length = 20)
    private String strFechaDespachoPlanta;
    @Column(length = 20)
    private String strHoraDespachoPlanta;
    @Column(length = 20)
    private String strFechaPesoLleno;
    @Column(length = 20)
    private String strHoraPesoLleno;
    @Column(length = 20)
    private String strFechaSalida;
    @Column(length = 20)
    private String strHoraSalida;
    private Integer intBruto;
    private Integer intTara;
    private Integer intNeto;
    @Column(length = 100)
    private String strNoShipment;
    @Column(length = 100)
    private String strNoSello;
    @Column(length = 100)
    private String strNoR;
    @Column(length = 100)
    private String strNoContenedor;
    @Column(length = 100)
    private String strOperario;
    @Column(length = 100)
    private String strNickOperario;
    @Column(length = 250)
    private String strObservaciones;
    @Column(length = 50)
    private String strNoInterno;
    @Column(length = 50)
    private String strCodigo;
    @Column(length = 100)
    private String strTipoVehiculo;
    @Column(length = 100)
    private String strTipoProducto;
    @Column(length = 100)
    private String strDireccion;
    @Column(length = 100)
    private String strEntregadoPor;
    @Column(length = 100)
    private String strRecibidoPor;
    @Column(length = 50)
    private String strUnidad;
    @Column(length = 50)
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
