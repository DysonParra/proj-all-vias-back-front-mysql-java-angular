/*
 * @overview        {AyudanteFacade}
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
import { AyudanteViewModel } from '../model/ayudante.model';
import { AyudanteState } from '../state/ayudante.state';
import { AyudanteService } from '../service/ayudante.service';

/**
 * TODO: Description of {@code AyudanteFacade}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class AyudanteFacade extends GenericFacade<AyudanteViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityService: AyudanteService,
        entityState: AyudanteState) {
        super(entityService, entityState);
    }

}
