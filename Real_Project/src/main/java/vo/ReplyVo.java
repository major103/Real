package vo;

public class ReplyVo {

	int		re_index;
	String	re_date;
	String 	re_content;
	int		free_index;
	String  re_ip;
	String	u_id;
	
	
	public String getRe_ip() {
		return re_ip;
	}
	public void setRe_ip(String re_ip) {
		this.re_ip = re_ip;
	}
	public int getRe_index() {
		return re_index;
	}
	public void setRe_index(int re_index) {
		this.re_index = re_index;
	}
	public String getRe_date() {
		return re_date;
	}
	public void setRe_date(String re_date) {
		this.re_date = re_date;
	}
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}
	public int getFree_index() {
		return free_index;
	}
	public void setFree_index(int free_index) {
		this.free_index = free_index;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
}
