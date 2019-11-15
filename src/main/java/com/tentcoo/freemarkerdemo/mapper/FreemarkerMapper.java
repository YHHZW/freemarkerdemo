package com.tentcoo.freemarkerdemo.mapper;

import com.tentcoo.freemarkerdemo.dto.MenuDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
@Mapper
public interface FreemarkerMapper {
    List<MenuDTO> getNameAll();
}
