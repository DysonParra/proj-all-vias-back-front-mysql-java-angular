/*
 * @fileoverview    {TransportadoraContainerComponent}
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
import { TransportadoraViewModel } from '../../model/transportadora.model';
import { TransportadoraFacade } from '../../facade/transportadora.facade';

/**
 * TODO: Description of {@code TransportadoraContainerComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-transportadora-container',
    templateUrl: './transportadora-container.component.html',
    standalone: false,
    styleUrls: ['./transportadora-container.component.css']
})
export class TransportadoraContainerComponent extends GenericContainerComponent<TransportadoraViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: TransportadoraViewModel,
        entityFacade: TransportadoraFacade) {
        super(entityInstance, entityFacade);
    }

}
