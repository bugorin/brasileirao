package com.campeonato.brasileirao.campeonato;

import com.campeonato.brasileirao.time.TimeNomeParam;
import org.springframework.data.jpa.repository.*;

import java.util.List;

public interface CampeonatoRepository extends JpaRepository<Campeonato, Long> {

    <T> List<T> findAllByAno(Long ano, Class<T> clazz);

    default List<Campeonato> findAllCampeonato(Long ano) {
        return findAllByAno(ano, Campeonato.class);
    }

    default List<CampeonatoProjection> findAllCampeonatoAno(Long ano) {
        return findAllByAno(ano, CampeonatoProjection.class);
    }

    @Query("SELECT c as campeonato, count(c) as qtdCampeonato, (count(c) > 0) as temCampeonato FROM Campeonato c GROUP BY c.id")
    List<CampeonatoQuantidade> nativeQuery();

}