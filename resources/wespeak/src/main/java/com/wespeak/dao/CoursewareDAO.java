package com.wespeak.dao;

import java.util.List;

import javax.sql.DataSource;

import com.wespeak.mapper.CoursewareMapper;
import com.wespeak.mapper.PostMapper;
import com.wespeak.model.Courseware;
import com.wespeak.model.CoursewareModel;
import com.wespeak.model.Post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CoursewareDAO extends JdbcDaoSupport {

	@Autowired
	public CoursewareDAO(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	public CoursewareModel findCourseware(Integer coursewareId) {
		String sql = "Select *, v.FullName"//
				+ " from Courseware u, Users v where v.UserId=u.ContributorId and u.coursewareId="+coursewareId;

		Object[] params = new Object[] { };
		CoursewareMapper mapper = new CoursewareMapper();
		try {
			CoursewareModel classList = this.getJdbcTemplate().queryForObject(sql, params, mapper);
			return classList;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	public void addView(Integer numOfView, Integer coursewareId) {
		numOfView++;
		String sql = "UPDATE Courseware SET NumOfView = "+ numOfView//
				+ " where coursewareId="+coursewareId;

		try {
			this.getJdbcTemplate().update(sql);
		} catch (EmptyResultDataAccessException e) {
			return;
		}
	}

	public List<CoursewareModel> listCourseware() {
		String sql = "Select *, v.FullName"//
				+ " from Courseware u, Users v where v.UserId=u.ContributorId";

		Object[] params = new Object[] {};
		CoursewareMapper mapper = new CoursewareMapper();
		try {
			List<CoursewareModel> list = this.getJdbcTemplate().query(sql, params, mapper);
			return list;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	public List<CoursewareModel> findAllCoursewareByUsername(String username) {
		 String sql = "Select *, v.FullName"//
					+ " from Courseware u, Users v where v.UserId=u.ContributorId and v.Username=?";

		Object[] args = new Object[] { username };
		CoursewareMapper mapper = new CoursewareMapper();
		try {
			List<CoursewareModel> coursewareList = this.getJdbcTemplate().query(sql, args, mapper);
			return coursewareList;
		} catch (DataAccessException e) {
			System.out.println(e.toString());
			return null;
		}
	}
	
	public void deleteCoursewareById(Integer coursewareId) {
		String sql = "DELETE FROM courseware WHERE CoursewareId = ?";
		
		Object[] args = new Object[] { coursewareId };
		try {
			this.getJdbcTemplate().update(sql, args);
		} catch (RuntimeException runtimeException) {
			System.err.println("***NagiosHostDao::deleteObject, RuntimeException occurred, message follows.");
	        System.err.println(runtimeException);
	        throw runtimeException;
		}
	}
}