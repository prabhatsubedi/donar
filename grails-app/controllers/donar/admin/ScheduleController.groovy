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
        List mobileLocationList = ["Mob1", "Mob2", "Mob3"]
        [location: locationList, mobileLocationList: mobileLocationList, appointData: [] as JSON, hasOwnJs: "schedule"]
    }
}
