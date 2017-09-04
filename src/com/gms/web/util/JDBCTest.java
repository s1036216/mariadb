package com.gms.web.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.gms.web.constaant.DB;
public class JDBCTest {

	public static void main(String[] args) {
		String findName="";
		Connection conn=null;
		try {
			Class.forName(DB.ORACLE_DRIVER); // Class는 for name을통해 데이터베이스드라이버를
											// 호출하는거 예를들어닥터스트레인지 유체이탈
			conn = DriverManager.getConnection(DB.ORACLE_URL,DB.USERNAME,DB.PASSWORD);
			Statement stmt = conn.createStatement();// create 는 없던것을 만드는 펙토리 패턴
			String sql = "SELECT * FROM Member WHERE id='hong'"; //where if문 아이디가 hong
			ResultSet rs = stmt.executeQuery(sql);// execute는 실행해라 sql문을
			if(rs.next()){
				findName=rs.getString("name");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("###결과"+findName);
	}
}
