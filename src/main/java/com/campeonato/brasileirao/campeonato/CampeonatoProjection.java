package com.campeonato.brasileirao.campeonato;

import org.springframework.beans.factory.annotation.Value;

import java.util.List;

public interface CampeonatoProjection {

    @Value("#{target.ano}")
    Long getAno();

    @Value("#{args[0] + ' ' + target.ano}")
    String getAnoComDescricao(String descricao);

    List<TimeProjection> getTimes();

    interface TimeProjection {
        String getNome();
        @Value("#{@classificacaoService.posicao(target.id)}")
        Long getPosicao();
    }

}
