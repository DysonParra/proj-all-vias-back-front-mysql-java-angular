/*
 * @fileoverview    {TransportadoraComponent}
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
import { TransportadoraViewModel } from '../../model/transportadora.model';

/**
 * TODO: Description of {@code TransportadoraComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-transportadora',
    templateUrl: './transportadora.component.html',
    standalone: false,
    styleUrls: ['./transportadora.component.css']
})
export class TransportadoraComponent extends GenericComponent<TransportadoraViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: TransportadoraViewModel) {
        super(entityInstance);
    }

}
