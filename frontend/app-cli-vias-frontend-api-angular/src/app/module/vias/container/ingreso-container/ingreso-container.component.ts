/*
 * @overview        {IngresoContainerComponent}
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
import { GenericContainerComponent } from '@app/module/essential/container/generic-container.component';
import { IngresoViewModel } from '../../model/ingreso.model';
import { IngresoFacade } from '../../facade/ingreso.facade';

/**
 * TODO: Description of {@code IngresoContainerComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-ingreso-container',
    templateUrl: './ingreso-container.component.html',
    standalone: false,
    styleUrls: ['./ingreso-container.component.css']
})
export class IngresoContainerComponent extends GenericContainerComponent<IngresoViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: IngresoViewModel,
        entityFacade: IngresoFacade) {
        super(entityInstance, entityFacade);
    }

}
