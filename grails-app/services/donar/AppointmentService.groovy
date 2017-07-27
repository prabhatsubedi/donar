package donar

import com.donar.Appointment
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

    protected boolean createAppoinment(Appointment appointment) {
        try{
            appointment.save(failOnError: true)

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

            Map appointMap = ['id': it.id,'donor': it.user.fullName, 'title': it.location, 'start': [year, month -1, day, startHour, startMinute], "end": [year, month -1, day, endHour, endMinute]]

            appointData.add(appointMap)
        }

        return appointData;
    }

    public List makeAdminScheduleData(List<UserAppointment> userAppointmentList ){
        userAppointmentList = UserAppointment.createCriteria().list() {
            projections {
                distinct("date")
            }
        }
        userAppointmentList = userAppointmentList.sort()
        List<UserAppointment> list = []
        userAppointmentList.each{
            list.add(UserAppointment.findByDate(it))
        }
        List appointData = []
        //Map appointMap = ['plt': [20, 5], 'wb': [40, 30], "drbc": [5, 10]]

        int c = 1
        Map bloodTypeMap = ['PLT': [20, 5], 'WB': [40, 30], "DRBC": [5, 10]]
        list.each{

            println "Date..."+it.date
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

            //Map appointMap = ['id': it.id, 'plt': [20, 5], 'wb': [40, 30], "drbc": [5, 10]]
            Map appointMap

            bloodTypeMap.each{row->
                List v = [row.value[0] - c, row.value[1] + c]
                appointMap = ['id': it.id,'type': row.key, "value": row.value, 'title': it.location, 'start': [year, month -1, day, startHour, startMinute], "end": [year, month -1, day, endHour, endMinute]]
                if(c != 1){
                    appointMap = ['id': it.id,'type': row.key, "value": v, 'title': it.location, 'start': [year, month -1, day, startHour, startMinute], "end": [year, month -1, day, endHour, endMinute]]
                }

                appointData.add(appointMap)
            }
            c++

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
