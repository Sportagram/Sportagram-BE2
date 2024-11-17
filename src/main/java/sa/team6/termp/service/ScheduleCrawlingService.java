package sa.team6.termp.service;

import org.springframework.beans.factory.annotation.Autowired;
import sa.team6.termp.crawler.ScheduleCrawler;
import org.springframework.stereotype.Service;

@Service
public class ScheduleCrawlingService {
    private final ScheduleCrawler scheduleCrawler;

    @Autowired
    public ScheduleCrawlingService(ScheduleCrawler scheduleCrawler) {
        this.scheduleCrawler = scheduleCrawler;
    }

    public void performCrawling() {
        scheduleCrawler.scheduleCrawl(); // 크롤링 실행
    }
}