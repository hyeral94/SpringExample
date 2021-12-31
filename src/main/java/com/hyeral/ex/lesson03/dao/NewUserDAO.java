package com.hyeral.ex.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.hyeral.ex.lesson03.model.NewUser;

@Repository
public interface  NewUserDAO {
	
	public int insertUser(
			@Param("name") String name,
			@Param("yyyymmdd") String yyyymmdd,
			@Param("email") String email,
			@Param("introduce") String introduce
			);
	
	public NewUser selectUser(@Param("id") int id);

}
