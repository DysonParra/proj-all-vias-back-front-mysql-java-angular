/*
 * @fileoverview    {IngresoComponent}
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
import { Component } from '@angular/core';
import { GenericComponent } from '@app/module/essential/component/generic.component';
import { IngresoViewModel } from '../../model/ingreso.model';

/**
 * TODO: Description of {@code IngresoComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-ingreso',
    templateUrl: './ingreso.component.html',
    standalone: false,
    styleUrls: ['./ingreso.component.css']
})
export class IngresoComponent extends GenericComponent<IngresoViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: IngresoViewModel) {
        super(entityInstance);
    }

}
