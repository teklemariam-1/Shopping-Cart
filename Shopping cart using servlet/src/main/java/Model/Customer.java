package Model;


public class Customer {

    //    private int id;
//    private String fullName;
//    private int age;
    private String username;
    private String password;

    public Customer() {

    }

    public Customer(String username, String password) {
        this.username = username;
        this.password = password;
    }

    //
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
}
