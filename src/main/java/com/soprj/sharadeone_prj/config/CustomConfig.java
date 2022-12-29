package com.soprj.sharadeone_prj.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(value = "com.soprj.sharadeone_prj.mapper")
public class CustomConfig {
}
