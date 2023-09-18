package myPrograms;

public class UserGeSe {
	protected String u_email;
	protected String pwd;
	protected String nam;
	protected String phn;
	protected String address;
	
	public UserGeSe(String u_email, String pwd, String nam, String phn,String address ){
		this.u_email=u_email;
		this.pwd=pwd;
		this.nam=nam;
		this.phn=phn;
		this.address=address;
	}
	
	public UserGeSe(String u_email, String pwd){
		this.u_email=u_email;
		this.pwd=pwd;
	}
	
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getNam() {
		return nam;
	}
	public void setNam(String nam) {
		this.nam = nam;
	}
	public String getPhn() {
		return phn;
	}
	public void setPhn(String phn) {
		this.phn = phn;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
