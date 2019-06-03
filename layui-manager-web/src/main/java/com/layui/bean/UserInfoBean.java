package com.layui.bean;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;

@Data
@AllArgsConstructor
public class UserInfoBean implements Serializable {

    private String userName;
    private String logo;

}
