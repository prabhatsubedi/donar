package donar.admin

import donar.CommonController
import grails.converters.JSON

/**
 * Created by prabhat on 7/13/17.
 */
class AdminAppointmentController extends CommonController{
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]

    def index(){
        [location: locationList, appointData: [] as JSON, hasOwnJs: "schedule"]
    }
}
