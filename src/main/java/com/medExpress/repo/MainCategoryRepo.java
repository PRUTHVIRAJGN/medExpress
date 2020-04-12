package com.medExpress.repo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.medExpress.model.MainCategoryModel;

@Repository
@Transactional
public interface MainCategoryRepo extends JpaRepository<MainCategoryModel,Integer>{
	
	@Query(value="SELECT * FROM MAIN_CATEGORY WHERE IS_ACTIVE=TRUE",nativeQuery=true)
	List<MainCategoryModel> getList();
	
}
