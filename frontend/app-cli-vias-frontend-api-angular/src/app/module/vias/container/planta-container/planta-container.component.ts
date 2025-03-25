/*
 * @fileoverview    {PlantaContainerComponent}
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
import { PlantaViewModel } from '../../model/planta.model';
import { PlantaFacade } from '../../facade/planta.facade';

/**
 * TODO: Description of {@code PlantaContainerComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-planta-container',
    templateUrl: './planta-container.component.html',
    standalone: false,
    styleUrls: ['./planta-container.component.css']
})
export class PlantaContainerComponent extends GenericContainerComponent<PlantaViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: PlantaViewModel,
        entityFacade: PlantaFacade) {
        super(entityInstance, entityFacade);
    }

}
