/*
 * @fileoverview    {ClienteService}
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
import { ClienteViewModel } from '../model/cliente.model';

/**
 * TODO: Description of {@code ClienteService}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class ClienteService extends GenericService<ClienteViewModel> {

    //public apiUrl: string = `${this.apiServer.rules}/api/v1/cliente/`;
    public apiUrl: string = `http://127.0.0.1:8080/api/v1/cliente`;
    public dtoList: string = `clienteDTOList`;

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(
        entityInstance: ClienteViewModel) {
        super(entityInstance);
    }

}
