package com.txx.springboot.controller.dto;

import lombok.Data;

@Data
public class AliPay {
    private String subject;
    private String traceNo;
    private String totalAmount;
//    private String alipayTraceNo;
}

