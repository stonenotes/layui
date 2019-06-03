package com.layui.service.impl;

import com.layui.service.INavgationLeftService;
import com.layui.utils.StringUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.io.InputStream;

@Service
@Slf4j
public class NavgationLeftServiceImpl implements INavgationLeftService {


    private static final String NAV_LEFT_FILE = "nav_left.json";


    @Override
    public String getNavigationLeft() {
        InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream(NAV_LEFT_FILE);
        String result = StringUtils.instreamToString(inputStream);
        log.error("result: " + result);
        return result;
    }
}
