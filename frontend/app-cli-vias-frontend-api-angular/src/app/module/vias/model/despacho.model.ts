/*
 * @fileoverview    {DespachoViewModel}
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
import { Injectable } from "@angular/core";
import { GenericViewModel } from "@app/module/essential/model/generic.model";
import { Id } from "@app/module/essential/decorator/id.decorator";
import { NotNull } from "@app/module/essential/decorator/not-null.decorator";
import { Hidden } from "@app/module/essential/decorator/hidden.decorator";
import { Temporal } from "@app/module/essential/decorator/temporal.decorator";
import { TemporalType } from "@app/module/essential/model/temporal-type.model";

/**
 * TODO: Description of {@code DespachoViewModel}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class DespachoViewModel extends GenericViewModel<number> {

    @Id
    @NotNull
    public intNoTiquete: number;
    public strPlaca: string;
    public strConductor: string;
    public intCedula: number;
    public strProducto: string;
    public strPlanta: string;
    public strCliente: string;
    public strDestino: string;
    public strTransportadora: string;
    public strFechaEntrada: string;
    public strHoraEntrada: string;
    public strFechaPesoVacio: string;
    public strHoraPesoVacio: string;
    public strFechaDespachoPlanta: string;
    public strHoraDespachoPlanta: string;
    public strFechaPesoLleno: string;
    public strHoraPesoLleno: string;
    public strFechaSalida: string;
    public strHoraSalida: string;
    public intBruto: number;
    public intTara: number;
    public intNeto: number;
    public strNoShipment: string;
    public strNoSello: string;
    public strNoR: string;
    public strNoContenedor: string;
    public strOperario: string;
    public strNickOperario: string;
    public strObservaciones: string;
    public strNoInterno: string;
    public strCodigo: string;
    public strTipoVehiculo: string;
    public strTipoProducto: string;
    public strIdProducto: string;
    public strDireccion: string;
    public strEntregadoPor: string;
    public strRecibidoPor: string;
    public strCiv: string;
    public strUnidad: string;
    public strVolumen: string;

    /**
     * TODO: Description of method {@code newEntity}.
     *
     */
    public newEntity(): DespachoViewModel {
        return new DespachoViewModel();
    }

}
