package cn.aftertomorrow.po;

import java.util.Date;

public class Article {
	private Integer id;
	private String title;
	private String detail;
	private String text;
	private String tag;
	private Integer view;
	private Date time;
	private String name;
	private String unicode;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public Integer getView() {
		return view;
	}

	public void setView(Integer view) {
		this.view = view;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUnicode() {
		return unicode;
	}

	public void setUnicode(String unicode) {
		this.unicode = unicode;
	}

	@Override
	public String toString() {
		return "Article [id=" + id + ", title=" + title + ", detail=" + detail + ", text=" + text + ", tag=" + tag
				+ ", view=" + view + ", time=" + time + ", name=" + name + ", unicode=" + unicode + "]";
	}

}
