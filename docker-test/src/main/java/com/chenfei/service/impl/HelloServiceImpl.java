package com.chenfei.service.impl;

import com.chenfei.repository.UserRepository;
import com.chenfei.service.HelloService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author chenfei
 * @description
 * @since 2019/9/4
 */
@Slf4j
@Service
public class HelloServiceImpl implements HelloService {

    @Autowired
    UserRepository userRepository;

    @Override
    public String getUserName(){
        return userRepository.findByUsername("docker").getUsername();
    }
}
