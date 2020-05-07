package com.campeonato.brasileirao.campeonato;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class CampeonatoController {

    private final CampeonatoRepository campeonatoRepository;

    @Autowired
    public CampeonatoController(CampeonatoRepository campeonatoRepository) {
        this.campeonatoRepository = campeonatoRepository;
    }

    @GetMapping("/campeonato/ano/{ano}")
    public ResponseEntity buscaPorAno(@PathVariable("ano") Long ano) {
        return ResponseEntity.ok(campeonatoRepository.findAllByAno(ano));
    }

}
