package com.hyeral.ex.lesson02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hyeral.ex.lesson02.model.UsedGoods;

@Repository
public interface UsedGoodsDAO {//repository

	public List<UsedGoods> selectUsedGoodsList();
}
