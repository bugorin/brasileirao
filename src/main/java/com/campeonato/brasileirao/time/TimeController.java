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

    @GetMapping("/times")
    public ResponseEntity todosTimes() {
        return ResponseEntity.ok(timeRepository.findAll());
    }

}
