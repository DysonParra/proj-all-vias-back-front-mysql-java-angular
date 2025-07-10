/*
 * @overview        {TransportadoraFacade}
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
import { TransportadoraViewModel } from '../model/transportadora.model';
import { TransportadoraState } from '../state/transportadora.state';
import { TransportadoraService } from '../service/transportadora.service';

/**
 * TODO: Description of {@code TransportadoraFacade}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class TransportadoraFacade extends GenericFacade<TransportadoraViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityService: TransportadoraService,
        entityState: TransportadoraState) {
        super(entityService, entityState);
    }

}
