package myPrograms;

public class FlightsListGeSe {
	protected String name;
	protected String pri;
	protected String flt_num;
	protected String flt_from;
	protected String flt_to;
	protected String dep;
	protected String arr;
	protected int tot_se;
	protected int b_se;
	protected String dt;
	protected String a_seats;
	protected int count;
    
    public FlightsListGeSe(String name,String pri,String flt_num,String flt_from,String flt_to,String dep,String arr, String dt,String a_seats){	
    	this.flt_from = flt_from;
    	this.flt_to = flt_to;
    	this.dt=dt;
    	this.name=name;
    	this.pri=pri;
    	this.flt_num=flt_num;
    	this.dep=dep;
    	this.arr=arr;
    	this.a_seats=a_seats;
	   	
    	   	
    }
    public FlightsListGeSe(int count){
    	this.count=count;
    }
    
   public FlightsListGeSe(String name,String pri,String flt_num,String flt_from,String flt_to,String dep,String arr, String dt, int tot_se, int b_se, String a_seats){	
    	this.flt_from = flt_from;
    	this.flt_to = flt_to;
    	this.dt=dt;
    	this.name=name;
    	this.pri=pri;
    	this.flt_num=flt_num;
    	this.dep=dep;
    	this.arr=arr;
    	this.tot_se = tot_se;
    	this.b_se=b_se;
    	this.a_seats=a_seats;
	   	
    	   	
    }

	public FlightsListGeSe(int b_se, String flt_num) {
		this.b_se = b_se;
    	this.flt_num = flt_num;
	
	}
	
	  public FlightsListGeSe(String name,String pri,String flt_num,String flt_from,String flt_to,String dep,String arr, int tot_se, int b_se, String dt){	
	    	this.name = name;
	    	this.pri = pri;
	    	this.flt_num = flt_num;
		  	this.flt_from = flt_from;
	    	this.flt_to = flt_to;
	    	this.dep=dep;
	    	this.arr=arr;
	    	this.tot_se = tot_se;
	    	this.b_se=b_se;
	    	this.dt=dt;   	
	    }
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPri() {
		return pri;
	}
	public void setPri(String pri) {
		this.pri = pri;
	}
	public String getFlt_num() {
		return flt_num;
	}
	public void setFlt_num(String flt_num) {
		this.flt_num = flt_num;
	}
	public String getFlt_from() {
		return flt_from;
	}
	public void setFlt_from(String flt_from) {
		this.flt_from = flt_from;
	}
	public String getFlt_to() {
		return flt_to;
	}
	public void setFlt_to(String flt_to) {
		this.flt_to = flt_to;
	}
	public String getDep() {
		return dep;
	}
	public void setDep(String dep) {
		this.dep = dep;
	}
	public String getArr() {
		return arr;
	}
	public void setArr(String arr) {
		this.arr = arr;
	}
	public int getTot_se() {
		return tot_se;
	}
	public void setTot_se(int tot_se) {
		this.tot_se = tot_se;
	}
	public int getB_se() {
		return b_se;
	}
	public void setB_se(int b_se) {
		this.b_se = b_se;
	}
	public String getDt() {
		return dt;
	}
	public void setDt(String dt) {
		this.dt = dt;
	}
	public String getA_seats() {
		return a_seats;
	}
	public void setA_seats(String a_seats) {
		this.a_seats = a_seats;
	}
	
	public int getcount() {
		return count;
	}
	public void setcount(int count) {
		this.count = count;
	}
}
