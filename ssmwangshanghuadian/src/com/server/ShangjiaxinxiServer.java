package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Shangjiaxinxi;

public interface ShangjiaxinxiServer {

  public int add(Shangjiaxinxi po);

  public int update(Shangjiaxinxi po);
  
  
  
  public int delete(int id);

  public List<Shangjiaxinxi> getAll(Map<String,Object> map);
  public List<Shangjiaxinxi> getsyshangjiaxinxi1(Map<String,Object> map);
  public List<Shangjiaxinxi> getsyshangjiaxinxi2(Map<String,Object> map);
  public List<Shangjiaxinxi> getsyshangjiaxinxi3(Map<String,Object> map);
  public Shangjiaxinxi quchongShangjiaxinxi(Map<String, Object> acount);

  public Shangjiaxinxi getById( int id);

  public List<Shangjiaxinxi> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Shangjiaxinxi> select(Map<String, Object> map);
}
//	所有List
