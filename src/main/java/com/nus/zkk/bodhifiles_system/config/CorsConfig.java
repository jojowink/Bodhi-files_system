package com.nus.zkk.bodhifiles_system.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @ author jojo
 * @ date 2024/10/22
 * @ description:配置跨域
 */
@Configuration
public class CorsConfig implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")  // 匹配所有的API
                .allowedOrigins("http://localhost:8081") // 允许的前端域名
                .allowedOrigins("http://af3a3786a38fe426c824d75ac35c9920-2006375438.ap-southeast-1.elb.amazonaws.com:8087")
                .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS") // 允许的方法
                .allowedHeaders("*") // 允许的请求头
                .allowCredentials(true); // 允许携带凭证（如Cookies）
    }

}
