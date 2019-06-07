# swagger 集成

### 在pom文件增加依赖

jackson版本号为:2.4.5, spring版本号为 spring.version 4.2.5.RELEASE

```
 <!-- swagger2核心依赖 -->
 <dependency>
     <groupId>io.springfox</groupId>
     <artifactId>springfox-swagger2</artifactId>
 <version>2.6.1</version>
 </dependency>
 <dependency>
     <groupId>io.springfox</groupId>
     <artifactId>springfox-swagger-ui</artifactId>
     <version>2.6.1</version>
 </dependency>
 <dependency>
     <groupId>com.fasterxml.jackson.core</groupId>
     <artifactId>jackson-databind</artifactId>
 </dependency>
 <dependency>
     <groupId>com.fasterxml.jackson.core</groupId>
     <artifactId>jackson-core</artifactId>
 </dependency>
 <dependency>
     <groupId>com.fasterxml.jackson.core</groupId>
     <artifactId>jackson-annotations</artifactId>
 </dependency>
```

### web.xml上配置

```
<servlet-mapping>
    <servlet-name>manager</servlet-name>
    <url-pattern>/</url-pattern>
</servlet-mapping>
```

### springmvc.xml配置

```
 <!-- 添加Swagger2的java config作为SpringMVC的bean -->
 <bean class="com.layui.config.SwaggerConfig"/>
 <!-- swagger静态资源访问配置 -->
 <mvc:resources mapping="swagger-ui.html" location="classpath:/META-INF/resources/"/>
 <mvc:resources mapping="/webjars/**" location="classpath:/META-INF/resources/webjars/"/>
```

### SwaggerConfig代码内容

```
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
```

### 类的注解

```
@Api(value = "用户信息", description = "用户信息")
```

### 方法的注解

```
@ApiOperation(value = "查询所有用户", notes = "查询用户", produces = MediaType.APPLICATION_JSON_VALUE)
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "信息id",paramType = "header", dataType = "String", required = true),
            @ApiImplicitParam(name = "page", value = "跳转到的页数", paramType = "query", dataType = "Long"),
            @ApiImplicitParam(name = "size", value = "每页显示的记录数", paramType = "query", dataType = "Long")
    })
```

