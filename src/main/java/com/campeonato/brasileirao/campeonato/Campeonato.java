package com.campeonato.brasileirao.campeonato;

import com.campeonato.brasileirao.time.Time;

import javax.persistence.*;
import java.io.Serializable;
import java.util.*;

import static java.util.Collections.unmodifiableSet;

@Entity
public class Campeonato implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long ano;
    @ManyToMany
    @JoinTable(name = "Campeonato_Time", joinColumns = @JoinColumn(name = "campeonato_id"), inverseJoinColumns = @JoinColumn(name = "time_id"))
    private Set<Time> times = new HashSet<>();

    @Deprecated
    public Campeonato() {}

    public Campeonato(Long ano, Set<Time> times) {
        this.ano = ano;
        this.times = times;
    }

    public Long getId() {
        return id;
    }

    public Set<Time> getTimes() {
        return unmodifiableSet(this.times);
    }

    public Long getAno() {
        return ano;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Campeonato that = (Campeonato) o;
        return Objects.equals(ano, that.ano);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ano);
    }
}
