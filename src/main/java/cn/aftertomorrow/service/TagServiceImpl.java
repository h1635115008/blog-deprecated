package cn.aftertomorrow.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.aftertomorrow.dao.TagDao;
import cn.aftertomorrow.po.Tag;

@Service
@Transactional
public class TagServiceImpl implements TagService {
	@Autowired
	private TagDao tagDao;

	@Override
	public List<Tag> listAll() {
		// TODO Auto-generated method stub
		return tagDao.listAll();
	}

}
