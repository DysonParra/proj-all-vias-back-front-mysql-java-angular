/*
 * @overview        {MateriaPrimaComponent}
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
import { MateriaPrimaViewModel } from '../../model/materia-prima.model';

/**
 * TODO: Description of {@code MateriaPrimaComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-materia-prima',
    templateUrl: './materia-prima.component.html',
    standalone: false,
    styleUrls: ['./materia-prima.component.css']
})
export class MateriaPrimaComponent extends GenericComponent<MateriaPrimaViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: MateriaPrimaViewModel) {
        super(entityInstance);
    }

}
