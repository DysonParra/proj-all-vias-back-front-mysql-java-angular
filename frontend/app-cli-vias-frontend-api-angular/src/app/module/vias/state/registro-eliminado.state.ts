/*
 * @fileoverview    {RegistroEliminadoState}
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
import { GenericState } from '@app/module/essential/state/generic.state';
import { RegistroEliminadoViewModel } from '../model/registro-eliminado.model';

/**
 * TODO: Description of {@code RegistroEliminadoState}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class RegistroEliminadoState extends GenericState<RegistroEliminadoViewModel> {

}
