package com.zrlog.dao;

import com.hibegin.common.util.IOUtil;
import com.zrlog.entry.Plugin;
import com.zrlog.util.ParseTools;

import java.util.List;

public class PluginDAO {

    public List<Plugin> findAll() {
        return ParseTools.parseJsonList(IOUtil.getStringInputStream(DonationDAO.class.getResourceAsStream("/plugin.json")), Plugin.class);
    }

    public Plugin findById(Long id) {
        return findAll().stream().filter(e -> e.getId().equals(id)).findFirst().orElse(null);
    }
}
