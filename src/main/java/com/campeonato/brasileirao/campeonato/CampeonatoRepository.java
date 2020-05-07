package com.campeonato.brasileirao.campeonato;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CampeonatoRepository extends JpaRepository<Campeonato, Long> {

    List<Campeonato> findAllByAno(Long ano);
}
