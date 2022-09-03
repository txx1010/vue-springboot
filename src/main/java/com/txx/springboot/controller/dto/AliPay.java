package com.txx.springboot.controller.dto;

import lombok.Data;

@Data
public class AliPay {
    private String traceNo;
    private String totalAmount;
    private String subject;
    private String alipayTraceNo;
}


