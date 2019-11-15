package com.tentcoo.freemarkerdemo.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MenuDTO {
    private String name;
    private String url;
    private Integer iconId;
    private Integer level;
    private String module;
    private Integer weight;
    private Integer pid;
}
