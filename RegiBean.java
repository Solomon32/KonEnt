package beans;

import java.io.Serializable;

public class RegiBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private int id;
	private String anrede;
	private String titel;
	private String vorname;
	private String name;
	private String email;
	private String strasse;
	private String plz;
	private String stadt;
	private String land;
	private String telnr;
	private String pw;
	private int admin;

	public RegiBean() {
	}

	public RegiBean(String anrede, String titel, String vorname, String name, String email, String strasse, String plz,
			String stadt, String land, String telnr, String pw, Integer admin) {
		super();
		this.anrede = anrede;
		this.titel = titel;
		this.vorname = vorname;
		this.name = name;
		this.email = email;
		this.strasse = strasse;
		this.plz = plz;
		this.stadt = stadt;
		this.land = land;
		this.telnr = telnr;
		this.pw = pw;
		this.admin = admin;
	}

	public int getId() {
		return id;
	}

	public void setId(int i) {
		this.id = i;
	}

	public String getAnrede() {
		return anrede;
	}

	public void setAnrede(String anrede) {
		this.anrede = anrede;
	}

	public String getTitel() {
		return titel;
	}

	public void setTitel(String titel) {
		this.titel = titel;
	}

	public String getVorname() {
		return vorname;
	}

	public void setVorname(String vorname) {
		this.vorname = vorname;
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

	public String getStrasse() {
		return strasse;
	}

	public void setStrasse(String strasse) {
		this.strasse = strasse;
	}

	public String getPlz() {
		return plz;
	}

	public void setPlz(String plz) {
		this.plz = plz;
	}

	public String getStadt() {
		return stadt;
	}

	public void setStadt(String stadt) {
		this.stadt = stadt;
	}

	public String getLand() {
		return land;
	}

	public void setLand(String land) {
		this.land = land;
	}

	public String getTelnr() {
		return telnr;
	}

	public void setTelnr(String telnr) {
		this.telnr = telnr;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public Integer getAdmin() {
		return admin;
	}

	public void setAdmin(Integer admin) {
		this.admin = admin;
	}

}
