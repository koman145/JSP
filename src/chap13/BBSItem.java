package chap13;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;

import javax.servlet.ServletException;

public class BBSItem {
	private String seqNo;
	private String title;
	private String content;
	private String writer;
	private Date date;
	private Time time;

	public String getSeqNo() {
		return seqNo;
	}

	public void setSeqNo(String seqNo) {
		this.seqNo = seqNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

	public void readDB() throws ServletException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("org.apache.commons.dbcp.PoolingDriver");
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/wdbpool");
			if (conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");

			String sql = "select * from bbs where seqNo = ?;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, seqNo);

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				title = rs.getString("title");
				content = rs.getString("content");
				writer = rs.getString("writer");
				date = rs.getDate("wdate");
			}
		} catch (Exception e) {
			throw new ServletException(e);
		} finally {
			try {
				pstmt.close();
			} catch (Exception ignored) {
			}
			try {
				conn.close();
			} catch (Exception ignored) {
			}
		}
	}

}
