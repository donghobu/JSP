package kr.co.jboard1.config;

public class SQL {
	
	// 회원관련
	// 게시물관련 - 클래스에서는 JSP와 다르게 내용 다르게 쓴다
	public final static String DELETE_ARTICLE = "DELETE FROM `JBOARD_ARTICLE` WHERE `seq`=?";
	public final static String UPDATE_HIT = "UPDATE `JBOARD_ARTICLE` SET `hit` = `hit` +1 WHERE `seq`=?";
	public final static String SELECT_ARTICLE = "SELECT * FROM `JBOARD_ARTICLE` "
						  					    + "WHERE `seq` =?";
	
	public final static String SELECT_ARTICLES = "SELECT a.*, b.nick FROM `JBOARD_ARTICLE` AS a "
												+ "JOIN `JBOARD_MEMBER` AS b " 
												+ "ON a.uid = b.uid";
			
	
	public final static String INSERT_ARTICLE = "INSERT INTO `JBOARD_ARTICLE` SET "
													+ "`title`=?, "
													+ "`content`=?, "
													+ "`uid`=?, "
													+ "`regip`=?, "
													+ "`rdate`=NOW()";
		   

}
