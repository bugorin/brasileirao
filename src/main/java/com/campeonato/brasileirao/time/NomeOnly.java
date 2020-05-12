package com.campeonato.brasileirao.time;

public class NomeOnly {

    private Long id;
    private String nome;

    public NomeOnly(Long id, String nome) {
        this.nome = nome;
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }
}
