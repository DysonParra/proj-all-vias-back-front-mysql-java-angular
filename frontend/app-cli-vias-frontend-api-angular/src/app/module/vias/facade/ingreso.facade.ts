/*
 * @overview        {IngresoFacade}
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
import { IngresoViewModel } from '../model/ingreso.model';
import { IngresoState } from '../state/ingreso.state';
import { IngresoService } from '../service/ingreso.service';

/**
 * TODO: Description of {@code IngresoFacade}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class IngresoFacade extends GenericFacade<IngresoViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityService: IngresoService,
        entityState: IngresoState) {
        super(entityService, entityState);
    }

}
