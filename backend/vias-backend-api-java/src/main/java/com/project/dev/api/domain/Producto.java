/*
 * @fileoverview    {Producto}
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
 * TODO: Definición de {@code Producto}.
 *
 * @author Dyson Parra
 * @since 11
 */
@Entity
@Table(name = "\"Producto\"")
@AllArgsConstructor
@Builder
@Data
@NoArgsConstructor
public class Producto implements Serializable {

    @Id
    @Basic(optional = false)
    @Column(nullable = false, length = 100)
    private String strCodigo;
    @Column(length = 100)
    private String strNombre;
    @Column(length = 100)
    private String strDetalles;
    @Column(length = 100)
    private String strTipo;

}
