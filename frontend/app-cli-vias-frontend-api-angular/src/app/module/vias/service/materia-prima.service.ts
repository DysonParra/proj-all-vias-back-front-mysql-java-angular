/*
 * @overview        {MateriaPrimaService}
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
import { Injectable } from '@angular/core';
import { GenericService } from '@app/module/essential/service/generic.service';
import { MateriaPrimaViewModel } from '../model/materia-prima.model';

/**
 * TODO: Description of {@code MateriaPrimaService}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class MateriaPrimaService extends GenericService<MateriaPrimaViewModel> {

    //public apiUrl: string = `${this.apiServer.rules}/api/v1/materia-prima/`;
    public apiUrl: string = `http://127.0.0.1:8080/api/v1/materia-prima`;
    public dtoList: string = `materiaPrimaDTOList`;

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: MateriaPrimaViewModel) {
        super(entityInstance);
    }

}
