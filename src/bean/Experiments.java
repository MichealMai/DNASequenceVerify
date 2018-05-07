package bean;

import annotation.Table;
import annotation.column;

@Table(tableName="DS_Experiments")
public class Experiments {
	
	//Define data column
	@column(type="VARCHAR(100)",field="expid",primaryKey=true,defaultNull=false)
	private String expid;       //Experiment primary key
	@column(type="VARCHAR(100)",field="algid")
	private String algid;       //Algorithm id
	@column(type="VARCHAR(100)",field="userid")
	private String userid;       //user id
	@column(type="VARCHAR(100)",field="fileid")
	private String fileid;       //file id
	@column(type="VARCHAR(50)",field="expname")
	private String expname;      //experiment name
	
	//set up data
	public void setExpid(String eid) 
	{
		this.expid=eid;
	}
	public void setAlgid(String aid) 
	{
		this.algid=aid;
	}
	
	public void setUserid(String uid) 
	{
		this.userid=uid;
	}
	
	public void setFileid(String fid) 
	{
		this.fileid=fid;
	}
	
	public void setExpname(String name) 
	{
		this.expname=name;
	}
	
	//get the data
	public String getExpid() 
	{
		return this.expid;
	}
	public String getUserid() 
	{
		return this.userid;
	}
	public String getAlgid() 
	{
		return this.algid;
	}
	public String getFileid() 
	{
		return this.fileid;
	}
	public String getExpname()
	{
		return this.expname;
	}
	

}
