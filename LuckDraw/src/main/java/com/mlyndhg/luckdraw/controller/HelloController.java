package com.mlyndhg.luckdraw.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

@RestController
@Api(tags = "hello")
public class HelloController {
    @ApiOperation("hello")
    @GetMapping("/get")
    public String getHello() {
        return "hello luckdraw";
    }
}
