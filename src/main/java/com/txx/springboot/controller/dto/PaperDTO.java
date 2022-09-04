package com.txx.springboot.controller.dto;

import lombok.Data;

@Data
public class PaperDTO {
    private Integer type1;  //选择题数量
    private Integer type2;   //填空
    private Integer type3;  //问答
    private Integer paperId;    //试卷id
    private Integer courseId;    //试卷id
}
