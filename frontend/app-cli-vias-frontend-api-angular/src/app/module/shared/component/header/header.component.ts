/*
 * @fileoverview    {HeaderComponent}
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
import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { Routes, Router } from '@angular/router';

/**
 * TODO: Description of {@code HeaderComponent}.
 *
 * @author Dyson Parra
 * @since Angular 19, Node JS 22
 */
@Component({
    selector: 'app-header',
    templateUrl: './header.component.html',
    standalone: false,
    styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

    public topMenu: any[];
    public showSubmenuModes: any;
    public showFirstSubmenuModes: any;

    /**
     * TODO: Description of method {@code constructor}.
     *
     */
    public constructor(private router: Router) {

        this.topMenu = [
            {
                name: 'Ayudante',
                route: 'ayudante',
                items: []
            },            {
                name: 'Cliente',
                route: 'cliente',
                items: []
            },            {
                name: 'CodigoIdentificacionVial',
                route: 'codigo-identificacion-vial',
                items: []
            },            {
                name: 'Conductor',
                route: 'conductor',
                items: []
            },            {
                name: 'Configuracion',
                route: 'configuracion',
                items: []
            },            {
                name: 'Despacho',
                route: 'despacho',
                items: []
            },            {
                name: 'Destino',
                route: 'destino',
                items: []
            },            {
                name: 'Indicador',
                route: 'indicador',
                items: []
            },            {
                name: 'Ingreso',
                route: 'ingreso',
                items: []
            },            {
                name: 'MateriaPrima',
                route: 'materia-prima',
                items: []
            },            {
                name: 'Origen',
                route: 'origen',
                items: []
            },            {
                name: 'Planta',
                route: 'planta',
                items: []
            },            {
                name: 'Producto',
                route: 'producto',
                items: []
            },            {
                name: 'Proveedor',
                route: 'proveedor',
                items: []
            },            {
                name: 'RegistroEliminado',
                route: 'registro-eliminado',
                items: []
            },            {
                name: 'Transportadora',
                route: 'transportadora',
                items: []
            },            {
                name: 'Usuario',
                route: 'usuario',
                items: []
            },            {
                name: 'Vehiculo',
                route: 'vehiculo',
                items: []
            },            {
                name: 'VehiculoEnTransito',
                route: 'vehiculo-en-transito',
                items: []
            },
        ];

        this.showSubmenuModes = [
            {
                name: "onhover",
                delay: { show: 0, hide: 0 }
            },
            {
                name: "onclick",
                delay: { show: 0, hide: 0 }
            }
        ];

        this.showFirstSubmenuModes = this.showSubmenuModes[0];

    }

    /**
     * TODO: Description of method {@code ngOnInit}.
     *
     */
    public ngOnInit(): void {

    }

    /**
     * TODO: Description of method {@code itemClick}.
     *
     */
    public itemClick(data: any): void {
        if (data.route && (!data.items || data.items.length == 0))
            this.router.navigateByUrl(data.route);
    }

}
