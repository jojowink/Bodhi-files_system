package com.nus.zkk.bodhifiles_system.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ author jojo
 * @ date 2024/10/26
 * @ description:监听探针的控制器
 */
@RestController
public class SysController {
    /**
     * 监听探针
     */
    @GetMapping("/")
    public ResponseEntity<?> ListeningRoot() {
        return new ResponseEntity<>("Files_system is running", HttpStatus.OK);
    }
}
