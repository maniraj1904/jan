package com.grammar.bean;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Grammar {
	@XmlAttribute
	private String version;
	@XmlAttribute
	private String xmlLang;
	@XmlAttribute
	private String xmlns;
	@XmlAttribute
	private String tagFormat;
	@XmlAttribute
	private String root;
	@XmlElement
	private List<Meta> meta;
	@XmlElement
	private List<Rule> rule;
	
	
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getXmlLang() {
		return xmlLang;
	}
	public void setXmlLang(String xmlLang) {
		this.xmlLang = xmlLang;
	}
	public String getXmlns() {
		return xmlns;
	}
	public void setXmlns(String xmlns) {
		this.xmlns = xmlns;
	}
	public String getTagFormat() {
		return tagFormat;
	}
	public void setTagFormat(String tagFormat) {
		this.tagFormat = tagFormat;
	}
	public String getRoot() {
		return root;
	}
	public void setRoot(String root) {
		this.root = root;
	}
	public List<Meta> getMeta() {
		return meta;
	}
	public void setMeta(List<Meta> meta) {
		this.meta = meta;
	}
	public List<Rule> getRule() {
		return rule;
	}
	public void setRule(List<Rule> rule) {
		this.rule = rule;
	}
	
}
