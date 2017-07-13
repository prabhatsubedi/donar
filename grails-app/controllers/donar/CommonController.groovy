package donar

import com.donar.User
import com.donar.UserAppointment
import grails.converters.JSON

/**
 * Created by prabhat on 7/3/17.
 */
class CommonController {
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
    }
