package com.donar

import java.sql.Timestamp

/**
 * Created by prabhat on 7/8/17.
 */
class QueryTrack {
    Query query

    Timestamp dateCreated
    Timestamp lastUpdated

    static constraints = {
        query blank: false, unique: true
    }

    static mapping = {
        //query sqlType:"text"
    }

}
