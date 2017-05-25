package bookBerries.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bookBerries.com.bean.PincodeBean;
import bookBerries.com.util.DBConnection;
import bookBerries.com.util.GenrateMathodsUtils;

public class PincodeDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	boolean result = false;
	private String ajaxResult = null;

	public List<PincodeBean> list() {

		List<PincodeBean> listOfPincode = new ArrayList<PincodeBean>();
		conn = DBConnection.getConnection();

		if (conn != null) {

			String selectSQL = "select * from Pincode order by pincodeId";
			try {
				pstmt = conn.prepareStatement(selectSQL);

				rs = pstmt.executeQuery();
				PincodeBean pincodeBean = null;

				while (rs.next()) {

					pincodeBean = new PincodeBean();
					pincodeBean.setPincodeId(rs.getString("PincodeId"));
					pincodeBean.setPincodeNumber(rs.getString("PincodeNumber"));
					listOfPincode.add(pincodeBean);

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
		return listOfPincode;
	}

	public String ajaxPincodeInsert(String pincode) {

		conn = DBConnection.getConnection();

		if (conn != null) {
			String pincodeId = GenrateMathodsUtils.getRandomString(15);
			String insertSQL = "insert into Pincode(PincodeNumber,pincodeId) values(?,?)";

			try {
				pstmt = conn.prepareStatement(insertSQL);

				pstmt.setString(1, pincode);
				pstmt.setString(2, pincodeId);

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

	public String ajaxPincodeDelete(String pincode) {

		conn = DBConnection.getConnection();

		if (conn != null) {
			String deleteSQL = "delete from Pincode where PincodeNumber=?";

			try {
				pstmt = conn.prepareStatement(deleteSQL);

				pstmt.setString(1, pincode);

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

	public String ajaxPincodeUpdate(String oldPincode, String newPincode) {

		conn = DBConnection.getConnection();
		if (conn != null) {
			String updateSQL = "update Pincode set PincodeNumber=? where PincodeNumber=?";

			try {
				pstmt = conn.prepareStatement(updateSQL);

				pstmt.setString(1, newPincode);
				pstmt.setString(2, oldPincode);

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

	public String listOfPincodeId() {

		conn = DBConnection.getConnection();
		String pincodeId = new String();
		if (conn != null) {

			String selectSQL = "select * from pincode";
			try {
				pstmt = conn.prepareStatement(selectSQL);

				rs = pstmt.executeQuery();

				while (rs.next()) {

					pincodeId += rs.getString(1) + "|";

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
		return pincodeId.substring(0, pincodeId.length() - 1);
	}

	public String listOfpincodeNumber() {

		conn = DBConnection.getConnection();
		String pincodeNumber = new String();
		if (conn != null) {

			String selectSQL = "select * from pincode";
			try {
				pstmt = conn.prepareStatement(selectSQL);

				rs = pstmt.executeQuery();

				while (rs.next()) {

					pincodeNumber += rs.getString("pincodeNumber") + "|";

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
		return pincodeNumber.substring(0, pincodeNumber.length() - 1);
	}

	public String noOfPincode() {

		conn = DBConnection.getConnection();
		int cnt = 0;
		if (conn != null) {

			String selectSQL = "select * from pincode";
			try {
				pstmt = conn.prepareStatement(selectSQL);

				rs = pstmt.executeQuery();

				while (rs.next()) {

					cnt++;

				}

			} catch (SQLException e) {
				e.printStackTrace();
				cnt = 0;
			} finally {

				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
		return cnt + "";
	}

	public String getPincodeName(String pincodeId) {

		conn = DBConnection.getConnection();
		if (conn != null) {

			String selectSQL = "select * from pincode where pincodeId=?";
			try {
				pstmt = conn.prepareStatement(selectSQL);
				pstmt.setString(1, pincodeId);
				rs = pstmt.executeQuery();

				while (rs.next()) {

					return rs.getString("pincodeNumber");
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
		return null;
	}
}
