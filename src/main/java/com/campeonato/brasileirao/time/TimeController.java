package com.campeonato.brasileirao.time;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class TimeController {

    private final TimeRepository timeRepository;

    @Autowired
    public TimeController(TimeRepository timeRepository) {
        this.timeRepository = timeRepository;
    }

    @GetMapping("/times/{nome}")
    public ResponseEntity todosTimes(@PathVariable("nome") String nome) {
        return ResponseEntity.ok(timeRepository.findAllByNome(new NomeOnly(1l, nome)));
    }

    @GetMapping("/time/{estado}")
    public ResponseEntity todosTimes(@PathVariable("estado") Estado estado) {
        return ResponseEntity.ok(timeRepository.findAllByEstado(estado));
    }

}
