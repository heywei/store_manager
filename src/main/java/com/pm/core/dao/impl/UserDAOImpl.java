package com.pm.core.dao.impl;

import com.pm.core.dao.UserDao;
import com.pm.core.model.User;
import com.pm.core.orm.GeneralDAOImpl;

public class UserDaoImpl extends GeneralDAOImpl<User, Long> implements UserDao {
	public User findByName(String name) {
		return findUniqueBy("name", name);
	}

}
