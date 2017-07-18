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
        [location: locationList, mobileLocationList: mobileLocationList, appointData: [] as JSON, hasOwnJs: "schedule"]
    }

    def byDayPlace(){
        println"Params........"+params
        Date date = Date.parse("MM/dd/yyyy", params.date)
        String appointmentDate = date.format("yyyy-MM-dd");
        println ("appointmentDate..."+appointmentDate)

        List appointData = appointmentService.getAppointmentListByDateAndPlace(date, params.location);

        [appointData: appointData as JSON, location: params.location, appointmentDate: appointmentDate, hasOwnJs: "byDayPlace"]
    }

    def schedule(){
        UserAppointment ua = UserAppointment.get(params.int("id"))

        List<UserAppointment> scheduleData = appointmentService.getAppointmentListByDatePlaceTime(ua.date, ua.location, ua.startTime, ua.endTime);

        render(template: '/schedule/schedule', model: [scheduleData: scheduleData])
    }
}
