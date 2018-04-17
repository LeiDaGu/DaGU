package com.hongshan.mapper;
/**
 * 
 * @author DaGu
 *
 */
import java.util.List;
import com.hongshan.pojo.Customer;

public interface CustomerMapper {

	/**
	 * 
	 * @param customer
	 */
	public void addCustomer( Customer customer );

	/**
	 * 
	 * @param customer
	 */
	public void updateCustomer( Customer customer );

	/**
	 * 
	 * @return
	 */
	public List<Customer> selectCustomers();

	/**
	 * 
	 * @param customer_id
	 * @return
	 */
	public Customer selectCustomerByID( String customer_id );
	
	/**
	 * 
	 * @param user_id
	 * @return
	 */
	public List<Customer> selectCustomerByUserId(String user_id);
	
	/**
	 * 
	 * @param customer
	 * @return
	 */
	public List<Customer> selectCustomersByMultiCondition( Customer customer );
	
	/**
	 * 
	 * @param customer
	 * @return
	 */
	public Customer selectCustomerByName(Customer customer);

}
