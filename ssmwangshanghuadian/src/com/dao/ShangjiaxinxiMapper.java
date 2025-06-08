package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Shangjiaxinxi;

public interface ShangjiaxinxiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Shangjiaxinxi record);

    int insertSelective(Shangjiaxinxi record);

    Shangjiaxinxi selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Shangjiaxinxi record);
	
    int updateByPrimaryKey(Shangjiaxinxi record);
	public Shangjiaxinxi quchongShangjiaxinxi(Map<String, Object> shangjiahao);
	public List<Shangjiaxinxi> getAll(Map<String, Object> map);
	public List<Shangjiaxinxi> getsyshangjiaxinxi1(Map<String, Object> map);
	public List<Shangjiaxinxi> getsyshangjiaxinxi3(Map<String, Object> map);
	public List<Shangjiaxinxi> getsyshangjiaxinxi2(Map<String, Object> map);
	public int getCount(Map<String, Object> po);
	public List<Shangjiaxinxi> getByPage(Map<String, Object> map);
	public List<Shangjiaxinxi> select(Map<String, Object> map);
//	所有List
}

