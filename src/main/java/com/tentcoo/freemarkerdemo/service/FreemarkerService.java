package com.tentcoo.freemarkerdemo.service;

import com.tentcoo.freemarkerdemo.dto.MenuDTO;

import java.util.List;

public interface FreemarkerService {
    List<MenuDTO> getNameAll() throws RuntimeException;
}
