package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.UserEntity;
import java.util.List;
import java.util.Optional;


//db query ->table
@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
	
	//findByxxxx(xxx);
	
	//selecr*from users where email = :email
	Optional<UserEntity> findByEmail(String email);
	
	List<UserEntity> findByRole(String role);

}
