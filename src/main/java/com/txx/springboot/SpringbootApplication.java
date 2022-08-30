package com.txx.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
//@EnableCaching  //开启缓存
//启动类
public class SpringbootApplication {


    public static void main(String[] args) {
        SpringApplication.run(SpringbootApplication.class, args);
    }

}

