package sa.team6.termp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import sa.team6.termp.dto.DiaryRequest;
import sa.team6.termp.entity.Diary;
import sa.team6.termp.entity.Schedules;
import sa.team6.termp.repository.DiaryRepository;
import sa.team6.termp.service.DiaryService;

import java.util.List;

@RestController
@RequestMapping("api/diary")
public class DiaryController {
    @Autowired
    private DiaryService diaryService;

    @PostMapping("/create")
    public Diary createDiary(@RequestBody DiaryRequest diaryRequest) {
        return diaryService.createDiary(diaryRequest);
    }

    @GetMapping("/{userID}")
    public List<Diary> getDiariesForUser(@PathVariable String userID) {
        return diaryService.getDiariesForUser(userID);
    }

    @GetMapping("/{userID}/{scheduleID}")
    public List<Diary> getDiariesForUserAndScheID(@PathVariable String userID, @PathVariable String scheduleID) {
        return diaryService.getDiariesForUserAndScheID(userID, scheduleID);
    }
}
