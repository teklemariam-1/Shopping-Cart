package DAO;

import Model.Customer;


import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

public class CustomerDao {



    public static Hashtable<Integer, Customer> vip = new Hashtable<Integer, Customer>();

    {
        vip.put(1, new Customer("admin", "1234"));

        vip.put(2, new Customer("luwam", "1234"));

        vip.put(3, new Customer("admin", "1234"));

        vip.put(4, new Customer("akile", "1234"));
    }

    public int key =5;

    public List<Customer> getAllCustomers() {

        return new ArrayList<Customer>(vip.values());
    }

    public void addCustomer(Customer customer) {
        System.out.println("new customer is registered");
        vip.put(key++, customer);

    }



}
