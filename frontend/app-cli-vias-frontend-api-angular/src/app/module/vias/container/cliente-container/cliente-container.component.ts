/*
 * @overview        {ClienteContainerComponent}
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
import { ClienteViewModel } from '../../model/cliente.model';
import { ClienteFacade } from '../../facade/cliente.facade';

/**
 * TODO: Description of {@code ClienteContainerComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-cliente-container',
    templateUrl: './cliente-container.component.html',
    standalone: false,
    styleUrls: ['./cliente-container.component.css']
})
export class ClienteContainerComponent extends GenericContainerComponent<ClienteViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: ClienteViewModel,
        entityFacade: ClienteFacade) {
        super(entityInstance, entityFacade);
    }

}
