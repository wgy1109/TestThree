package com.dfa;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Stream;

public class JDBCTest {

	public final static String driverClassName = "org.postgresql.Driver";
	public final static String url = "jdbc:postgresql://localhost:8080/test_yang";
	public final static String userName = "postgre";
	public final static String passWord = "postgre";
	public static final int EXPORTEVERYSIZEOFDB = 1000;
	public static int minMatchTYpe = 1; // 最小匹配规则
	public static int maxMatchType = 2;
	public static Set<String> setlist = new HashSet<String>();

	public static void main(String[] args) {
		String sql = "select mdn from sms_black_phone limit 1000 offset 0 ";
		JDBCTest filter = new JDBCTest();
		filter.JDBCexcelFile(sql, "mdn");
		System.out.println("手机号数量：" + setlist.size());
		String[] string = { "13522765900" };
		System.out.println("待检测语句字数：" + string.length);
		long beginTime = System.currentTimeMillis();
		List<String> blackMobile = new ArrayList<String>();
		// java 8 特性 Stream.of(string).filter 测试
	/*	String[] mobiles = Stream.of(string).filter(phone -> {
			if (setlist.contains(phone)) {
				blackMobile.add(phone);
				return false;
			}
			return true;
		}).toArray(String[]::new);*/

		long endTime = System.currentTimeMillis();
		// System.out.println("语句中包含敏感词的个数为：" + mobiles.length + "。包含：" +
		// mobiles);
		System.out.println("总共消耗时间为：" + (endTime - beginTime));
	}

	public void JDBCexcelFile(String sql, String key) {
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("Where is your PostgreSQL JDBC Driver? Include in your library path!");
			e.printStackTrace();
			return;
		}
		try {
			conn = DriverManager.getConnection(url, userName, passWord);
			conn.setAutoCommit(false); // 并不是所有数据库都适用，比如hive就不支持，orcle不需要
			ps = conn.prepareStatement(sql);
			ps.setFetchSize(EXPORTEVERYSIZEOFDB);
			rs = ps.executeQuery();
			while (rs.next()) {
				setlist.add(rs.getString(key));
			}
		} catch (Throwable e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
