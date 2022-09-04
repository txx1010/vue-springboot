package com.txx.springboot.controller.dto;

import lombok.Data;

import java.util.List;

@Data
public class HandPaperDTO {
    private List<Integer> handleQuestionIds;
    private Integer paperId;
}
