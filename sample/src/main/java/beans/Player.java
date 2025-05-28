package beans;

import java.time.LocalDate;

public class Player {
	private int id;
	private int country_id;
	private int uniform_num;
	private String position;
	private String name;
	private String club;
	private LocalDate biryh;
	private int height;
	private int weight;
	
	
	
//	
	public Player(int id, int country_id, int uniform_num, String position, String name, String club, LocalDate biryh,
			int height, int weight) {
		super();
		this.id = id;
		this.country_id = country_id;
		this.uniform_num = uniform_num;
		this.position = position;
		this.name = name;
		this.club = club;
		this.biryh = biryh;
		this.height = height;
		this.weight = weight;
	}
	public Player(int country_id, int uniform_num, String position, String name, String club, LocalDate biryh,
			int height, int weight) {
		super();
		this.country_id = country_id;
		this.uniform_num = uniform_num;
		this.position = position;
		this.name = name;
		this.club = club;
		this.biryh = biryh;
		this.height = height;
		this.weight = weight;
	}
//	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCountry_id() {
		return country_id;
	}
	public void setCountry_id(int country_id) {
		this.country_id = country_id;
	}
	public int getUniform_num() {
		return uniform_num;
	}
	public void setUniform_num(int uniform_num) {
		this.uniform_num = uniform_num;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClub() {
		return club;
	}
	public void setClub(String club) {
		this.club = club;
	}
	public LocalDate getBiryh() {
		return biryh;
	}
	public void setBiryh(LocalDate biryh) {
		this.biryh = biryh;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	
	
	
}
