﻿package com.controller;

import java.io.File;
import java.io.IOException;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.entity.Shangpinxinxi;
import com.server.ShangpinxinxiServer;
import com.util.PageBean;
import net.sf.json.JSONObject;
import com.util.db;
import java.sql.SQLException;
import java.sql.*;
@Controller
public class ShangpinxinxiController {
	@Resource
	private ShangpinxinxiServer shangpinxinxiService;


   
	@RequestMapping("addShangpinxinxi.do")
	public String addShangpinxinxi(HttpServletRequest request,Shangpinxinxi shangpinxinxi,HttpSession session) throws SQLException{
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		shangpinxinxi.setAddtime(time.toString().substring(0, 19));
		shangpinxinxiService.add(shangpinxinxi);
		session.setAttribute("backxx", "添加成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		
		//session.setAttribute("backurl", "shangpinxinxiList.do");
		
		return "redirect:postback.jsp";
		//return "redirect:shangpinxinxiList.do";
		
		
		
	}
 
//	处理编辑
	@RequestMapping("doUpdateShangpinxinxi.do")
	public String doUpdateShangpinxinxi(int id,ModelMap map,Shangpinxinxi shangpinxinxi){
		shangpinxinxi=shangpinxinxiService.getById(id);
		map.put("shangpinxinxi", shangpinxinxi);
		return "shangpinxinxi_updt";
	}
	
	
	
	
	
//	后台详细
	@RequestMapping("shangpinxinxiDetail.do")
	public String shangpinxinxiDetail(int id,ModelMap map,Shangpinxinxi shangpinxinxi){
		shangpinxinxi=shangpinxinxiService.getById(id);
		map.put("shangpinxinxi", shangpinxinxi);
		return "shangpinxinxi_detail";
	}
//	前台详细
	@RequestMapping("spxxDetail.do")
	public String spxxDetail(int id,ModelMap map,Shangpinxinxi shangpinxinxi){
		shangpinxinxi=shangpinxinxiService.getById(id);
		map.put("shangpinxinxi", shangpinxinxi);
		return "shangpinxinxidetail";
	}
//	
	@RequestMapping("updateShangpinxinxi.do")
	public String updateShangpinxinxi(int id,ModelMap map,Shangpinxinxi shangpinxinxi,HttpServletRequest request,HttpSession session){
		shangpinxinxiService.update(shangpinxinxi);
		session.setAttribute("backxx", "修改成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		return "redirect:postback.jsp";
		//String url = request.getHeader("Referer");
		//return "redirect:"+url;
		//return "redirect:shangpinxinxiList.do";
	}

//	分页查询
	@RequestMapping("shangpinxinxiList.do")
	public String shangpinxinxiList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Shangpinxinxi shangpinxinxi, String shangpinbianhao, String shangpinmingcheng, String jiage1,String jiage2, String tupian, String tianjiaren, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 5);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 5);
		
		
		if(shangpinbianhao==null||shangpinbianhao.equals("")){pmap.put("shangpinbianhao", null);}else{pmap.put("shangpinbianhao", shangpinbianhao);}
		if(shangpinmingcheng==null||shangpinmingcheng.equals("")){pmap.put("shangpinmingcheng", null);}else{pmap.put("shangpinmingcheng", shangpinmingcheng);}
		if(jiage1==null||jiage1.equals("")){pmap.put("jiage1", null);}else{pmap.put("jiage1", jiage1);}
		if(jiage2==null||jiage2.equals("")){pmap.put("jiage2", null);}else{pmap.put("jiage2", jiage2);}
		if(tupian==null||tupian.equals("")){pmap.put("tupian", null);}else{pmap.put("tupian", tupian);}
		if(tianjiaren==null||tianjiaren.equals("")){pmap.put("tianjiaren", null);}else{pmap.put("tianjiaren", tianjiaren);}
		
