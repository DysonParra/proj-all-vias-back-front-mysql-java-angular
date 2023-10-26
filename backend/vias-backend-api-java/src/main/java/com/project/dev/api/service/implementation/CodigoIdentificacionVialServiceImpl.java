/*
 * @fileoverview    {CodigoIdentificacionVialServiceImpl}
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

import com.project.dev.api.domain.CodigoIdentificacionVial;
import com.project.dev.api.dto.CodigoIdentificacionVialDTO;
import com.project.dev.api.repository.CodigoIdentificacionVialRepository;
import com.project.dev.api.service.GenericService;
import com.project.dev.api.service.exception.EntityNotFoundException;
import com.project.dev.api.service.mapping.CodigoIdentificacionVialMapping;
import java.util.List;
import org.mapstruct.factory.Mappers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

/**
 * TODO: Definición de {@code CodigoIdentificacionVialServiceImpl}.
 *
 * @author Dyson Parra
 * @since 1.8
 */
@Transactional
@org.springframework.stereotype.Service
public class CodigoIdentificacionVialServiceImpl implements GenericService<CodigoIdentificacionVialDTO> {

    private final Logger log = LoggerFactory.getLogger(CodigoIdentificacionVialServiceImpl.class);
    private final CodigoIdentificacionVialRepository entityRepository;
    private final CodigoIdentificacionVialMapping entityMapping = Mappers.getMapper(CodigoIdentificacionVialMapping.class);

    /**
     * Constructor.
     *
     * @param entityRepository el repositorio de la entidad.
     */
    public CodigoIdentificacionVialServiceImpl(CodigoIdentificacionVialRepository entityRepository) {
        this.entityRepository = entityRepository;
    }

    /**
     * Obtiene todas las entidades existentes.
     *
     * @return lista de entidades almacenadas en la base de datos.
     * @throws Exception si ocurre algún error.
     */
    @Override
    public List<CodigoIdentificacionVialDTO> getAllEntities() throws Exception {
        log.debug("Solicitud para listar todas las Entidades tipo CodigoIdentificacionVial");
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
    public Page<CodigoIdentificacionVialDTO> getAllEntitiesPaged(Pageable pageable) throws Exception {
        log.debug("Solicitud para listar todas las Entidades tipo CodigoIdentificacionVial con paginacion");
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
    public CodigoIdentificacionVialDTO saveUpdate(CodigoIdentificacionVialDTO entityDTO) throws Exception {
        log.debug("Solicitud para guardar la entidad tipo CodigoIdentificacionVial: {}", entityDTO);

        //TODO: agregar validacion especifica del servicio.
        CodigoIdentificacionVial entity = entityMapping.getEntity(entityDTO);
        entity = entityRepository.save(entity);

        CodigoIdentificacionVialDTO actualEntity = entityMapping.getDto(entity);
        return actualEntity;
    }

    /**
     * Obtiene la entidad según el id suministrado.
     *
     * @param id es el identificador de la entidad.
     * @return entidad almacenada en la base de datos.
     * @throws Exception si ocurre algún error.
     */
    @Override
    public CodigoIdentificacionVialDTO getEntity(String id) throws Exception {
        log.debug("Solicitud para buscar la Entidad tipo CodigoIdentificacionVial: {}", id);
        CodigoIdentificacionVial searchedEntity = entityRepository.findById(String.valueOf(id))
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
        log.debug("Solicitud para eliminar la entidad tipo CodigoIdentificacionVial: {}", id);
        entityRepository.deleteById(String.valueOf(id));
    }

    /**
     * Obtiene registros de la base de datos según la búsqueda suministrada.
     *
     * @param query indica la búsqueda que se hará en la base de datos.
     * @return entidades almacenadas en base de datos encontradas.
     * @throws Exception si ocurre algún error.
     */
    @Override
    public List<CodigoIdentificacionVialDTO> searchEntities(String query) throws Exception {
        log.debug("Solicitud para listar todas las Entidades tipo CodigoIdentificacionVial: {}", query);
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
    public Page<CodigoIdentificacionVialDTO> searchEntitiesPaged(String query, Pageable pageable) {
        log.debug("Solicitud para buscar una pagina de la entidad tipo CodigoIdentificacionVial para consulta {}", query);
        return entityRepository.searchEntities(query, pageable).map(entityMapping::getDto);
    }
}
