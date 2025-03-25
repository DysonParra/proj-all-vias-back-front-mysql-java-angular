/*
 * @fileoverview    {PlantaFacade}
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
import { PlantaViewModel } from '../model/planta.model';
import { PlantaState } from '../state/planta.state';
import { PlantaService } from '../service/planta.service';

/**
 * TODO: Description of {@code PlantaFacade}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class PlantaFacade extends GenericFacade<PlantaViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityService: PlantaService,
        entityState: PlantaState) {
        super(entityService, entityState);
    }

}
