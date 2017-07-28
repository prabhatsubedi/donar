package donar.admin

import com.donar.User
import com.donar.UserAppointment
import donar.AppointmentService
import donar.CommonController
import grails.converters.JSON

/**
 * Created by prabhat on 7/13/17.
 */
class ScheduleController extends CommonController{
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]

    AppointmentService appointmentService

    def index(){
        List mobileLocationList = ["Mob1", "Mob2", "Mob3"]
        List<UserAppointment> userAppointmentList = UserAppointment.list()
        List appointData = appointmentService.makeAdminScheduleData(userAppointmentList);

        [location: locationList, mobileLocationList: mobileLocationList, appointData: appointData as JSON, hasOwnJs: "schedule"]
    }

    def byDayPlace(){
        println"Params........"+params
        Date date = Date.parse("MM/dd/yyyy", params.date)
        String appointmentDate = date.format("yyyy-MM-dd");
        println ("appointmentDate..."+appointmentDate)

        List<UserAppointment> userAppointmentList = UserAppointment.findAllByDateAndLocation(date, params.location)
        Map bloodTypeDataMap = ['PLT': [20, 5], 'WB': [40, 30], "DRBC": [5, 10]]
        String donated = bloodTypeDataMap.get(params.bloodType)[0]
        String remaining = bloodTypeDataMap.get(params.bloodType)[1]
        List appointData = appointmentService.makeAdminAppointmentData(date);
        println "App Data..."+appointData
        Map bloodTypeMap = ['PLT': "Platelet", 'WB': "White Blood", "DRBC": "DRBC"]

        [appointData: appointData as JSON, location: params.location, bloodType: bloodTypeMap.get(params.bloodType), donated: donated, remaining: remaining,
         appointmentDate: params.date, hasOwnJs: "byDayPlace", bloodTypeMap: bloodTypeMap]
    }

    def schedule(){
        UserAppointment ua = UserAppointment.get(params.int("id"))

        List<UserAppointment> scheduleData = appointmentService.getAppointmentListByDatePlaceTime(ua.date, ua.location, ua.startTime, ua.endTime);

        render(template: '/schedule/schedule', model: [scheduleData: scheduleData])
    }
}
