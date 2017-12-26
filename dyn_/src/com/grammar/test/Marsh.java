package com.grammar.test;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;

import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;

import com.grammar.bean.Grammar;

public class Marsh {

	public static void main(String[] args) throws FileNotFoundException, IOException, ParseException, JAXBException {
		//read json file
		org.json.simple.parser.JSONParser parser = new org.json.simple.parser.JSONParser();
		File file = new File("gram.json");
		System.out.println(file.getAbsolutePath());
		
		JSONObject jObj = (JSONObject) parser.parse(new FileReader("gram.json"));
		
		ObjectMapper mapper = new ObjectMapper();
		Grammar grammar = mapper.readValue(jObj.toJSONString(), Grammar.class);
		
		System.out.println(jObj.toString());
		
		File xmlFile = new File("Grammar.xml");
		JAXBContext jaxbContext = JAXBContext.newInstance(Grammar.class);
		Marshaller jaxbMarshaller = jaxbContext.createMarshaller();
		// output pretty printed
		jaxbMarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		jaxbMarshaller.setProperty(Marshaller.JAXB_ENCODING, "ISO-8859-1");
		//jaxbMarshaller.setProperty(Marshaller.JAXB_FRAGMENT, true);
		//jaxbMarshaller.setProperty("com.sun.xml.bind.xmlHeaders", "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>");

		jaxbMarshaller.marshal(grammar, xmlFile);
		jaxbMarshaller.marshal(grammar, System.out);
	}
}
