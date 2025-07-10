/*
 * @overview        {DespachoComponent}
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
import { GenericComponent } from '@app/module/essential/component/generic.component';
import { DespachoViewModel } from '../../model/despacho.model';

/**
 * TODO: Description of {@code DespachoComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-despacho',
    templateUrl: './despacho.component.html',
    standalone: false,
    styleUrls: ['./despacho.component.css']
})
export class DespachoComponent extends GenericComponent<DespachoViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: DespachoViewModel) {
        super(entityInstance);
    }

}
