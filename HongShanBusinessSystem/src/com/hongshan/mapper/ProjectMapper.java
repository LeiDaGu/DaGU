package com.hongshan.mapper;
/**
 * 
 * @author DaGu
 *
 */
import java.util.List;
import com.hongshan.pojo.Project;

public interface ProjectMapper {

	/**
	 * 添加项目
	 * @param project
	 */
	public void addProject( Project project );

	/**
	 * 修改项目
	 * @param project
	 */
	public void updateProject( Project project );

	/**
	 * 查询项目
	 * @return
	 */
	public List<Project> selectProject();

	/**
	 * 通过项目id查询project_id
	 * @param project_id
	 * @return
	 */
	public Project selectProjectByID( String project_id );
	
	/**
	 * 通过客户id查询项目customer_id
	 * @param customer_id
	 * @return
	 */
	public List<Project> selectProjectByCustomerId( String customer_id );
	
	/**
	 * 多添件查询
	 * @param project
	 * @return
	 */
	public List<Project> selectProjectByMultiCondition( Project project );
	
	/**
	 * 通过用户id查询项目user_id
	 * @param user_id
	 * @return
	 */
	public List<Project> selectProjectByUserID( String user_id );
	
	/**
	 * 
	 * @param project
	 * @return
	 */
	public Project selectProjectByName ( Project project );
	
}
