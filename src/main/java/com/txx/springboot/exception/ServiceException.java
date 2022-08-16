package com.txx.springboot.exception;

import lombok.Getter;

/**
 * 自定义异常
 */
@Getter
public class ServiceException extends RuntimeException{
    private String code;

    public ServiceException(String code,String msg){
        super(msg);         //继承的RuntimeException类里面本身就有msg，所以不需要我们重新定义一个msg
        this.code=code;
    }
}
