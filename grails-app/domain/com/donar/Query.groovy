package com.donar

import java.sql.Timestamp

/**
 * Created by prabhat on 7/8/17.
 */
class Query {
    String name
    String query
    Integer count = 0;
    String frequency;
    Date startDate;
    Date endDate;
    Boolean isActive = Boolean.TRUE;

    Timestamp dateCreated
    Timestamp lastUpdated

    static mapping = {
        query sqlType:"text"
    }

    static constraints = {
        startDate blank: true, nullable: true
        endDate blank: true, nullable: true
    }

}
