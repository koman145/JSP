package chap13;

import java.sql.*;
import java.sql.Date;
import java.util.*;

public class BBSList {
	private ArrayList<Integer> seqNoList = new ArrayList<>(); // 순번
	private ArrayList<String> titleList = new ArrayList<>(); // 제목
	private ArrayList<String> writerList = new ArrayList<>(); // 작성자
	private ArrayList<Date> dateList = new ArrayList<>(); // 저장일자
	private ArrayList<Time> timeList = new ArrayList<>(); // 저장시각
	private boolean lastPage = false; // 게시글 목록의 마지막 페이지인지 여부

	public BBSList() {

	}

	public void setSeqNo(int index, Integer seqNo) {
		this.seqNoList.add(index, seqNo);
	}

	public void setTitle(int index, String title) {
		this.titleList.add(index, title);
	}

	public void setWriter(int index, String writer) {
		this.writerList.add(index, writer);
	}

	public void setDate(int index, Date date) {
		this.dateList.add(index, date);
	}

	public void setTime(int index, Time time) {
		this.timeList.add(index, time);
	}

	public void setLastPage(boolean lastPage) {
		this.lastPage = lastPage;
	}

	public ArrayList<Integer> getSeqNoList() {
		return seqNoList;
	}

	public ArrayList<String> getTitleList() {
		return titleList;
	}

	public ArrayList<String> getWriterList() {
		return writerList;
	}

	public ArrayList<Date> getDateList() {
		return dateList;
	}

	public ArrayList<Time> getTimeList() {
		return timeList;
	}
	
	public boolean isLastPage() {
		return lastPage;
	}
	
	public int getListSize() {
		return seqNoList.size();
	}

}
