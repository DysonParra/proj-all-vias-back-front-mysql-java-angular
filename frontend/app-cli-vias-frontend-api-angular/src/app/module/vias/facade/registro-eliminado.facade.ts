/*
 * @fileoverview    {RegistroEliminadoFacade}
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
import { RegistroEliminadoViewModel } from '../model/registro-eliminado.model';
import { RegistroEliminadoState } from '../state/registro-eliminado.state';
import { RegistroEliminadoService } from '../service/registro-eliminado.service';

/**
 * TODO: Description of {@code RegistroEliminadoFacade}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class RegistroEliminadoFacade extends GenericFacade<RegistroEliminadoViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityService: RegistroEliminadoService,
        entityState: RegistroEliminadoState) {
        super(entityService, entityState);
    }

}
