package com.zrlog.dao;

import com.google.gson.Gson;
import com.hibegin.common.util.IOUtil;
import com.zrlog.entry.Donation;

import java.util.List;

public class DonationDAO {

    public List<Donation> findAll() {
        return new Gson().fromJson(IOUtil.getStringInputStream(DonationDAO.class.getResourceAsStream("/donation.json")), List.class);
    }
}
