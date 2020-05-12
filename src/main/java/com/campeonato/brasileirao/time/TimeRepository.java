package com.campeonato.brasileirao.time;

import org.springframework.data.jpa.repository.*;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface TimeRepository extends JpaRepository<Time, Long> {

    List<Time> findAllByEstado(Estado estado);

    List<Time> findAllByNomeContaining(String nome);

    List<NomeOnly> findAllBy();

    @Query("SELECT t FROM Time t WHERE nome LIKE %:#{#dto.nome}%")
    List<Time> findAllByNome(NomeOnly dto);

}
