package com.my.pro.service;

import com.my.pro.model.Goods;
import com.my.pro.utils.Pager;
import java.util.*;

import com.my.pro.model.*;
import com.my.pro.dao.*;
import com.my.pro.service.*;

/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date 2015年12月24日 下午1:46:33 - 2017年04月14日 21时44分16秒
 */
public interface GoodsService extends BaseService<Goods>{

	/**
	 * dao层分页查询
	 */
	Pager<Goods> findPager(Goods goods);

	List<Goods> list();
}
