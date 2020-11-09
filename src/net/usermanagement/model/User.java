package net.usermanagement.model;

public class User {
	protected int id;
	protected String name;
	protected String email;
	protected String country;
	protected String gender;
	protected String details;
	protected String agegroup;

	public User() {
	}

	public User(String name, String email, String country, String gender, String details, String agegroup) {
		super();
		this.name = name;
		this.email = email;
		this.country = country;
		this.gender = gender;
		this.details = details;
		this.agegroup = agegroup;
	}

	public User(int id, String name, String email, String country, String gender, String details, String agegroup) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.country = country;
		this.gender = gender;
		this.details = details;
		this.agegroup = agegroup;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAgegroup() {
		return agegroup;
	}

	public void setAgegroup(String agegroup) {
		this.agegroup = agegroup;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}
