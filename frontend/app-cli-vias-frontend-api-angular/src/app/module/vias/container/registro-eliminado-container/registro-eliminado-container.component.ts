/*
 * @overview        {RegistroEliminadoContainerComponent}
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
import { RegistroEliminadoViewModel } from '../../model/registro-eliminado.model';
import { RegistroEliminadoFacade } from '../../facade/registro-eliminado.facade';

/**
 * TODO: Description of {@code RegistroEliminadoContainerComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-registro-eliminado-container',
    templateUrl: './registro-eliminado-container.component.html',
    standalone: false,
    styleUrls: ['./registro-eliminado-container.component.css']
})
export class RegistroEliminadoContainerComponent extends GenericContainerComponent<RegistroEliminadoViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: RegistroEliminadoViewModel,
        entityFacade: RegistroEliminadoFacade) {
        super(entityInstance, entityFacade);
    }

}
