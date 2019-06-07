package com.layui.config;

import io.swagger.annotations.Api;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @Author: javan
 * @Date: 2019/6/7
 */
@Configuration
@EnableSwagger2
@EnableWebMvc
public class SwaggerConfig {
    @Bean
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .enable(true)
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.layui.controller"))
                //.apis(RequestHandlerSelectors.any())  //显示所有类
                .apis(RequestHandlerSelectors.withClassAnnotation(Api.class))  //只显示添加@Api注解的类
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("开放接口API")  //粗标题
                .description("HTTP对外开放接口")   //描述
                .version("1.0.0")   //api version
//                .termsOfServiceUrl("http://layui.com")
                .termsOfServiceUrl("http://sanchips.github.io")
                .license("LICENSE")   //链接名称
                .licenseUrl("https://github.com/springfox/springfox/blob/master/LICENSE/")   //链接地址
                .build();
    }
}
