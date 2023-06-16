/**
 * 
 */
package rw.ac.rca.webapp.orm;

import java.io.Serializable;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import rw.ac.rca.webapp.util.UserRole;

/**
 * @author Ndungutse Charles
 * 
 */
@Entity
@Table(name = "user")
public class User implements Serializable {
	
	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
//	uniqueness of username and email
	@NotNull
	@Column(nullable = false, unique = true)
	private String username;
	@NotNull
	@Column(nullable = false)
	private String password;
	@NotNull
	@Column(nullable = false)
	private String fullName;
	@Column(nullable = false, unique = true)
	private String email;
	@Enumerated(EnumType.ORDINAL)
	private UserRole userRole;

	public User() {
	}

	/**
	 * @return the id
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getId() {
		return id;
	}

	/**userRole
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the username
	 */
	@Column(nullable = false, unique = true)
	public String getUsername() {
		return username;
	}

	/**
	 * @param username
	 *            the username to set
	 */

	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	@Column(nullable = false)
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the fullName
	 */
	public String getFullName() {
		return fullName;
	}

	/**
	 * @param fullName
	 *            the fullName to set
	 */
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	/**
	 * @return the email
	 */
	@Column(nullable = false, unique = true)
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the username and the full name of the user after overriding the toString method
	 */
	@Override
	public String toString() {
		return getUsername() +" "+ getFullName();
	}
	
	/**
	 * @return the userRole
	 */
	public UserRole getUserRole() {
		return userRole;
	}

	/**
	 * @param userRole
	 *            the userRole to set
	 */
	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}

}
