package com.wy.service.impl;

import com.wy.dao.CustomerDao;
import com.wy.po.Customer;
import com.wy.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Andrew  on 2017/3/7.
 */
@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    CustomerDao customerDao;
    @Override
    public Customer login(Customer customer) {
        return customerDao.selectForLogin(customer);
    }

    @Override
    public int insertCustomer(Customer customer) {
        return customerDao.insertCustomer(customer);
    }

    @Override
    public Customer ForPassword(Customer customer) {
        return customerDao.selectForReset(customer);
    }

    @Override
    public int changePassword(Customer customer) {
        return customerDao.updatePasswordById(customer);
    }
}
