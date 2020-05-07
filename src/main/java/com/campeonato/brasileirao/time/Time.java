package com.campeonato.brasileirao.time;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.io.Serializable;
import java.util.Objects;

import static javax.persistence.EnumType.STRING;

@Entity
public class Time implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String nome;
    @NotNull
    @Enumerated(STRING)
    private Estado estado;

    @Deprecated
    public Time() {
    }

    public Time(String nome, Estado estado) {
        this.nome = nome;
        this.estado = estado;
    }

    public Long getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public Estado getEstado() {
        return estado;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Time time = (Time) o;
        return Objects.equals(nome, time.nome) &&
                estado == time.estado;
    }

    @Override
    public int hashCode() {
        return Objects.hash(nome, estado);
    }

}
