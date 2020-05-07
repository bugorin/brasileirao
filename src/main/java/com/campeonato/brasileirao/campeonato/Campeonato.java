package com.campeonato.brasileirao.campeonato;

import com.campeonato.brasileirao.time.Time;

import java.util.Set;

public class Campeonato {

    private Long id;
    private Long ano;
    private Set<Time> times;

    public Campeonato() {}

    public Campeonato(Long ano, Set<Time> times) {
        this.ano = ano;
        this.times = times;
    }

    public Long getAno() {
        return ano;
    }
}
