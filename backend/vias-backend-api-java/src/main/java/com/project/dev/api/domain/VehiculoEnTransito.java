/*
 * @fileoverview    {VehiculoEnTransito}
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
 * TODO: Definición de {@code VehiculoEnTransito}.
 *
 * @author Dyson Parra
 * @since 1.8
 */
@Entity
@Table(name = "\"VehiculoEnTransito\"")
@AllArgsConstructor
@Builder
@Data
@NoArgsConstructor
public class VehiculoEnTransito implements Serializable {

    @Id
    @Basic(optional = false)
    @Column(nullable = false, length = 100)
    private String strPlaca;
    @Column(length = 100)
    private String strCaso;
    @Column(length = 100)
    private String strConductor;
    private Integer intCedula;
    @Column(length = 100)
    private String strMateriaPrimaProducto;
    @Column(length = 100)
    private String strClienteProveedor;
    @Column(length = 100)
    private String strOrigenDestino;
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
    private Integer intNoTiquete;
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
    @Column(length = 100)
    private String strNoInterno;
    @Column(length = 50)
    private String strTipoVehiculo;
    @Column(length = 100)
    private String strEntregadoPor;
    @Column(length = 100)
    private String strRecibidoPor;
    @Column(length = 100)
    private String strDireccion;
    @Column(length = 100)
    private String strTipoProducto;
    @Column(length = 50)
    private String strUnidad;
    @Column(length = 50)
    private String strVolumen;
    @JoinColumn(name = "strCiv", referencedColumnName = "strCiv")
    private String strCiv;
    @JoinColumn(name = "strIdProducto", referencedColumnName = "strCodigo")
    private String strIdProducto;
    @JoinColumn(name = "strIdVehiculo", referencedColumnName = "strCodigo")
    private String strIdVehiculo;
    @JoinColumn(name = "strPlanta", referencedColumnName = "strCodigo")
    private String strPlanta;
    @JoinColumn(name = "strTransportadora", referencedColumnName = "strNombre")
    private String strTransportadora;

}
