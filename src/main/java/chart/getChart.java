package chart;

import java.io.IOException;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/*
 * 멜론 https://www.melon.com/chart/index.htm
 */
public class getChart {
	public static void main(String[] args) {
		String url= "https://www.melon.com/chart/index.htm";
		
		Document doc = null;
		
		try {
			doc = Jsoup.connect(url).get(); 
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Elements element = doc.select("tbody");
		
//		제목
		Iterator<Element> title = element.select(".rank01 a").iterator();
//		가수
		Iterator<Element> artist = element.select(".checkEllipsis a").iterator();
//		앨범명
		Iterator<Element> albumName = element.select(".rank03 a").iterator();
		
		
		int i = 1;
		while(title.hasNext()) {
			System.out.println(i++ + "위 " + title.next().text() + " / " + artist.next().text());
		}
			
		
	}
}

