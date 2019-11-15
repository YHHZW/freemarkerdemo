package com.tentcoo.freemarkerdemo.controller;

import com.tentcoo.freemarkerdemo.dto.MenuDTO;
import com.tentcoo.freemarkerdemo.service.FreemarkerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/freemarker")
public class FreemarkerController {
    private static Logger logger = LoggerFactory.getLogger(FreemarkerController.class);

    @Autowired
    private FreemarkerService freemarkerService;

    @RequestMapping("/index")
    public String index(Model model) {
        logger.info("start loading index:", model);
        model.addAttribute("Items", Arrays.asList("张三", "李四", "王五", "赵六"));
        return "index";
    }

    @RequestMapping("/queryNameDemo")
    public String queryNameDemo(Model model) {
        List<MenuDTO> data = freemarkerService.getNameAll();
        logger.info("data: " + data);
        model.addAttribute("data", data);
        return "index";
    }
}
