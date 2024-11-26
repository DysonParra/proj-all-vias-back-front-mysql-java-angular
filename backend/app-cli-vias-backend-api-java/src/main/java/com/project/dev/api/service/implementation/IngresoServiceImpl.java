/*
 * @fileoverview    {IngresoServiceImpl}
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
package com.project.dev.api.service.implementation;

import com.project.dev.api.domain.Ingreso;
import com.project.dev.api.dto.IngresoDTO;
import com.project.dev.api.repository.IngresoRepository;
import com.project.dev.api.service.GenericService;
import com.project.dev.api.service.exception.EntityNotFoundException;
import com.project.dev.api.service.mapping.IngresoMapping;
import java.util.List;
import org.mapstruct.factory.Mappers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

/**
 * TODO: Description of {@code IngresoServiceImpl}.
 *
 * @author Dyson Parra
 * @since 11
 */
@Transactional
@org.springframework.stereotype.Service
public class IngresoServiceImpl implements GenericService<IngresoDTO> {

    private final Logger log = LoggerFactory.getLogger(IngresoServiceImpl.class);
    private final IngresoRepository entityRepository;
    private final IngresoMapping entityMapping = Mappers.getMapper(IngresoMapping.class);

    /**
     * Constructor.
     *
     * @param entityRepository el repositorio de la entidad.
     */
    public IngresoServiceImpl(IngresoRepository entityRepository) {
        this.entityRepository = entityRepository;
    }

    /**
     * Obtiene todas las entidades existentes.
     *
     * @return lista de entidades almacenadas en la base de datos.
     * @throws Exception si ocurre algún error.
     */
    @Override
    public List<IngresoDTO> getAllEntities() throws Exception {
        log.debug("Solicitud para listar todas las Entidades tipo Ingreso");
        return entityMapping.getDto(entityRepository.findAll());
    }

    /**
     * Obtiene todas los registros según la paginación suministrada.
     *
     * @param pageable indica la manera en que se paginarán los registros obtenidos.
     * @return entidades almacenadas en base de datos de forma paginada.
     * @throws Exception si ocurre algún error.
     */
    @Override
    public Page<IngresoDTO> getAllEntitiesPaged(Pageable pageable) throws Exception {
        log.debug("Solicitud para listar todas las Entidades tipo Ingreso con paginacion");
        return entityRepository.findAll(pageable).map(entityMapping::getDto);
    }

    /**
     * Guarda o actualiza los datos de una entidad.
     *
     * @param entityDTO entidad que va a ser almacenada.
     * @return entidad almacenada en la base de datos.
     * @throws Exception si ocurre algún error.
     */
    @Override
    public IngresoDTO saveUpdate(IngresoDTO entityDTO) throws Exception {
        log.debug("Solicitud para guardar la entidad tipo Ingreso: {}", entityDTO);

        //TODO: agregar validacion especifica del servicio.
        Ingreso entity = entityMapping.getEntity(entityDTO);
        entity = entityRepository.save(entity);

        IngresoDTO currrentEntity = entityMapping.getDto(entity);
        return currrentEntity;
    }

    /**
     * Obtiene la entidad según el id suministrado.
     *
     * @param id es el identificador de la entidad.
     * @return entidad almacenada en la base de datos.
     * @throws Exception si ocurre algún error.
     */
    @Override
    public IngresoDTO getEntity(String id) throws Exception {
        log.debug("Solicitud para buscar la Entidad tipo Ingreso: {}", id);
        Ingreso searchedEntity = entityRepository.findById(Integer.parseInt(id))
                .orElseThrow(() -> new EntityNotFoundException(id));
        return entityMapping.getDto(searchedEntity);
    }

    /**
     * Elimina los datos de una entidad.
     *
     * @param id identificador de la entidad que va a ser eliminada.
     * @throws Exception si ocurre algún error.
     */
    @Override
    public void deleteEntity(String id) throws Exception {
        log.debug("Solicitud para eliminar la entidad tipo Ingreso: {}", id);
        entityRepository.deleteById(Integer.parseInt(id));
    }

    /**
     * Obtiene registros de la base de datos según la búsqueda suministrada.
     *
     * @param query indica la búsqueda que se hará en la base de datos.
     * @return entidades almacenadas en base de datos encontradas.
     * @throws Exception si ocurre algún error.
     */
    @Override
    public List<IngresoDTO> searchEntities(String query) throws Exception {
        log.debug("Solicitud para listar todas las Entidades tipo Ingreso: {}", query);
        return entityMapping.getDto(entityRepository.searchEntities(query));
    }

    /**
     * Obtiene registros de la base de datos según la búsqueda y paginación suministradas.
     *
     * @param query    indica la búsqueda que se hará en la base de datos.
     * @param pageable indica la manera en que se paginarán los registros obtenidos.
     * @return entidades almacenadas en base de datos encontradas.
     */
    @Transactional(readOnly = true)
    @Override
    public Page<IngresoDTO> searchEntitiesPaged(String query, Pageable pageable) {
        log.debug("Solicitud para buscar una pagina de la entidad tipo Ingreso para consulta {}", query);
        return entityRepository.searchEntities(query, pageable).map(entityMapping::getDto);
    }
}
