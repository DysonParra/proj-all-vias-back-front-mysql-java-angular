/*
 * @overview        {AyudanteContainerComponent}
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
import { AyudanteViewModel } from '../../model/ayudante.model';
import { AyudanteFacade } from '../../facade/ayudante.facade';

/**
 * TODO: Description of {@code AyudanteContainerComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-ayudante-container',
    templateUrl: './ayudante-container.component.html',
    standalone: false,
    styleUrls: ['./ayudante-container.component.css']
})
export class AyudanteContainerComponent extends GenericContainerComponent<AyudanteViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: AyudanteViewModel,
        entityFacade: AyudanteFacade) {
        super(entityInstance, entityFacade);
    }

}
