/*
 * @overview        {CodigoIdentificacionVialContainerComponent}
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
import { CodigoIdentificacionVialViewModel } from '../../model/codigo-identificacion-vial.model';
import { CodigoIdentificacionVialFacade } from '../../facade/codigo-identificacion-vial.facade';

/**
 * TODO: Description of {@code CodigoIdentificacionVialContainerComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-codigo-identificacion-vial-container',
    templateUrl: './codigo-identificacion-vial-container.component.html',
    standalone: false,
    styleUrls: ['./codigo-identificacion-vial-container.component.css']
})
export class CodigoIdentificacionVialContainerComponent extends GenericContainerComponent<CodigoIdentificacionVialViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: CodigoIdentificacionVialViewModel,
        entityFacade: CodigoIdentificacionVialFacade) {
        super(entityInstance, entityFacade);
    }

}
