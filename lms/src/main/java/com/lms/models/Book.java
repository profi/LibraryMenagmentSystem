package com.lms.models;


import javax.annotation.*;
import javax.persistence.Entity;
import javax.persistence.*;
import java.util.Date;

@Entity(name="lms_tbl")
public class Book {
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	private long id;
	
	@Column(name="book_name")
	private String book_name;
	
	
	
	private String autor;
	
	@Temporal(TemporalType.DATE)
	private Date purchase_date;
	
	private String img;
    

	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getBook_name() {
		return book_name;
	}


	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}


	public String getAutor() {
		return autor;
	}


	public void setAutor(String autor) {
		this.autor = autor;
	}


	public Date getPurchase_date() {
		return purchase_date;
	}


	public void setPurchase_date(Date purchase_date) {
		this.purchase_date = purchase_date;
	}


	
	
	
	
	

}
