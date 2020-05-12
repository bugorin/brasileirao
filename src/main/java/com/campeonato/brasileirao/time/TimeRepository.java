package com.campeonato.brasileirao.time;

import org.springframework.data.jpa.repository.*;

import java.util.List;

public interface TimeRepository extends JpaRepository<Time, Long> {

    @Query("SELECT t.nome as nome, t.estado as estado FROM Time t WHERE t.id = 2 ")
    List<TimeNome> findAllBy();

}
