package com.nus.zkk.bodhifiles_system.config;

import org.springframework.context.annotation.Import;

import java.lang.annotation.*;

/**
 * @ author jojo
 * @ date 2024/10/13
 * @ description:Swagger注解
 */
@Target({ ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
@Import({ SwaggerConfig.class })
public @interface EnableCustomSwagger {
}
