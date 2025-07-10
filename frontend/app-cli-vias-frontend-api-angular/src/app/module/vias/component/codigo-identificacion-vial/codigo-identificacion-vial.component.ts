/*
 * @overview        {CodigoIdentificacionVialComponent}
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
import { CodigoIdentificacionVialViewModel } from '../../model/codigo-identificacion-vial.model';

/**
 * TODO: Description of {@code CodigoIdentificacionVialComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-codigo-identificacion-vial',
    templateUrl: './codigo-identificacion-vial.component.html',
    standalone: false,
    styleUrls: ['./codigo-identificacion-vial.component.css']
})
export class CodigoIdentificacionVialComponent extends GenericComponent<CodigoIdentificacionVialViewModel> {

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: CodigoIdentificacionVialViewModel) {
        super(entityInstance);
    }

}
