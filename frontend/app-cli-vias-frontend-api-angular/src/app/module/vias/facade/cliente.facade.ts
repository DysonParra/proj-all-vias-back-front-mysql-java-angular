/*
 * @fileoverview    {ClienteFacade}
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
import { Injectable } from '@angular/core';
import { GenericFacade } from '@app/module/essential/facade/generic.facade';
import { ClienteViewModel } from '../model/cliente.model';
import { ClienteState } from '../state/cliente.state';
import { ClienteService } from '../service/cliente.service';

/**
 * TODO: Description of {@code ClienteFacade}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class ClienteFacade extends GenericFacade<ClienteViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityService: ClienteService,
        entityState: ClienteState) {
        super(entityService, entityState);
    }

}
