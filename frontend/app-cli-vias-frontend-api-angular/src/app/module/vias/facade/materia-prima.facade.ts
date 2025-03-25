/*
 * @fileoverview    {MateriaPrimaFacade}
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
import { MateriaPrimaViewModel } from '../model/materia-prima.model';
import { MateriaPrimaState } from '../state/materia-prima.state';
import { MateriaPrimaService } from '../service/materia-prima.service';

/**
 * TODO: Description of {@code MateriaPrimaFacade}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class MateriaPrimaFacade extends GenericFacade<MateriaPrimaViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityService: MateriaPrimaService,
        entityState: MateriaPrimaState) {
        super(entityService, entityState);
    }

}
