package sa.team6.termp.controller;

import org.springframework.scheduling.annotation.Scheduled;
import sa.team6.termp.service.ScheduleCrawlingService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CrawlingController {
    private final ScheduleCrawlingService scheduleCrawlingService;

    public CrawlingController(ScheduleCrawlingService scheduleCrawlingService) {
        this.scheduleCrawlingService = scheduleCrawlingService;
    }

    @GetMapping("api/scheduleCrawl")
    public String scheduleCrawl() {
        scheduleCrawlingService.performCrawling();
        return "Crawling performed. Check console for output.";
    }
}