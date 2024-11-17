package sa.team6.termp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sa.team6.termp.crawler.ScoreCrawler;

@Service
public class ScoreCrawlingService {
    private final ScoreCrawler scoreCrawler;

    @Autowired
    public ScoreCrawlingService(ScoreCrawler scoreCrawler) {
        this.scoreCrawler = scoreCrawler;
    }

    public void performCrawling(String scheduleID) {
        scoreCrawler.scoreCrawl(scheduleID); // 크롤링 실행
    }
}
