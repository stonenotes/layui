package com.layui.bean;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class HeaderBean implements Serializable {
    private String platfomName;
    private List<String> tabNameList;
    private List<String> otherList;
    private List<String> userSetList;
    private String logoutName;
    private UserInfoBean userInfoBean;
}
