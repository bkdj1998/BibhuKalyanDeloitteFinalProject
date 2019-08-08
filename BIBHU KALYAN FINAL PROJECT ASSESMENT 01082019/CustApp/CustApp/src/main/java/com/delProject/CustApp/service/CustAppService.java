package com.delProject.CustApp.service;


import java.util.List;
import org.springframework.stereotype.Service;

import com.delProject.CustApp.model.CustApp;

@Service("custAppService")

public interface CustAppService {
   public List<CustApp> findAll();
    
   public void save(CustApp custApp);
   
   public void delete(CustApp custApp); 
   public CustApp findById(Integer id);
}
