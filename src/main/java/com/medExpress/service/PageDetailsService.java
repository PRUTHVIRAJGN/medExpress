package com.medExpress.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.medExpress.model.PageDetailsModel;
import com.medExpress.repo.PageDetailsRepo;

@Service
public class PageDetailsService {

	@Autowired
	PageDetailsRepo repo;
	
	public Map getPageDetails(String pageName)
	{
		Map map= new HashMap();
		List<PageDetailsModel> list=repo.getDetailsOfPage(pageName);
		for (int i = 0; i < list.size(); i++) {
			map.put(list.get(i).getName(), list.get(i));
		}
		return map;
	}
	
	public String getValueForName(String name)
	{
		return repo.getValueByName(name);
	}
	
}
