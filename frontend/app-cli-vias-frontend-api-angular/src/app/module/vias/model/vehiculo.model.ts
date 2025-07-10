/*
 * @overview        {VehiculoViewModel}
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
 * TODO: Description of {@code VehiculoViewModel}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Injectable({
    providedIn: 'root'
})
export class VehiculoViewModel extends GenericViewModel<number> {

    @Id
    @NotNull
    public strCodigo: string;
    public strPlacaVehiculo: string;
    public strNumeroInterno: string;
    public strIdTransportador: string;
    public strTara: string;
    public strEjes: string;
    public strVolumenVehiculo: string;
    public strInterno: string;
    public strPatronado: string;
    public strObservacion: string;

    /**
     * TODO: Description of method {@code newEntity}.
     *
     */
    public newEntity(): VehiculoViewModel {
        return new VehiculoViewModel();
    }

}
