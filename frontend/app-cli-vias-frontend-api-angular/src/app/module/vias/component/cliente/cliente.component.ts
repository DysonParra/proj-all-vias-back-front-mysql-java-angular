/*
 * @fileoverview    {ClienteComponent}
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
import { ClienteViewModel } from '../../model/cliente.model';

/**
 * TODO: Description of {@code ClienteComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-cliente',
    templateUrl: './cliente.component.html',
    standalone: false,
    styleUrls: ['./cliente.component.css']
})
export class ClienteComponent extends GenericComponent<ClienteViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: ClienteViewModel) {
        super(entityInstance);
    }

}
