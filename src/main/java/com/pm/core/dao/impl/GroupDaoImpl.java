package com.pm.core.dao.impl;

import com.pm.core.dao.GroupDao;
import com.pm.core.model.Group;
import com.pm.core.orm.GeneralDAOImpl;



public class GroupDaoImpl extends GeneralDAOImpl<Group, Long> implements GroupDao  {



	public Group findByName(String name) {
		// TODO Auto-generated method stub
		return findUniqueBy("name", name);
	}

	
}
