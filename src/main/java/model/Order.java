package model;

public class Order extends product{
    private int orderId;
    private int uid;
    private int quantity;
    private String date;
    private String bill_code;

    public Order() {
    }

    public Order(int orderId, int uid, int quantity, String date, String bill_code) {
        super();
        this.orderId = orderId;
        this.uid = uid;
        this.quantity = quantity;
        this.date = date;
        this.bill_code=bill_code;
    }

    public Order(int uid, int quantity, String date) {
        super();
        this.uid = uid;
        this.quantity = quantity;
        this.date = date;
    }

    public String getBill_code() {
        return bill_code;
    }

    public void setBill_code(String bill_code) {
        this.bill_code = bill_code;
    }

    public int getOrderId() {
        return orderId;
    }
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
}
