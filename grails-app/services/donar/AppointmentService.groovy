package donar

import com.donar.CallFeedback
import com.donar.User
import com.donar.UserAppointment
import grails.transaction.Transactional

@Transactional
class AppointmentService {

    protected boolean createUserAppoinment(UserAppointment userAppointment) {
        try{
            userAppointment.save(failOnError: true)

            return true
        }catch (Exception ex){
            ex.printStackTrace()
            return false
        }

    }

    protected List<UserAppointment> userAppointmentList(User user){
        return UserAppointment.findAllByUser(user);
    }

    public List createAppointmentList(User user){
        List<UserAppointment> userAppointmentList = userAppointmentList(user);

        List appointData = makeAppointmentData(userAppointmentList);

        return appointData;
    }
    
    public List getAppointmentListByDateAndPlace(Date date, String location){
        //List<UserAppointment> userAppointmentList = UserAppointment.findAllByDateAndLocation(date, location)
        List list = []
        def userAppointmentList = UserAppointment.createCriteria().list() {
            and{
                eq ("location", location)
                eq("date", date)
            }

            projections {
                distinct("startTime")
            }
        }
        userAppointmentList.each {
            println ("User Appointment List..."+it)

            list.add(UserAppointment.findByDateAndLocationAndStartTime(date, location, it))
        }
        println ("User Appointment List..."+list)
        List appointData = makeAppointmentData(list);

        return appointData;
    }

    public List<UserAppointment> getAppointmentListByDatePlaceTime(Date date, String location, String startTime, String endTime){
        List<UserAppointment> appointmentList = UserAppointment.findAllByDateAndLocationAndStartTimeAndEndTime(date, location, startTime, endTime)

        return appointmentList;
    }
    
    public List makeAppointmentData(List<UserAppointment> userAppointmentList ){
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

    public boolean saveCallFeedback(CallFeedback callFeedback){
        try{
            callFeedback.save(failOnError: true)

            return true
        }catch (Exception ex){
            ex.printStackTrace()
            return false
        }
    }

}
