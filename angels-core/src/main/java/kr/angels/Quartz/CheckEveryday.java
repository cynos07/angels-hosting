package kr.angels.Quartz;

import org.quartz.CronTrigger;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.impl.StdSchedulerFactory;

import static org.quartz.CronScheduleBuilder.cronSchedule;
import static org.quartz.JobBuilder.newJob;
import static org.quartz.TriggerBuilder.newTrigger;

/**
 * Created by cynos07 on 2017-07-04.
 */
public enum CheckEveryday{
    INSTANCE;
    Scheduler scheduler;
    JobDetail job;
    CronTrigger trigger;

    public void start() {
        // Grab the Scheduler instance from the Factory
        try {
            scheduler = StdSchedulerFactory.getDefaultScheduler();
            // and start it off
            scheduler.start();
            JobDetail job = newJob(DeadlineCheck.class)
                    .withIdentity("job1", "deadline")
                    .build();

//         Trigger the job to run now, and then repeat every 40 seconds
        CronTrigger trigger = newTrigger()
                .withIdentity("trigger1", "group1")
                .withSchedule(cronSchedule("0 0 0 * * ?"))
                .build();

//            CronTrigger trigger = newTrigger()
//                    .withIdentity("trigger2", "deadline")
//                    .withSchedule(cronSchedule("0/3 * * * * ?"))
//                    .build();

            // Tell quartz to schedule the job using our trigger
            scheduler.scheduleJob(job, trigger);
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
    }

    public static CheckEveryday getInstance() {
        return INSTANCE;
    }
}

