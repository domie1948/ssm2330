package com.entity;

public class Shangpinxinxi {
    private Integer id;
	private String shangpinbianhao;	private String shangpinmingcheng;	private String jiage;	private String tupian;	private String tianjiaren;	private String issh;	
    private String addtime;

    

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
	
	public String getShangpinbianhao() {
        return shangpinbianhao;
    }
    public void setShangpinbianhao(String shangpinbianhao) {
        this.shangpinbianhao = shangpinbianhao == null ? null : shangpinbianhao.trim();
    }	public String getShangpinmingcheng() {
        return shangpinmingcheng;
    }
    public void setShangpinmingcheng(String shangpinmingcheng) {
        this.shangpinmingcheng = shangpinmingcheng == null ? null : shangpinmingcheng.trim();
    }	public String getJiage() {
        return jiage;
    }
    public void setJiage(String jiage) {
        this.jiage = jiage == null ? null : jiage.trim();
    }	public String getTupian() {
        return tupian;
    }
    public void setTupian(String tupian) {
        this.tupian = tupian == null ? null : tupian.trim();
    }	public String getTianjiaren() {
        return tianjiaren;
    }
    public void setTianjiaren(String tianjiaren) {
        this.tianjiaren = tianjiaren == null ? null : tianjiaren.trim();
    }	public String getIssh() {
        return issh;
    }
    public void setIssh(String issh) {
        this.issh = issh == null ? null : issh.trim();
    }	
	
	
    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? null : addtime.trim();
    }
}
//   设置字段信息
