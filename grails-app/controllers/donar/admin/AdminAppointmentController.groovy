package donar.admin

import com.donar.AccountSchedule
import com.donar.Appointment
import com.donar.CallFeedback
import com.donar.Query
import com.donar.User
import com.donar.UserAppointment
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
        if(params.int("queryId")){
            currentQuery = Query.get(params.int("queryId"))
        }else{
            if(queryList.size() > 0) {
                currentQuery = queryList.get(0)
            }
        }
        Integer queryIndex = 0

        Map jsonMap = JSON.parse(currentQuery.getQuery())

        List<User> donarList = generateListService.searchDonorWithCriteria(jsonMap)

        if(donarList.size() > 0){
            currentUser = donarList.get(queryIndex);
        }

        [queryList: queryList, currentUser: currentUser, currentQuery: currentQuery, queryIndex: queryIndex, locationList: locationList, donationType: donationType, hasOwnJs: "schedule"]
    }

    def saveCallFeedback(){
        User user = User.get(params.long("userId"));
        Query currentQuery = Query.get(params.long("queryId"));
        Integer queryIndex = params.int("queryIndex");

        CallFeedback callFeedback = new CallFeedback(user: user, query: currentQuery);

        appointmentService.saveCallFeedback(callFeedback)

        List<Query> queryList = Query.list();
        User currentUser = null;

        queryIndex = queryIndex + 1;

        Map jsonMap = JSON.parse(currentQuery.getQuery())

        List<User> donarList = generateListService.searchDonorWithCriteria(jsonMap)

        if(donarList.size() > queryIndex){
            currentUser = donarList.get(queryIndex);
        }
        //render(template: '/adminAppointment/donorInformation', model: [currentUser: currentUser])
        render(view:'/adminAppointment/index', model: [queryList: queryList, currentUser: currentUser, currentQuery: currentQuery, queryIndex: queryIndex, locationList: locationList, hasOwnJs: "schedule"])
    }

    def saveAppointment(){
        println "Params......"+params
        Date date = Date.parse("MM/dd/yyyy", params.appointmentDate)

        //Map appointment = donationList.get(index)
        //println "Appointment Detail...."+appointment

        User user = User.get(params.int("donarId"));

        UserAppointment userAppointment = new UserAppointment();
        userAppointment.setUser(user)
        userAppointment.setStartTime(params.startTime)
        userAppointment.setEndTime(params.endTime)
        userAppointment.setLocation(params.location)
        userAppointment.setDonationType(params.donationType)
        userAppointment.setDate(date)

        appointmentService.createUserAppoinment(userAppointment)

        /*Appointment appointment = new Appointment();
        appointment.user = user;
        appointment.accountSchedule = accountSchedule;
        appointment.donationType = params.donationType;

        appointmentService.createAppoinment(appointment)*/

        Query currentQuery = Query.get(params.long("query-id"));
        Integer queryIndex = params.int("query-index");

        CallFeedback callFeedback = new CallFeedback(user: user, query: currentQuery);

        appointmentService.saveCallFeedback(callFeedback)

        List<Query> queryList = Query.list();
        User currentUser = null;

        queryIndex = queryIndex + 1;

        Map jsonMap = JSON.parse(currentQuery.getQuery())

        List<User> donarList = generateListService.searchDonorWithCriteria(jsonMap)

        if(donarList.size() > queryIndex){
            currentUser = donarList.get(queryIndex);
        }
        render(view:'/adminAppointment/index', model: [queryList: queryList, currentUser: currentUser, currentQuery: currentQuery, queryIndex: queryIndex, locationList: locationList, hasOwnJs: "schedule"])

    }
}
