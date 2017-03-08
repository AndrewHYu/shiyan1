package com.wy.dao;

import com.wy.po.Customer;

/**
 * Created by Andrew  on 2017/3/7.
 */
public interface CustomerDao {
    Customer selectForLogin(Customer customer);

    int insertCustomer(Customer customer);

    Customer selectForReset(Customer customer);

    int updatePasswordById(Customer customer);
}
