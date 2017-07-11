package donar

import com.donar.User
import com.donar.UserAppointment
import grails.converters.JSON

/**
 * Created by prabhat on 7/3/17.
 */
class AppointmentController {
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]
    List donationList = [['id': 0, 'startTime': "08:30 AM", 'endTime': "09:30 AM",'st': "08:30", 'et': "09:30", "location": "Mountain View"],
                         ['id': 1, 'startTime': "12:30 PM", 'endTime': "01:30 PM",'st': "12:30", 'et': "13:30", "location": "Mountain View"],
                         ['id': 2, 'startTime': "03:00 PM", 'endTime': "04:00 PM",'st': "15:00", 'et': "16:00", "location": "Mountain View"],
                         ['id': 3, 'startTime': "08:30 AM", 'endTime': "09:30 AM",'st': "08:30", 'et': "09:30", "location": "Menlo Park"],
                         ['id': 4, 'startTime': "12:30 PM", 'endTime': "01:30 PM",'st': "12:30", 'et': "01:30", "location": "Menlo Park"],
                         ['id': 5, 'startTime': "03:00 PM", 'endTime': "04:00 PM",'st': "15:00", 'et': "16:00", "location": "Menlo Park"]]
    List locationList = ["Mountain View", "Menlo Park", "Palo Alto", "Google Mobile"]
    List timeSlot = [['id': 0, 'startTime': "08:30 AM", 'endTime': "09:30 AM",'st': "08:30", 'et': "09:30", "location": "Mountain View"],
                     ['id': 1, 'startTime': "12:30 PM", 'endTime': "01:30 PM",'st': "12:30", 'et': "13:30", "location": "Mountain View"],
                     ['id': 2, 'startTime': "03:00 PM", 'endTime': "04:00 PM",'st': "15:00", 'et': "16:00", "location": "Mountain View"]]
    List donationType = ['Platelets', 'Plasma', 'Whole Blood', 'Double Red Cell']

    UserService userService
    AppointmentService appointmentService

    def index(){
        User user = userService.getUser(session.user.id);

        List appointData = createAppointmentList(user);

        println("Appoint Data..df....."+appointData)
        [user: user, location: locationList, appointData: appointData as JSON, hasOwnJs: "appointment"]
    }

    def optimalDonation(){
        User user = userService.getUser(session.user.id);

        List appointData = createAppointmentList(user);

        List donationType = ['Platelets', 'Plasma', 'Whole Blood', 'Double Red Blood Cell']
        [user: user, location: locationList, donationType: donationType, donationList: timeSlot,
         appointData: appointData as JSON, hasOwnJs: "optimalDonation"]
    }

    private List createAppointmentList(User user){
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

            Map appointMap = ['id': it.id, 'title': it.location, 'start': [year, month -1, day, startHour, startMinute], "end": [year, month -1, day, endHour, endMinute]]

            appointData.add(appointMap)
        }

        return appointData;
    }

    def donationList(){
        String selectedLocation = params.location
        String appointmentDate = params.appointmentDate
        User user = userService.getUser(session.user.id);

        List filteredDonationList = donationList.findAll {it.location == params.location}

        [user: user, location: locationList, selectedLocation: selectedLocation, appointmentDate: appointmentDate,
         data: filteredDonationList, donationType: donationType]
    }

    def create(){
        int index = params.int("donationIndex")
        Map appointment = donationList.get(index)
        println "Appointment Detail...."+appointment

        User user = userService.getUser(session.user.id);

        UserAppointment userAppointment = new UserAppointment();
        userAppointment.setUser(user)
        userAppointment.setStartTime(appointment.st)
        userAppointment.setEndTime(appointment.et)
        userAppointment.setLocation(params.location)
        userAppointment.setDonationType(params.donationType)

        Date date = Date.parse("MM-d-yyyy", params.appointmentDate)
        userAppointment.setDate(date)

        appointmentService.createUserAppoinment(userAppointment)

        redirect(action: 'optimalDonation')
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

    def appointmentDetail(){
        UserAppointment userAppointment = UserAppointment.get(params.int("id"))

        render(template: '/appointment/appointmentInfo', model: [userAppointment: userAppointment])
    }
}
