package model;

public class Account {
    private int id;
    private String name;
    private String username;
    private String password;
    private String email;
    private int isSell;
    private int isAdmin;
    private int isCustomer;





    public Account() {
    }

    public Account(int id, String name, String username, String password,String email,int isCustomer, int isSell, int isAdmin) {
        this.id = id;
        this.name = name;
        this.username = username;
        this.password = password;
        this.email=email;
        this.isCustomer = isCustomer;
        this.isSell = isSell;
        this.isAdmin = isAdmin;

    }
    public Account(String name, String username) {
        this.name = name;
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIsCustomer() {
        return isCustomer;
    }

    public void setIsCustomer(int isCustomer) {
        this.isCustomer = isCustomer;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", isSell=" + isSell +
                ", isAdmin=" + isAdmin +
                ", isCustomer=" + isCustomer +
                '}';
    }
}
