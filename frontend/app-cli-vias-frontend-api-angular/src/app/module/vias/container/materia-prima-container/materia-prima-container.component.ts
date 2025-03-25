/*
 * @fileoverview    {MateriaPrimaContainerComponent}
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
import { MateriaPrimaViewModel } from '../../model/materia-prima.model';
import { MateriaPrimaFacade } from '../../facade/materia-prima.facade';

/**
 * TODO: Description of {@code MateriaPrimaContainerComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-materia-prima-container',
    templateUrl: './materia-prima-container.component.html',
    standalone: false,
    styleUrls: ['./materia-prima-container.component.css']
})
export class MateriaPrimaContainerComponent extends GenericContainerComponent<MateriaPrimaViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: MateriaPrimaViewModel,
        entityFacade: MateriaPrimaFacade) {
        super(entityInstance, entityFacade);
    }

}
