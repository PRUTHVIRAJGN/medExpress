package com.medExpress.repo;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.medExpress.model.PageDetailsModel;

@Repository
@Transactional
public interface PageDetailsRepo extends JpaRepository<PageDetailsModel,String>{

	@Query(value="SELECT * FROM PAGE_DETAILS WHERE PAGE_NAME=?1",nativeQuery=true)
	List<PageDetailsModel> getDetailsOfPage(String pageName);
	
	@Query(value="SELECT VALUE FROM PAGE_DETAILS WHERE NAME=?1",nativeQuery=true)
	String getValueByName(String Name);
}
