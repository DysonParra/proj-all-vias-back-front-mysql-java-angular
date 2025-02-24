/*
 * @fileoverview    {RegistroEliminado}
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
 * TODO: Description of {@code RegistroEliminado}.
 *
 * @author Dyson Parra
 * @since Java 17 (LTS), Gradle 7.3
 */
@Entity
@Table(name = "\"RegistroEliminado\"")
@AllArgsConstructor
@Builder
@Data
@NoArgsConstructor
public class RegistroEliminado implements Serializable {

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
    @JoinColumn(name = "strTransportadora", referencedColumnName = "strCodigo")
    private String strTransportadora;
    @JoinColumn(name = "strPlanta", referencedColumnName = "strNombre")
    private String strPlanta;

}
