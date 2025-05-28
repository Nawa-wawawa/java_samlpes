package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import beans.Player;
import services.PlayerService;
import utils.Db;

/**
 * Servlet implementation class Map
 */
@WebServlet("/players")
public class players extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		ArrayList<Player> players = null;

		try (Connection con = Db.open()) {
			PlayerService ps = new PlayerService();
			players = ps.select();
			
			
			

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		}

		request.setAttribute("players", players);

		request.getRequestDispatcher("/players.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		try (Connection con = Db.open()) {
			
			int country_id = Integer.parseInt(request.getParameter("country_id"));
			int uniform_num = Integer.parseInt(request.getParameter("uniform_num"));
			String position = (request.getParameter("position"));
			String name = (request.getParameter("name"));
			String club = (request.getParameter("club"));
			LocalDate birth = LocalDate.parse(request.getParameter("birth"));
			int height = Integer.parseInt(request.getParameter("height"));
			int weight = Integer.parseInt(request.getParameter("weight"));
			System.out.println(name);
			Player p = new Player(country_id,uniform_num,position,name,club,birth,height,weight);
			
			PlayerService ps = new PlayerService();
			ps.insert(p);
			System.out.println(p.getName());
		} catch (SQLException | NamingException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		
		doGet(request,response);
		//request.getRequestDispatcher("/players.jsp").forward(request, response);
	}
		

}
