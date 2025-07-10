/*
 * @overview        {DespachoContainerComponent}
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
import { DespachoViewModel } from '../../model/despacho.model';
import { DespachoFacade } from '../../facade/despacho.facade';

/**
 * TODO: Description of {@code DespachoContainerComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-despacho-container',
    templateUrl: './despacho-container.component.html',
    standalone: false,
    styleUrls: ['./despacho-container.component.css']
})
export class DespachoContainerComponent extends GenericContainerComponent<DespachoViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: DespachoViewModel,
        entityFacade: DespachoFacade) {
        super(entityInstance, entityFacade);
    }

}
