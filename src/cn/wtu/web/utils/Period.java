package cn.wtu.web.utils;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Period {

	private Date start;
	private Date end;
	private Date size;

	protected Calendar g = Calendar.getInstance();
	
	public Period() {

	}
	// 参数形式："yyyy-MM-dd HH:mm:ss"
	public Period(String start, String end) {
		DateFormat df;
		try {
			// df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			df = new SimpleDateFormat("yyyy-MM-dd");
			this.start = df.parse(start);
			this.end = df.parse(end);
			if (this.end.before(this.start)) {
				throw new Exception("your end < start");
			}
			long date = this.end.getTime() - this.start.getTime();
			this.size = new Date(date);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 获取时间段之差
	public Date getPeriodSize() {
		return this.size;
	}

	// 获取时间段月份之差
	public int getPeriodMonthSize() {
		g.setTime(this.size);
		return g.get(Calendar.MONTH);
	}

	// 获取起始时间的月份
	public int getStarMonth() {
		g.setTime(this.start);
		return g.get(Calendar.MONTH)+1;
	}

	// 获取结尾时间的月份
	public int getEndMonth() {
		g.setTime(this.end);
		return g.get(Calendar.MONTH)+1;
	}

	// 将某个时间点的月份加1
	public static Date getNextMonth(Date date1) {
		Calendar g = Calendar.getInstance();
		g.setTime(date1);
		g.add(Calendar.MONTH, +1);
		Date date2 = g.getTime();
		return date2;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DateFormat d=new SimpleDateFormat("yyyy-MM-dd");
		String  s1="2011-12-01";
		String  s2="2011-12-10";
		Period period= new Period(s1, s2);
		Date ss=period.getStart();
		Date sss=period.getEnd();
		System.out.println((ss.getTime()-sss.getTime())/(3600*1000*24));
		Date size=period.getPeriodSize();
		System.out.println(size.toLocaleString());
		System.out.println(size.getDay());
	}

}
