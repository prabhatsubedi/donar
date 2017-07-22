package com.donar

import java.sql.Timestamp

/**
 * Created by prabhat on 7/8/17.
 */
class Appointment {
    User user
    AccountSchedule accountSchedule
    String donationType

    Timestamp dateCreated
    Timestamp lastUpdated
}
