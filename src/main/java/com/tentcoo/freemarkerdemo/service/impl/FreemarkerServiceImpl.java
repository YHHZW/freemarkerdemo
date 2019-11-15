package com.tentcoo.freemarkerdemo.service.impl;

import com.tentcoo.freemarkerdemo.dto.MenuDTO;
import com.tentcoo.freemarkerdemo.mapper.FreemarkerMapper;
import com.tentcoo.freemarkerdemo.service.FreemarkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FreemarkerServiceImpl implements FreemarkerService {

    @Autowired
    private FreemarkerMapper freemarkerMapper;

    @Override
    public List<MenuDTO> getNameAll() throws RuntimeException {
        return freemarkerMapper.getNameAll();
    }
}
