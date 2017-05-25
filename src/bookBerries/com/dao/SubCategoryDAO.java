package bookBerries.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bookBerries.com.bean.SubCategoryBean;
import bookBerries.com.util.DBConnection;
import bookBerries.com.util.GenrateMathodsUtils;

public class SubCategoryDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String ajaxResult = null;

	public List<SubCategoryBean> list() {

		List<SubCategoryBean> listOfSubCategory = new ArrayList<SubCategoryBean>();
		conn = DBConnection.getConnection();

		if (conn != null) {

			String selectSQL = "select * from SubCategory,Category "
					+ " where SubCategory.CategoryId=Category.CategoryId ";
			try {
				pstmt = conn.prepareStatement(selectSQL);

				rs = pstmt.executeQuery();
				SubCategoryBean subCategoryBean = null;

				while (rs.next()) {

					subCategoryBean = new SubCategoryBean();
					subCategoryBean.setCategoryId(rs.getString("CategoryId"));
					subCategoryBean.setSubCategoryId(rs
							.getString("SubCategoryId"));
					subCategoryBean.setSubCategoryName(rs
							.getString("SubCategoryName"));
					subCategoryBean.setCategoryName(rs
							.getString("categoryName"));
					listOfSubCategory.add(subCategoryBean);

				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {

				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
		return listOfSubCategory;
	}

	
	public String ajaxSubCategoryInsert(String subCategoryName,
			String categoryId) {

		conn = DBConnection.getConnection();

		if (conn != null) {

			String subCategoryId = GenrateMathodsUtils.getRandomString(15);
			String insertSQL = "insert into subCategory(subCategoryName,subCategoryId,categoryId) values(?,?,?)";

			try {
				pstmt = conn.prepareStatement(insertSQL);

				pstmt.setString(1, subCategoryName);
				pstmt.setString(2, subCategoryId);
				pstmt.setString(3, categoryId);

				int rowsAffected = pstmt.executeUpdate();

				if (rowsAffected > 0) {
					ajaxResult = "1";

				} else {
					ajaxResult = "0";

				}
			} catch (SQLException e) {
				e.printStackTrace();
				ajaxResult = "0";
			} finally {

				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
		return ajaxResult;
	}

	public String ajaxSubCategoryDelete(String subCategoryId) {

		conn = DBConnection.getConnection();

		if (conn != null) {
			String deleteSQL = "delete from SubCategory where SubCategoryId=?";

			try {
				pstmt = conn.prepareStatement(deleteSQL);

				pstmt.setString(1, subCategoryId);

				int rowsAffected = pstmt.executeUpdate();

				if (rowsAffected > 0) {
					ajaxResult = "1";

				} else {
					ajaxResult = "0";

				}
			} catch (SQLException e) {
				e.printStackTrace();
				ajaxResult = "0";
			} finally {

				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
		return ajaxResult;
	}

	public String ajaxSubCategoryUpdate(String subCategoryName,
			String subCategoryId) {

		conn = DBConnection.getConnection();
		if (conn != null) {
			String updateSQL = "update subCategory set subCategoryName=? where subCategoryId=?";

			try {
				pstmt = conn.prepareStatement(updateSQL);

				pstmt.setString(1, subCategoryName);
				pstmt.setString(2, subCategoryId);

				int rowsAffected = pstmt.executeUpdate();

				if (rowsAffected > 0) {
					ajaxResult = "1";

				} else {
					ajaxResult = "0";

				}
			} catch (SQLException e) {
				e.printStackTrace();
				ajaxResult = "0";
			} finally {

				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
		return ajaxResult;
	}

	public String getSubCategory(String cateId) {
		List<SubCategoryBean> listOFSubCategorys = new ArrayList<SubCategoryBean>();
		conn = DBConnection.getConnection();

		if (conn != null) {
			String selectSQL = "Select * from subcategory where CategoryId=?";
			try {
				pstmt = conn.prepareStatement(selectSQL);
				pstmt.setString(1, cateId);
				rs = pstmt.executeQuery();
				SubCategoryBean subCategorybean = null;
				while (rs.next()) {
					subCategorybean = new SubCategoryBean();

					subCategorybean.setCategoryId(rs.getString("categoryId"));
					subCategorybean.setSubCategoryId(rs
							.getString("SubCategoryId"));
					subCategorybean.setSubCategoryName(rs
							.getString("SubCategoryName"));

					listOFSubCategorys.add(subCategorybean);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {

				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
		String output = "";
		for (int i = 0; i < listOFSubCategorys.size(); i++)
			output += listOFSubCategorys.get(i).getSubCategoryName() + "|";
		if (output != "")
			output = output.substring(0, output.length() - 1);
		output += "~";
		for (int i = 0; i < listOFSubCategorys.size(); i++)
			output += listOFSubCategorys.get(i).getSubCategoryId() + "|";
		if (output != "")
			output = output.substring(0, output.length() - 1);
		return output;
	}

}
