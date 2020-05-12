package com.campeonato.brasileirao.campeonato;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
public class CampeonatoController {

    private final CampeonatoRepository campeonatoRepository;

    @Autowired
    public CampeonatoController(CampeonatoRepository campeonatoRepository) {
        this.campeonatoRepository = campeonatoRepository;
    }

    @GetMapping("/campeonato/ano/{ano}")
    public ResponseEntity buscaPorAno(@PathVariable("ano") Long ano) {
        return ResponseEntity.ok(campeonatoRepository.findAllCampeonatoAno(ano));
    }

    @GetMapping("/campeonato/ano/descricao/{ano}")
    public ResponseEntity buscaPorAnoComdescricao(@PathVariable("ano") Long ano) {
        List<CampeonatoProjection> campeonatos = campeonatoRepository.findAllCampeonatoAno(ano);
        List<String> brasileirao = campeonatos.stream().map(c -> c.getAnoComDescricao("Brasileirao")).collect(Collectors.toList());
        return ResponseEntity.ok(brasileirao);
    }

    @GetMapping("/campeonato/tudo/{ano}")
    public ResponseEntity buscaTudoPorAno(@PathVariable("ano") Long ano) {
        return ResponseEntity.ok(campeonatoRepository.findAllCampeonato(ano));
    }

    @GetMapping("/campeonato/native")
    public ResponseEntity todos() {
        return ResponseEntity.ok(campeonatoRepository.nativeQuery());
    }

}
