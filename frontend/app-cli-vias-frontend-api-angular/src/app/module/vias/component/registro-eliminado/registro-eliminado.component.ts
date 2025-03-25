/*
 * @fileoverview    {RegistroEliminadoComponent}
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
import { RegistroEliminadoViewModel } from '../../model/registro-eliminado.model';

/**
 * TODO: Description of {@code RegistroEliminadoComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-registro-eliminado',
    templateUrl: './registro-eliminado.component.html',
    standalone: false,
    styleUrls: ['./registro-eliminado.component.css']
})
export class RegistroEliminadoComponent extends GenericComponent<RegistroEliminadoViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: RegistroEliminadoViewModel) {
        super(entityInstance);
    }

}