		int total=shangpinxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Shangpinxinxi> list=shangpinxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "shangpinxinxi_list";
	}
	
	@RequestMapping("shangpinxinxiList2.do")
	public String shangpinxinxiList2(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Shangpinxinxi shangpinxinxi, String shangpinbianhao, String shangpinmingcheng, String jiage1,String jiage2, String tupian, String tianjiaren, String issh,HttpServletRequest request){
		/*if(session.getAttribute("user")==null){
			return "login";
		}*/
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		pmap.put("tianjiaren", (String)request.getSession().getAttribute("username"));
		if(shangpinbianhao==null||shangpinbianhao.equals("")){pmap.put("shangpinbianhao", null);}else{pmap.put("shangpinbianhao", shangpinbianhao);}
		if(shangpinmingcheng==null||shangpinmingcheng.equals("")){pmap.put("shangpinmingcheng", null);}else{pmap.put("shangpinmingcheng", shangpinmingcheng);}
		if(jiage1==null||jiage1.equals("")){pmap.put("jiage1", null);}else{pmap.put("jiage1", jiage1);}
		if(jiage2==null||jiage2.equals("")){pmap.put("jiage2", null);}else{pmap.put("jiage2", jiage2);}
		if(tupian==null||tupian.equals("")){pmap.put("tupian", null);}else{pmap.put("tupian", tupian);}
		
		
		int total=shangpinxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Shangpinxinxi> list=shangpinxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "shangpinxinxi_list2";
	}
	
	
	@RequestMapping("spxxList.do")
	public String spxxList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Shangpinxinxi shangpinxinxi, String shangpinbianhao, String shangpinmingcheng, String jiage1,String jiage2, String tupian, String tianjiaren, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 5);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 5);
		
		pmap.put("issh","是");    
		if(shangpinbianhao==null||shangpinbianhao.equals("")){pmap.put("shangpinbianhao", null);}else{pmap.put("shangpinbianhao", shangpinbianhao);}
		if(shangpinmingcheng==null||shangpinmingcheng.equals("")){pmap.put("shangpinmingcheng", null);}else{pmap.put("shangpinmingcheng", shangpinmingcheng);}
		if(jiage1==null||jiage1.equals("")){pmap.put("jiage1", null);}else{pmap.put("jiage1", jiage1);}
		if(jiage2==null||jiage2.equals("")){pmap.put("jiage2", null);}else{pmap.put("jiage2", jiage2);}
		if(tupian==null||tupian.equals("")){pmap.put("tupian", null);}else{pmap.put("tupian", tupian);}
		if(tianjiaren==null||tianjiaren.equals("")){pmap.put("tianjiaren", null);}else{pmap.put("tianjiaren", tianjiaren);}
		
		int total=shangpinxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Shangpinxinxi> list=shangpinxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "shangpinxinxilist";
	}
	
	
	@RequestMapping("spxxListtp.do")
	public String spxxListtp(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Shangpinxinxi shangpinxinxi, String shangpinbianhao, String shangpinmingcheng, String jiage1,String jiage2, String tupian, String tianjiaren, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 5);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 5);
		
		pmap.put("issh","是");    
		if(shangpinbianhao==null||shangpinbianhao.equals("")){pmap.put("shangpinbianhao", null);}else{pmap.put("shangpinbianhao", shangpinbianhao);}
		if(shangpinmingcheng==null||shangpinmingcheng.equals("")){pmap.put("shangpinmingcheng", null);}else{pmap.put("shangpinmingcheng", shangpinmingcheng);}
		if(jiage1==null||jiage1.equals("")){pmap.put("jiage1", null);}else{pmap.put("jiage1", jiage1);}
		if(jiage2==null||jiage2.equals("")){pmap.put("jiage2", null);}else{pmap.put("jiage2", jiage2);}
		if(tupian==null||tupian.equals("")){pmap.put("tupian", null);}else{pmap.put("tupian", tupian);}
		if(tianjiaren==null||tianjiaren.equals("")){pmap.put("tianjiaren", null);}else{pmap.put("tianjiaren", tianjiaren);}
		
		int total=shangpinxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Shangpinxinxi> list=shangpinxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "shangpinxinxilisttp";
	}
	
	
	@RequestMapping("deleteShangpinxinxi.do")
	public String deleteShangpinxinxi(int id,HttpServletRequest request){
		shangpinxinxiService.delete(id);
		String url = request.getHeader("Referer");
		return "redirect:"+url;
		//return "redirect:shangpinxinxiList.do";
	}
	
	
}
