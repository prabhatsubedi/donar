package com.donar

import java.sql.Timestamp

/**
 * Created by prabhat on 7/8/17.
 */
class Query {
    String name
    String query
    Integer count = 0;

    Timestamp dateCreated
    Timestamp lastUpdated

    static mapping = {
        query sqlType:"text"
    }

}
