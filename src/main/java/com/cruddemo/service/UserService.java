package com.cruddemo.service;

import com.cruddemo.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
