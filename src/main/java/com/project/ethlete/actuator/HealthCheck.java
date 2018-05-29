package com.project.ethlete.actuator;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.boot.actuate.health.Health;
import org.springframework.boot.actuate.health.HealthIndicator;
import org.springframework.stereotype.Component;

/**
 * Created by NUWJIANG on 5/22/2018.
 */
@Component
public class HealthCheck implements HealthIndicator {

    private Log log = LogFactory.getLog(HealthCheck.class);

    @Override
    public Health health() {

        int errorCode = check();

        if (errorCode != 0) {
            return Health.down()
                    .withDetail("Error Code", errorCode).build();
        }

        return Health.up().build();
    }

    private int check() {
        // check
        log.info("Perform health checking...");
        return 0;
    }
}
