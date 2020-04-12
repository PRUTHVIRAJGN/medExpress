package com.medExpress.repo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.medExpress.model.SubCategoryModel;

@Repository
@Transactional
public interface SubCategoryRepo extends JpaRepository<SubCategoryModel,Integer>{

	@Query(value="SELECT * FROM SUB_CATEGORY WHERE IS_ACTIVE=TRUE AND MAIN_CATEGORY_ID=?1",nativeQuery=true)
	List<SubCategoryModel> getSubCatById(int id);
	
	@Query(value="SELECT * FROM SUB_CATEGORY WHERE IS_ACTIVE=TRUE AND ID IN (?1)",nativeQuery=true)
	List<SubCategoryModel> getSubCategoriesList(List<Integer> categoryList);

}
