/*
 * @overview        {AyudanteComponent}
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
import { AyudanteViewModel } from '../../model/ayudante.model';

/**
 * TODO: Description of {@code AyudanteComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-ayudante',
    templateUrl: './ayudante.component.html',
    standalone: false,
    styleUrls: ['./ayudante.component.css']
})
export class AyudanteComponent extends GenericComponent<AyudanteViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: AyudanteViewModel) {
        super(entityInstance);
    }

}
