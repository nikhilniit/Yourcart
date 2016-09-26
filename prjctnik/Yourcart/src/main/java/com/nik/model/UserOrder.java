package com.nik.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
@Entity
public class UserOrder implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue
	private int userOrderId;
	@OneToOne
	@JoinColumn(name="cartId")
	private Cart cart;
	@OneToOne
	@JoinColumn(name="customerId")
	private Signup customer;
	public int getUserOrderId() {
		return userOrderId;
	}
	public void setUserOrderId(int userOrderId) {
		this.userOrderId = userOrderId;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public Signup getCustomer() {
		return customer;
	}
	public void setCustomer(Signup customer) {
		this.customer = customer;
	}
}
