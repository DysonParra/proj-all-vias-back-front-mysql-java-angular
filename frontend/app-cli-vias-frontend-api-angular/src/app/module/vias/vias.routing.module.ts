/*
 * @overview        {ViasRoutingModule}
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
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { AyudanteViewComponent } from './view/ayudante-view/ayudante-view.component';
import { ClienteViewComponent } from './view/cliente-view/cliente-view.component';
import { CodigoIdentificacionVialViewComponent } from './view/codigo-identificacion-vial-view/codigo-identificacion-vial-view.component';
import { ConductorViewComponent } from './view/conductor-view/conductor-view.component';
import { ConfiguracionViewComponent } from './view/configuracion-view/configuracion-view.component';
import { DespachoViewComponent } from './view/despacho-view/despacho-view.component';
import { DestinoViewComponent } from './view/destino-view/destino-view.component';
import { IndicadorViewComponent } from './view/indicador-view/indicador-view.component';
import { IngresoViewComponent } from './view/ingreso-view/ingreso-view.component';
import { MateriaPrimaViewComponent } from './view/materia-prima-view/materia-prima-view.component';
import { OrigenViewComponent } from './view/origen-view/origen-view.component';
import { PlantaViewComponent } from './view/planta-view/planta-view.component';
import { ProductoViewComponent } from './view/producto-view/producto-view.component';
import { ProveedorViewComponent } from './view/proveedor-view/proveedor-view.component';
import { RegistroEliminadoViewComponent } from './view/registro-eliminado-view/registro-eliminado-view.component';
import { TransportadoraViewComponent } from './view/transportadora-view/transportadora-view.component';
import { UsuarioViewComponent } from './view/usuario-view/usuario-view.component';
import { VehiculoViewComponent } from './view/vehiculo-view/vehiculo-view.component';
import { VehiculoEnTransitoViewComponent } from './view/vehiculo-en-transito-view/vehiculo-en-transito-view.component';

const routes: Routes = [
    {
        path: 'ayudante',
        component: AyudanteViewComponent
    },
    {
        path: 'cliente',
        component: ClienteViewComponent
    },
    {
        path: 'codigo-identificacion-vial',
        component: CodigoIdentificacionVialViewComponent
    },
    {
        path: 'conductor',
        component: ConductorViewComponent
    },
    {
        path: 'configuracion',
        component: ConfiguracionViewComponent
    },
    {
        path: 'despacho',
        component: DespachoViewComponent
    },
    {
        path: 'destino',
        component: DestinoViewComponent
    },
    {
        path: 'indicador',
        component: IndicadorViewComponent
    },
    {
        path: 'ingreso',
        component: IngresoViewComponent
    },
    {
        path: 'materia-prima',
        component: MateriaPrimaViewComponent
    },
    {
        path: 'origen',
        component: OrigenViewComponent
    },
    {
        path: 'planta',
        component: PlantaViewComponent
    },
    {
        path: 'producto',
        component: ProductoViewComponent
    },
    {
        path: 'proveedor',
        component: ProveedorViewComponent
    },
    {
        path: 'registro-eliminado',
        component: RegistroEliminadoViewComponent
    },
    {
        path: 'transportadora',
        component: TransportadoraViewComponent
    },
    {
        path: 'usuario',
        component: UsuarioViewComponent
    },
    {
        path: 'vehiculo',
        component: VehiculoViewComponent
    },
    {
        path: 'vehiculo-en-transito',
        component: VehiculoEnTransitoViewComponent
    },
];

/**
 * TODO: Description of {@code ViasRoutingModule}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class ViasRoutingModule { }
