package com.model;

public class Order {
    private String orderID; 
    private String customerID; 
    private String clothType;
    private String white;

    
    public Order(String orderID, String customerID, String clothType, String white) {
		super();
		this.orderID = orderID;
		this.customerID = customerID;
		this.clothType = clothType;
		this.white = white;
	}

	public String getOrderID() {
    	
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getClothType() {
        return clothType;
    }

    public void setClothType(String clothType) {
        this.clothType = clothType;
    }

    public String getWhite() {
        return white;
    }

    public void setWhite(String white) {
        this.white = white;
    }
}

