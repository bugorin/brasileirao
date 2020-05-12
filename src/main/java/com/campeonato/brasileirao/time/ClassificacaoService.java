package com.campeonato.brasileirao.time;

import org.springframework.stereotype.Service;

@Service
public class ClassificacaoService {


    public Long posicao(Time time) {
        return posicao(time.getId());
    }

    public Long posicao(Long timeId) {
        System.out.println("Gerando classificacao para o id " + timeId);
        return (long) (Math.random() * (20L - 1L));
    }

}