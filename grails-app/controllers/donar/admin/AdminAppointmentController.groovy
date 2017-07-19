package donar.admin

import com.donar.CallFeedback
import com.donar.Query
import com.donar.User
import donar.AppointmentService
import donar.CommonController
import donar.GenerateListService
import grails.converters.JSON

/**
 * Created by prabhat on 7/13/17.
 */
class AdminAppointmentController extends CommonController{
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]

    GenerateListService generateListService
    AppointmentService appointmentService

    def index(){
        List<Query> queryList = Query.list();
        User currentUser = null;
        Query currentQuery = null;
        Integer queryIndex = 0

        if(queryList.size() > 0){
            currentQuery = queryList.get(0)
            Map jsonMap = JSON.parse(currentQuery.getQuery())

            List<User> donarList = generateListService.searchDonorWithCriteria(jsonMap)

            if(donarList.size() > 0){
                currentUser = donarList.get(queryIndex);
            }
        }

        [queryList: queryList, currentUser: currentUser, currentQuery: currentQuery, queryIndex: queryIndex, locationList: locationList, hasOwnJs: "schedule"]
    }

    def saveCallFeedback(){
        User user = User.get(params.long("userId"));
        Query query = Query.get(params.long("queryId"));
        Integer queryIndex = params.int("queryIndex");

        CallFeedback callFeedback = new CallFeedback(user: user, query: query);

        appointmentService.saveCallFeedback(callFeedback)

        List<Query> queryList = Query.list();
        User currentUser = null;
        Query currentQuery = null;

        queryIndex = queryIndex + 1;

        if(queryList.size() > 0){
            currentQuery = queryList.get(0)
            Map jsonMap = JSON.parse(queryList.get(0).getQuery())

            List<User> donarList = generateListService.searchDonorWithCriteria(jsonMap)

            if(donarList.size() > 0){
                currentUser = donarList.get(queryIndex);
            }
        }
        //render(template: '/adminAppointment/donorInformation', model: [currentUser: currentUser])
        render(view:'/adminAppointment/index', model: [queryList: queryList, currentUser: currentUser, currentQuery: currentQuery, queryIndex: queryIndex, locationList: locationList, hasOwnJs: "schedule"])
    }
}
