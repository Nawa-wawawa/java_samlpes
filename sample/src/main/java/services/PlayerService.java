package services;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import beans.Player;
import utils.Db;

public class PlayerService {

	//	Connection use_connection = null;
	//
	//	public PlayerService(Connection con) {
	//		use_connection = con;
	//	}

	public ArrayList<Player> select() {

		ArrayList<Player> player = new ArrayList<>();

		String sql = "select * from players ;";
		try (
				Connection use_connection = Db.open();
				PreparedStatement ps = use_connection.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();) {
			while (rs.next()) {
				Player p = new Player(
						rs.getInt("id"),
						rs.getInt("country_id"),
						rs.getInt("uniform_num"),
						rs.getString("position"),
						rs.getString("name"),
						rs.getString("club"),
						LocalDate.parse(rs.getString("birth")),
						rs.getInt("height"),
						rs.getInt("weight"));
				player.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		}
		return player;
	}

	public Player selectById(int id) {
		String sql = "select * from players where id = ?;";

		Player player = null;

		try (Connection use_connection = Db.open();
				PreparedStatement ps = use_connection.prepareStatement(sql);) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				player = new Player(
						rs.getInt("id"),
						rs.getInt("country_id"),
						rs.getInt("uniform_num"),
						rs.getString("position"),
						rs.getString("name"),
						rs.getString("club"),
						rs.getDate("birth").toLocalDate(),
						rs.getInt("height"),
						rs.getInt("weight"));
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (NamingException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		return player;
	}

	public int insert(Player P) {

		String sql = "INSERT INTO players (country_id,uniform_num,position,name,club,birth,height,weight) VALUES (?,?,?,?,?,?,?,?)";
		int id = 0;

		try (Connection use_connection = Db.open();
				PreparedStatement ps = use_connection.prepareStatement(sql,
						java.sql.Statement.RETURN_GENERATED_KEYS);) {
			ps.setInt(1, P.getCountry_id());
			ps.setInt(2, P.getUniform_num());
			ps.setString(3, P.getPosition());
			ps.setString(4, P.getName());
			ps.setString(5, P.getClub());
			ps.setDate(6, Date.valueOf(P.getBiryh()));
			ps.setInt(7, P.getHeight());
			ps.setInt(8, P.getWeight());
			ResultSet res = ps.getGeneratedKeys();

			ps.executeUpdate();

			if (res.next()) {
				id = res.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		}
		return id;
	}

	public void update(Player p) {
		String sql = "UPDATE  players SET country_id = ?,uniform_num = ?,position = ?,name = ?,club = ?,birth = ?,height = ?,weight = ? WHERE id = ?";

		try (
				Connection use_connection = Db.open();
				PreparedStatement ps = use_connection.prepareStatement(sql);) {
			ps.setInt(1, p.getCountry_id());
			ps.setInt(2, p.getUniform_num());
			ps.setString(3, p.getPosition());
			ps.setString(4, p.getName());
			ps.setString(5, p.getClub());
			ps.setDate(6, Date.valueOf(p.getBiryh()));
			ps.setInt(7, p.getHeight());
			ps.setInt(8, p.getWeight());

			ps.setInt(9, p.getId());

			ps.executeUpdate();

			System.out.println(p.getName());
			System.out.println("更新の完了");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		}
	}

	public void delete(int id) {
		String sql = "DELETE  FROM players WHERE id = ?";

		try (
				Connection use_connection = Db.open();
				PreparedStatement ps = use_connection.prepareStatement(sql);) {
			ps.setInt(1, id);
			int result = ps.executeUpdate();
			System.out.println(result);
			System.out.println("削除の完了");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		}

	}
}
