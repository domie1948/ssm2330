package com.server.impl;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.ShangjiaxinxiMapper;
import com.entity.Shangjiaxinxi;
import com.server.ShangjiaxinxiServer;
@Service
public class ShangjiaxinxiServerImpi implements ShangjiaxinxiServer {
   @Resource
   private ShangjiaxinxiMapper gdao;
	@Override
	public int add(Shangjiaxinxi po) {
		return gdao.insert(po);
	}

	@Override
	public int update(Shangjiaxinxi po) {
		return gdao.updateByPrimaryKeySelective(po);
	}

	
	
	@Override
	public int delete(int id) {
		return gdao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Shangjiaxinxi> getAll(Map<String, Object> map) {
		return gdao.getAll(map);
	}
	
	public List<Shangjiaxinxi> getsyshangjiaxinxi1(Map<String, Object> map) {
		return gdao.getsyshangjiaxinxi1(map);
	}
	public List<Shangjiaxinxi> getsyshangjiaxinxi2(Map<String, Object> map) {
		return gdao.getsyshangjiaxinxi2(map);
	}
	public List<Shangjiaxinxi> getsyshangjiaxinxi3(Map<String, Object> map) {
		return gdao.getsyshangjiaxinxi3(map);
	}
	
	@Override
	public Shangjiaxinxi quchongShangjiaxinxi(Map<String, Object> account) {
		return gdao.quchongShangjiaxinxi(account);
	}

	@Override
	public List<Shangjiaxinxi> getByPage(Map<String, Object> map) {
		return gdao.getByPage(map);
	}

	@Override
	public int getCount(Map<String, Object> map) {
		return gdao.getCount(map);
	}

	@Override
	public List<Shangjiaxinxi> select(Map<String, Object> map) {
		return gdao.select(map);
	}

	@Override
	public Shangjiaxinxi getById(int id) {
		return gdao.selectByPrimaryKey(id);
	}

}

