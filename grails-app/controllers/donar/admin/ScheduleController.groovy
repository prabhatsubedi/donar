package donar.admin

import com.donar.User
import donar.CommonController
import grails.converters.JSON

/**
 * Created by prabhat on 7/13/17.
 */
class ScheduleController extends CommonController{
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]

    def index(){
        [location: locationList, appointData: [] as JSON, hasOwnJs: "schedule"]
    }
}
