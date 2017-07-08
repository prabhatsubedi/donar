package donar

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

}
