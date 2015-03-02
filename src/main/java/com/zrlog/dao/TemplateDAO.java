package com.zrlog.dao;

import com.hibegin.common.util.IOUtil;
import com.zrlog.entry.Template;
import com.zrlog.util.ParseTools;

import java.util.List;
import java.util.Map;

public class TemplateDAO {


    public List<Template> findAll() {
        return ParseTools.parseJsonList(IOUtil.getStringInputStream(DonationDAO.class.getResourceAsStream("/template.json")), Template.class);
    }

    public Template findById(Long id) {
        return findAll().stream().filter(e -> e.getId().equals(id)).findFirst().orElse(null);
    }
}
