/*
 * @overview        {PlantaComponent}
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
import { PlantaViewModel } from '../../model/planta.model';

/**
 * TODO: Description of {@code PlantaComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-planta',
    templateUrl: './planta.component.html',
    standalone: false,
    styleUrls: ['./planta.component.css']
})
export class PlantaComponent extends GenericComponent<PlantaViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: PlantaViewModel) {
        super(entityInstance);
    }

}
