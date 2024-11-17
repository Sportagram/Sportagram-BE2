package sa.team6.termp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import sa.team6.termp.entity.Schedules;
import sa.team6.termp.service.SchedulesService;

import java.util.List;

@RestController
public class ScheduleController {
    @Autowired
    private SchedulesService scheduleService;

    @GetMapping("api/schedules/{userID}")
    public List<Schedules> getSchedulesForUser(@PathVariable String userID) {
        return scheduleService.getSchedulesForUser(userID);
    }
}
