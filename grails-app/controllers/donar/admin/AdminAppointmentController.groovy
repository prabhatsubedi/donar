package donar.admin

import com.donar.Query
import donar.CommonController
import grails.converters.JSON

/**
 * Created by prabhat on 7/13/17.
 */
class AdminAppointmentController extends CommonController{
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]

    def index(){
        List<Query> queryList = Query.list();
        [queryList: queryList, locationList: locationList, hasOwnJs: "schedule"]
    }
}
