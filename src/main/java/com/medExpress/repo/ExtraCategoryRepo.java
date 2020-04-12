package com.medExpress.repo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.medExpress.model.ExtraCategoryModel;

@Repository
@Transactional
public interface ExtraCategoryRepo extends JpaRepository<ExtraCategoryModel, Integer>{

	@Query(value="SELECT * FROM EXTRA_SUB_CATEGORY WHERE SUB_CATEGORY_ID=?1", nativeQuery=true)
	List<ExtraCategoryModel> getExtraCategoryList(int sub_cat_id);
}
