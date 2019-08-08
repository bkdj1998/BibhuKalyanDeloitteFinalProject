package com.delProject.CustApp.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.delProject.CustApp.dao.CustAppDao;
import com.delProject.CustApp.model.CustApp;
@Service("custAppService")

public class CustAppServiceImpl implements CustAppService {
	
	@Autowired
	private CustAppDao custAppDao;

	@Override
	public List<CustApp> findAll() {
		// TODO Auto-generated method stub
		List<CustApp> custApplist = custAppDao.findAll();
		
		return custApplist;
	}

	@Override
	public void save(CustApp custApp) {
		// TODO Auto-generated method stub
		custAppDao.save(custApp);
		
	}

	@Override
	public void delete(CustApp custApp) {
		// TODO Auto-generated method stub
		custAppDao.delete(custApp);
	}

	@Override
	public CustApp findById(Integer id) {
		// TODO Auto-generated method stub
		CustApp custApp=custAppDao.findById(id).get();
		return custApp;
	}
}
	