package com.drive.service.generator.impl;

import com.drive.service.generator.IDGeneratorEnum;
import com.drive.service.generator.IDGeneratorService;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service("identityIDGeneratorService")
public class IdentityIDGeneratorService implements IDGeneratorService, InitializingBean, ApplicationContextAware{

    private ApplicationContext applicationContext;

    public static Object sync = new Object();

    @Override
    public String generate() {
        String identityID = null;
        synchronized(sync) {
            identityID = UUID.randomUUID().toString();
        }

        return null==identityID?null:identityID.replaceAll("-","");
    }

    @Override
    public IDGeneratorEnum getType() {
        return IDGeneratorEnum.IDENTITY;
    }

    @Override
    public void afterPropertiesSet() throws Exception {

    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }
}
