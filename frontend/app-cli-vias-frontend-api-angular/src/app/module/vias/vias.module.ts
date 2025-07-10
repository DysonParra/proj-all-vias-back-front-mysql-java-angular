/*
 * @overview        {ViasModule}
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
import { CommonModule } from '@angular/common';

import {
    DxBoxModule,
    DxSelectBoxModule,
    DxFormModule,
    DxButtonModule,
    DxDataGridModule,
    DxSchedulerModule,
    DxCalendarModule,
    DxDrawerModule,
    DxListModule,
    DxContextMenuModule,
    DxDateBoxModule,
    DxRadioGroupModule,
    DxPopupModule,
    DxTextBoxModule,
    DxTemplateModule,
    DxHtmlEditorModule,
    DxDropDownBoxModule,
    DxDropDownButtonModule,
    DxToolbarModule,
    DxCheckBoxModule,
    DxValidatorModule,
    DxScrollViewModule,
    DxLoadPanelModule
} from 'devextreme-angular';

import { AyudanteFacade } from './facade/ayudante.facade';
import { AyudanteService } from './service/ayudante.service';
import { AyudanteComponent } from './component/ayudante/ayudante.component';
import { AyudanteContainerComponent } from './container/ayudante-container/ayudante-container.component';
import { AyudanteViewComponent } from './view/ayudante-view/ayudante-view.component';

import { ClienteFacade } from './facade/cliente.facade';
import { ClienteService } from './service/cliente.service';
import { ClienteComponent } from './component/cliente/cliente.component';
import { ClienteContainerComponent } from './container/cliente-container/cliente-container.component';
import { ClienteViewComponent } from './view/cliente-view/cliente-view.component';

import { CodigoIdentificacionVialFacade } from './facade/codigo-identificacion-vial.facade';
import { CodigoIdentificacionVialService } from './service/codigo-identificacion-vial.service';
import { CodigoIdentificacionVialComponent } from './component/codigo-identificacion-vial/codigo-identificacion-vial.component';
import { CodigoIdentificacionVialContainerComponent } from './container/codigo-identificacion-vial-container/codigo-identificacion-vial-container.component';
import { CodigoIdentificacionVialViewComponent } from './view/codigo-identificacion-vial-view/codigo-identificacion-vial-view.component';

import { ConductorFacade } from './facade/conductor.facade';
import { ConductorService } from './service/conductor.service';
import { ConductorComponent } from './component/conductor/conductor.component';
import { ConductorContainerComponent } from './container/conductor-container/conductor-container.component';
import { ConductorViewComponent } from './view/conductor-view/conductor-view.component';

import { ConfiguracionFacade } from './facade/configuracion.facade';
import { ConfiguracionService } from './service/configuracion.service';
import { ConfiguracionComponent } from './component/configuracion/configuracion.component';
import { ConfiguracionContainerComponent } from './container/configuracion-container/configuracion-container.component';
import { ConfiguracionViewComponent } from './view/configuracion-view/configuracion-view.component';

import { DespachoFacade } from './facade/despacho.facade';
import { DespachoService } from './service/despacho.service';
import { DespachoComponent } from './component/despacho/despacho.component';
import { DespachoContainerComponent } from './container/despacho-container/despacho-container.component';
import { DespachoViewComponent } from './view/despacho-view/despacho-view.component';

import { DestinoFacade } from './facade/destino.facade';
import { DestinoService } from './service/destino.service';
import { DestinoComponent } from './component/destino/destino.component';
import { DestinoContainerComponent } from './container/destino-container/destino-container.component';
import { DestinoViewComponent } from './view/destino-view/destino-view.component';

import { IndicadorFacade } from './facade/indicador.facade';
import { IndicadorService } from './service/indicador.service';
import { IndicadorComponent } from './component/indicador/indicador.component';
import { IndicadorContainerComponent } from './container/indicador-container/indicador-container.component';
import { IndicadorViewComponent } from './view/indicador-view/indicador-view.component';

import { IngresoFacade } from './facade/ingreso.facade';
import { IngresoService } from './service/ingreso.service';
import { IngresoComponent } from './component/ingreso/ingreso.component';
import { IngresoContainerComponent } from './container/ingreso-container/ingreso-container.component';
import { IngresoViewComponent } from './view/ingreso-view/ingreso-view.component';

import { MateriaPrimaFacade } from './facade/materia-prima.facade';
import { MateriaPrimaService } from './service/materia-prima.service';
import { MateriaPrimaComponent } from './component/materia-prima/materia-prima.component';
import { MateriaPrimaContainerComponent } from './container/materia-prima-container/materia-prima-container.component';
import { MateriaPrimaViewComponent } from './view/materia-prima-view/materia-prima-view.component';

import { OrigenFacade } from './facade/origen.facade';
import { OrigenService } from './service/origen.service';
import { OrigenComponent } from './component/origen/origen.component';
import { OrigenContainerComponent } from './container/origen-container/origen-container.component';
import { OrigenViewComponent } from './view/origen-view/origen-view.component';

import { PlantaFacade } from './facade/planta.facade';
import { PlantaService } from './service/planta.service';
import { PlantaComponent } from './component/planta/planta.component';
import { PlantaContainerComponent } from './container/planta-container/planta-container.component';
import { PlantaViewComponent } from './view/planta-view/planta-view.component';

import { ProductoFacade } from './facade/producto.facade';
import { ProductoService } from './service/producto.service';
import { ProductoComponent } from './component/producto/producto.component';
import { ProductoContainerComponent } from './container/producto-container/producto-container.component';
import { ProductoViewComponent } from './view/producto-view/producto-view.component';

import { ProveedorFacade } from './facade/proveedor.facade';
import { ProveedorService } from './service/proveedor.service';
import { ProveedorComponent } from './component/proveedor/proveedor.component';
import { ProveedorContainerComponent } from './container/proveedor-container/proveedor-container.component';
import { ProveedorViewComponent } from './view/proveedor-view/proveedor-view.component';

import { RegistroEliminadoFacade } from './facade/registro-eliminado.facade';
import { RegistroEliminadoService } from './service/registro-eliminado.service';
import { RegistroEliminadoComponent } from './component/registro-eliminado/registro-eliminado.component';
import { RegistroEliminadoContainerComponent } from './container/registro-eliminado-container/registro-eliminado-container.component';
import { RegistroEliminadoViewComponent } from './view/registro-eliminado-view/registro-eliminado-view.component';

import { TransportadoraFacade } from './facade/transportadora.facade';
import { TransportadoraService } from './service/transportadora.service';
import { TransportadoraComponent } from './component/transportadora/transportadora.component';
import { TransportadoraContainerComponent } from './container/transportadora-container/transportadora-container.component';
import { TransportadoraViewComponent } from './view/transportadora-view/transportadora-view.component';

import { UsuarioFacade } from './facade/usuario.facade';
import { UsuarioService } from './service/usuario.service';
import { UsuarioComponent } from './component/usuario/usuario.component';
import { UsuarioContainerComponent } from './container/usuario-container/usuario-container.component';
import { UsuarioViewComponent } from './view/usuario-view/usuario-view.component';

import { VehiculoFacade } from './facade/vehiculo.facade';
import { VehiculoService } from './service/vehiculo.service';
import { VehiculoComponent } from './component/vehiculo/vehiculo.component';
import { VehiculoContainerComponent } from './container/vehiculo-container/vehiculo-container.component';
import { VehiculoViewComponent } from './view/vehiculo-view/vehiculo-view.component';

import { VehiculoEnTransitoFacade } from './facade/vehiculo-en-transito.facade';
import { VehiculoEnTransitoService } from './service/vehiculo-en-transito.service';
import { VehiculoEnTransitoComponent } from './component/vehiculo-en-transito/vehiculo-en-transito.component';
import { VehiculoEnTransitoContainerComponent } from './container/vehiculo-en-transito-container/vehiculo-en-transito-container.component';
import { VehiculoEnTransitoViewComponent } from './view/vehiculo-en-transito-view/vehiculo-en-transito-view.component';

import { SharedModule } from '@app/module/shared/shared.module';
import { ViasRoutingModule } from '@app/module/vias/vias.routing.module';

/**
 * TODO: Description of {@code ViasModule}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@NgModule({
    declarations: [
        AyudanteComponent,
        AyudanteContainerComponent,
        AyudanteViewComponent,
        ClienteComponent,
        ClienteContainerComponent,
        ClienteViewComponent,
        CodigoIdentificacionVialComponent,
        CodigoIdentificacionVialContainerComponent,
        CodigoIdentificacionVialViewComponent,
        ConductorComponent,
        ConductorContainerComponent,
        ConductorViewComponent,
        ConfiguracionComponent,
        ConfiguracionContainerComponent,
        ConfiguracionViewComponent,
        DespachoComponent,
        DespachoContainerComponent,
        DespachoViewComponent,
        DestinoComponent,
        DestinoContainerComponent,
        DestinoViewComponent,
        IndicadorComponent,
        IndicadorContainerComponent,
        IndicadorViewComponent,
        IngresoComponent,
        IngresoContainerComponent,
        IngresoViewComponent,
        MateriaPrimaComponent,
        MateriaPrimaContainerComponent,
        MateriaPrimaViewComponent,
        OrigenComponent,
        OrigenContainerComponent,
        OrigenViewComponent,
        PlantaComponent,
        PlantaContainerComponent,
        PlantaViewComponent,
        ProductoComponent,
        ProductoContainerComponent,
        ProductoViewComponent,
        ProveedorComponent,
        ProveedorContainerComponent,
        ProveedorViewComponent,
        RegistroEliminadoComponent,
        RegistroEliminadoContainerComponent,
        RegistroEliminadoViewComponent,
        TransportadoraComponent,
        TransportadoraContainerComponent,
        TransportadoraViewComponent,
        UsuarioComponent,
        UsuarioContainerComponent,
        UsuarioViewComponent,
        VehiculoComponent,
        VehiculoContainerComponent,
        VehiculoViewComponent,
        VehiculoEnTransitoComponent,
        VehiculoEnTransitoContainerComponent,
        VehiculoEnTransitoViewComponent,
    ],
    imports: [
        // ng modules
        CommonModule,
        DxBoxModule,
        DxButtonModule,
        DxCalendarModule,
        DxCheckBoxModule,
        DxContextMenuModule,
        DxDataGridModule,
        DxDateBoxModule,
        DxDrawerModule,
        DxDropDownBoxModule,
        DxDropDownButtonModule,
        DxFormModule,
        DxHtmlEditorModule,
        DxListModule,
        DxLoadPanelModule,
        DxPopupModule,
        DxRadioGroupModule,
        DxSchedulerModule,
        DxScrollViewModule,
        DxSelectBoxModule,
        DxTemplateModule,
        DxTextBoxModule,
        DxToolbarModule,
        DxValidatorModule,

        // Own modules
        ViasRoutingModule,
        SharedModule
    ],
    exports: [
        AyudanteViewComponent,
        ClienteViewComponent,
        CodigoIdentificacionVialViewComponent,
        ConductorViewComponent,
        ConfiguracionViewComponent,
        DespachoViewComponent,
        DestinoViewComponent,
        IndicadorViewComponent,
        IngresoViewComponent,
        MateriaPrimaViewComponent,
        OrigenViewComponent,
        PlantaViewComponent,
        ProductoViewComponent,
        ProveedorViewComponent,
        RegistroEliminadoViewComponent,
        TransportadoraViewComponent,
        UsuarioViewComponent,
        VehiculoViewComponent,
        VehiculoEnTransitoViewComponent,
    ],
    providers: [
        AyudanteFacade,
        AyudanteService,
        ClienteFacade,
        ClienteService,
        CodigoIdentificacionVialFacade,
        CodigoIdentificacionVialService,
        ConductorFacade,
        ConductorService,
        ConfiguracionFacade,
        ConfiguracionService,
        DespachoFacade,
        DespachoService,
        DestinoFacade,
        DestinoService,
        IndicadorFacade,
        IndicadorService,
        IngresoFacade,
        IngresoService,
        MateriaPrimaFacade,
        MateriaPrimaService,
        OrigenFacade,
        OrigenService,
        PlantaFacade,
        PlantaService,
        ProductoFacade,
        ProductoService,
        ProveedorFacade,
        ProveedorService,
        RegistroEliminadoFacade,
        RegistroEliminadoService,
        TransportadoraFacade,
        TransportadoraService,
        UsuarioFacade,
        UsuarioService,
        VehiculoFacade,
        VehiculoService,
        VehiculoEnTransitoFacade,
        VehiculoEnTransitoService,
    ]
})
export class ViasModule { }
