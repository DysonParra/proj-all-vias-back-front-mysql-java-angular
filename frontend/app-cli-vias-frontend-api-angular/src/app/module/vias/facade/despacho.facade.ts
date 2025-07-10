/*
 * @overview        {DespachoFacade}
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
import { DespachoViewModel } from '../model/despacho.model';
import { DespachoState } from '../state/despacho.state';
import { DespachoService } from '../service/despacho.service';

/**
 * TODO: Description of {@code DespachoFacade}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class DespachoFacade extends GenericFacade<DespachoViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityService: DespachoService,
        entityState: DespachoState) {
        super(entityService, entityState);
    }

}
