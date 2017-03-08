package com.wy.service;

import com.wy.po.Customer;

/**
 * Created by Andrew  on 2017/3/7.
 */
public interface CustomerService {
    Customer login(Customer customer);

    int insertCustomer(Customer customer);

    Customer ForPassword(Customer customer);

    int changePassword(Customer customer);
}
