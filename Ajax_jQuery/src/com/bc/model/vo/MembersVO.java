package com.bc.model.vo;

public class MembersVO {
	private String idx;
	private String name;
	private String age;
	private String addr;
	private String regdate;
	
	public MembersVO() {}

	public MembersVO(String idx, String name, String age, String addr, String regdate) {
		super();
		this.idx = idx;
		this.name = name;
		this.age = age;
		this.addr = addr;
		this.regdate = regdate;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "MembersVO [idx=" + idx + ", name=" + name + ", age=" + age + ", addr=" + addr + ", regdate=" + regdate
				+ "]";
	}
	
	
}
