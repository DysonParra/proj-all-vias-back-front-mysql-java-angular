/*
 * @fileoverview    {CodigoIdentificacionVialFacade}
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
import { CodigoIdentificacionVialViewModel } from '../model/codigo-identificacion-vial.model';
import { CodigoIdentificacionVialState } from '../state/codigo-identificacion-vial.state';
import { CodigoIdentificacionVialService } from '../service/codigo-identificacion-vial.service';

/**
 * TODO: Description of {@code CodigoIdentificacionVialFacade}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class CodigoIdentificacionVialFacade extends GenericFacade<CodigoIdentificacionVialViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityService: CodigoIdentificacionVialService,
        entityState: CodigoIdentificacionVialState) {
        super(entityService, entityState);
    }

}
