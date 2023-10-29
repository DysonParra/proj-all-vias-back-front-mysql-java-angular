/*
 * @fileoverview    {Indicador}
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
 * TODO: Definición de {@code Indicador}.
 *
 * @author Dyson Parra
 * @since 11
 */
@Entity
@Table(name = "\"Indicador\"")
@AllArgsConstructor
@Builder
@Data
@NoArgsConstructor
public class Indicador implements Serializable {

    @Id
    @Basic(optional = false)
    @Column(nullable = false, length = 100)
    private String strCodigo;
    @Column(length = 100)
    private String strNombre;
    @Column(length = 10)
    private String strTamanoTrama;
    @Column(length = 10)
    private String strPosicionInicialPeso;
    @Column(length = 10)
    private String strTotalDatosPeso;
    @Column(length = 10)
    private String strCaracterFinTrama;
    @Column(length = 10)
    private String strCaracterInicioTrama;

}
