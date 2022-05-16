package chart;

import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
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
		Document doc2 = null;
		Document doc3 = null;
		
		try {
			doc = Jsoup.connect(url).get(); 
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Elements element = doc.select("tbody");
		
		
//		제목 =  title.next().text()
		Iterator<Element> title = element.select(".rank01 a").iterator();
//		랭킹 =  ranking.next().text()
		Iterator<Element> ranking = element.select("span.rank ").iterator();
//		앨범명 = albumName.next().text())
		Iterator<Element> albumName = element.select(".rank03 a").iterator();
//		song-no = albumImg.next().attr("src")
		Iterator<Element> albumImg = element.select("div.wrap img").iterator();
//		song-no = songNo.next().attr("data-song-no")
		Iterator<Element> songNo = element.select("tr").iterator();
//		song-no = menuId.next().attr("data-song-menuid");
		Iterator<Element> menuId = element.select("div.wrap button").iterator();
		String menuIdEnds = menuId.next().attr("data-song-menuid");
		
		
		for (int i = 0; i < 100; i++) {
//			System.out.println(i++ + "위 " + title.next().text() + " / " + artist.next().text() + " / " + songNo.next().attr("data-song-no") + " / " + albumImg.next().attr("src"));
			
			ChartBean bean = new ChartBean();
			ChartMgr mgr = new ChartMgr();
			bean.setRanking(ranking.next().text());
			bean.setTitle(title.next().text());
			bean.setAlbumName(albumName.next().text());
			bean.setAlbumImg(albumImg.next().attr("src"));
			bean.setSongId(songNo.next().attr("data-song-no"));
			bean.setMenuId(menuIdEnds);
			if(mgr.insertChart(bean)) {
//				가사 가져오는 크롤링
				String url2 = "https://m2.melon.com/song/lyrics.htm?songId=";
				
				url2 = url2 + bean.getSongId();
				
				try {
					doc2 = Jsoup.connect(url2).get(); 
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				Elements element2 = doc2.select("div#wrap");
				
//				가수 = artist.next().text())
				Iterator<Element> artist = element2.select("div.info div.artist").iterator();
//				가사 =  lyric.next().text()
				Iterator<Element> lyric = element2.select("div#lyricArea div").iterator();
				bean.setArtist(artist.next().text());
				bean.setLyric(lyric.next().text());
//				System.out.println(bean.getArtist());
//				System.out.println(bean.getLyric());
				if(mgr.insertLyric(bean.getLyric(), bean.getArtist(), bean.getTitle())) {			
//					뮤비 가져오는 크롤링
					String url3 = "https://www.melon.com/video/detail2.htm?songId=";
					url3 = url3 + bean.getSongId() + "&menuId=" + bean.getMenuId();
					
					try {
						doc3 = Jsoup.connect(url3).get(); 
					} catch (IOException e) {
						e.getStackTrace();
					}
					
					Elements element3 = doc3.select("div#wrap");
					
//					비디오 =  videoPlyer.next().attr("src")
					Iterator<Element> videoPlyer = element3.select("div.d_video_list button").iterator();
//					비디오 =  videoPlyerInfo.next().text()
					Iterator<Element> videoPlyerInfo = element3.select("div#d_video_summary_heightcheck").iterator();
					try {
						bean.setVideo(videoPlyer.next().attr("data-video-no"));
						bean.setVideoInfo(videoPlyerInfo.next().text());
					}catch(Exception e){
						bean.setVideo("뮤비 정보가 없습니다.");
						bean.setVideoInfo("뮤비 정보가 없습니다.");
					}
					mgr.insertVideo(bean.getVideo(), bean.getVideoInfo(), bean.getTitle());
					
				}
			}
		}
		System.out.println("end!!");
	}
}

