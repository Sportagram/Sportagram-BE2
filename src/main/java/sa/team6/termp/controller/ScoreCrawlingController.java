package sa.team6.termp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import sa.team6.termp.service.ScoreCrawlingService;

@RestController
public class ScoreCrawlingController {
    private final ScoreCrawlingService scoreCrawlingService;

    public ScoreCrawlingController(ScoreCrawlingService scoreCrawlingService) {
        this.scoreCrawlingService = scoreCrawlingService;
    }

    @GetMapping("api/scoreCrawl")
    public String scoreCrawl(@RequestParam String scheduleID) {
        scoreCrawlingService.performCrawling(scheduleID);
        return "Crawling performed. Check console for output.";
    }
}
