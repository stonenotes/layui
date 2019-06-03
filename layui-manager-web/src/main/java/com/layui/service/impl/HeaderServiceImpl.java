package com.layui.service.impl;

import com.layui.bean.HeaderBean;
import com.layui.bean.UserInfoBean;
import com.layui.service.IHeaderService;
import org.springframework.stereotype.Service;

import java.util.Arrays;

@Service
public class HeaderServiceImpl implements IHeaderService {
    @Override
    public HeaderBean getHeaderInfo() {
        HeaderBean bean = new HeaderBean();
        bean.setPlatfomName("layui 后台管理系统");
        bean.setTabNameList(Arrays.asList("控制台", "商品管理", "用户管理"));
        bean.setOtherList(Arrays.asList("其他系统", "邮件管理", "授权管理"));
        bean.setUserSetList(Arrays.asList("基本资料", "安全设置"));
        bean.setLogoutName("退出登录");
        bean.setUserInfoBean(new UserInfoBean("爱爱", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_100" +
                "00&sec=1559412110706&di=955d393be032f0ea7335979b03500930&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201502%2F20%2F20150220235742_KBi44.jpeg"));
        return bean;
    }
}
