package com.layui.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.bson.types.ObjectId;

/**
 * @Author: javan
 * @Date: 2019/6/11
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Person {
    private ObjectId id;
    private String name;
    private int age;
    private Address address;
}
