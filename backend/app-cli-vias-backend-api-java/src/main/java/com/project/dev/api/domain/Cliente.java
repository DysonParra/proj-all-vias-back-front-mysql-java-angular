/*
 * @fileoverview    {Cliente}
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
 * TODO: Description of {@code Cliente}.
 *
 * @author Dyson Parra
 * @since 11
 */
@Entity
@Table(name = "\"Cliente\"")
@AllArgsConstructor
@Builder
@Data
@NoArgsConstructor
public class Cliente implements Serializable {

    @Id
    @Basic(optional = false)
    @Column(nullable = false, length = 50)
    private String strNit;
    @Column(length = 100)
    private String strNombre;
    @Column(length = 100)
    private String strDireccion;
    @Column(length = 100)
    private String strTelefono;
    @Column(length = 100)
    private String strFax;
    @Column(length = 250)
    private String strObservaciones;

}
