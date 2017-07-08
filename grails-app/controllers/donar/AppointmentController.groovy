package donar

import com.donar.User
import com.donar.UserAppointment
import grails.converters.JSON

/**
 * Created by prabhat on 7/3/17.
 */
class AppointmentController {
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]
    List donationList = [['id': 0, 'startTime': "08:30 AM", 'endTime': "11:30 AM",'st': "08:30", 'et': "11:30", "location": "Mountain View"],
                         ['id': 1, 'startTime': "12:30 PM", 'endTime': "02:30 PM",'st': "12:30", 'et': "14:30", "location": "Mountain View"],
                         ['id': 2, 'startTime': "03:30 PM", 'endTime': "06:00 PM",'st': "15:30", 'et': "18:00", "location": "Mountain View"],
                         ['id': 3, 'startTime': "08:30 AM", 'endTime': "11:30 AM",'st': "08:30", 'et': "11:30", "location": "Menlo Park"],
                         ['id': 4, 'startTime': "12:30 PM", 'endTime': "02:30 PM",'st': "12:30", 'et': "14:30", "location": "Menlo Park"],
                         ['id': 5, 'startTime': "03:30 PM", 'endTime': "06:00 PM",'st': "15:30", 'et': "18:00", "location": "Menlo Park"]]
    List locationList = ["Mountain View", "Menlo Park", "Palo Alto", "Google Mobile"]
    List donationType = ['Platelets', 'Plasma', 'Whole Blood', 'Double Red Cell']

    UserService userService
    AppointmentService appointmentService

    def index(){
        User user = userService.getUser(session.user.id);

        /*{
            title: 'Lunch',
            start: new Date(y, m, d, 12, 0),
            end: new Date(y, m, d, 14, 0)
        }*/

        List<UserAppointment> userAppointmentList = appointmentService.userAppointmentList(user);

        List appointData = []
        userAppointmentList.each{
            Calendar cal = Calendar.getInstance();
            cal.setTime(it.date)

            int year = cal.get(Calendar.YEAR);
            int month = cal.get(Calendar.MONTH) + 1; // Note: zero based!
            int day = cal.get(Calendar.DAY_OF_MONTH);

            String startTime = it.startTime
            String endTime = it.endTime

            int startHour = Integer.parseInt(startTime.split(":")[0])
            int startMinute = Integer.parseInt(startTime.split(":")[1])

            int endHour = Integer.parseInt(endTime.split(":")[0])
            int endMinute = Integer.parseInt(endTime.split(":")[1])

            Map appointMap = ['title': it.location, 'start': [year, month -1, day, startHour, startMinute], "end": [year, month -1, day, endHour, endMinute]]

            appointData.add(appointMap)
        }

        /*Map appointMap = ['title': "Mountain View", 'start': [2017, 6, 9, 12, 30], "end": [2017, 6, 9, 15, 30]]
        List appointData = [(appointMap as JSON)]*/
        println("Appoint Data..df....."+appointData)
        [user: user, location: locationList, appointData: appointData as JSON]
    }

    def donationList(){
        String selectedLocation = params.location
        String appointmentDate = params.appointmentDate
        User user = userService.getUser(session.user.id);

        List filteredDonationList = donationList.findAll {it.location == params.location}

        [user: user, location: locationList, selectedLocation: selectedLocation, appointmentDate: appointmentDate,
         data: filteredDonationList, donationType: donationType]
    }

    def saveAppointment(){
        int index = params.int("index")
        Map appointment = donationList.get(index)
        println "Appointment Detail...."+appointment

        User user = userService.getUser(session.user.id);

        UserAppointment userAppointment = new UserAppointment();
        userAppointment.setUser(user)
        userAppointment.setStartTime(appointment.st)
        userAppointment.setEndTime(appointment.et)
        userAppointment.setLocation(appointment.location)
        userAppointment.setDonationType(params.donationType)

        Date date = Date.parse("MM/dd/yyyy", params.appointmentDate)
        userAppointment.setDate(date)

        appointmentService.createUserAppoinment(userAppointment)

        redirect(action: 'index')
    }

}
