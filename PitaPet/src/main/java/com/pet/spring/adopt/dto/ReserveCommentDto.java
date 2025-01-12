package com.pet.spring.adopt.dto;

public class ReserveCommentDto {

	private int num;
	private String writer;
	private String content;
	private String target_id;
	private int ref_group;
	private int comment_group;
	private String deleted;
	private String regdate;
	private int startRowNum;
	private int endRowNum;
	private int cnt;
	
	public ReserveCommentDto() {}

	public ReserveCommentDto(int num, String writer, String content, String target_id, int ref_group, int comment_group,
			String deleted, String regdate, int startRowNum, int endRowNum, int cnt) {
		super();
		this.num = num;
		this.writer = writer;
		this.content = content;
		this.target_id = target_id;
		this.ref_group = ref_group;
		this.comment_group = comment_group;
		this.deleted = deleted;
		this.regdate = regdate;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.cnt = cnt;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTarget_id() {
		return target_id;
	}

	public void setTarget_id(String target_id) {
		this.target_id = target_id;
	}

	public int getRef_group() {
		return ref_group;
	}

	public void setRef_group(int ref_group) {
		this.ref_group = ref_group;
	}

	public int getComment_group() {
		return comment_group;
	}

	public void setComment_group(int comment_group) {
		this.comment_group = comment_group;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}
