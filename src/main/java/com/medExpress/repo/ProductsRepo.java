package com.medExpress.repo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.medExpress.model.ProductsModel;

@Repository
@Transactional
public interface ProductsRepo extends JpaRepository<ProductsModel,String>{

	@Query(value="SELECT * FROM PRODUCT_DETAILS WHERE IS_ACTIVE=TRUE AND SUB_CATEGORY_ID=?1",nativeQuery=true)
	List<ProductsModel> getProductsByCategoryId(int id);
	
	@Query(value="SELECT * FROM PRODUCT_DETAILS WHERE IS_ACTIVE=TRUE AND SUB_CATEGORY_ID=?1 ORDER BY PURCHASES,RATING,VIEWS",nativeQuery=true)
	List<ProductsModel> getProductsByPopularity(int id);
	
	@Query(value="SELECT * FROM PRODUCT_DETAILS WHERE IS_ACTIVE=TRUE AND SUB_CATEGORY_ID=?1 ORDER BY DISCOUNT",nativeQuery=true)
	List<ProductsModel> getProductsByDiscount(int id);
	
	@Query(value="SELECT * FROM PRODUCT_DETAILS WHERE IS_ACTIVE=TRUE AND SUB_CATEGORY_ID=?1 ORDER BY PRODUCT_PRICE DESC",nativeQuery=true)
	List<ProductsModel> getProductsByLowToHighPrice(int id);
	
	@Query(value="SELECT * FROM PRODUCT_DETAILS WHERE IS_ACTIVE=TRUE AND SUB_CATEGORY_ID=?1 ORDER BY PRODUCT_PRICE",nativeQuery=true)
	List<ProductsModel> getProductsByHighToLowPrice(int id);
	
	@Query(value="SELECT * FROM PRODUCT_DETAILS WHERE IS_ACTIVE=TRUE AND SUB_CATEGORY_ID=?1 ORDER BY NAME",nativeQuery=true)
	List<ProductsModel> getProductsByAtoZ(int id);
	
	@Query(value="SELECT * FROM PRODUCT_DETAILS WHERE IS_ACTIVE=TRUE AND SUB_CATEGORY_ID=?1 ORDER BY NAME DESC",nativeQuery=true)
	List<ProductsModel> getProductsByZtoA(int id);
}
