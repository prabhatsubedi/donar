package donar

import com.donar.Account
import com.donar.AccountSchedule
import com.donar.UserAppointment
import grails.transaction.Transactional

@Transactional
class AccountService {

    protected boolean save(Account account) {
        try{
            account.save(failOnError: true)

            return true
        }catch (Exception ex){
            ex.printStackTrace()
            return false
        }
    }

    protected boolean saveSchedule(AccountSchedule accountSchedule) {
        try{
            accountSchedule.save(failOnError: true)

            return true
        }catch (Exception ex){
            ex.printStackTrace()
            return false
        }
    }

    public List makeAppointmentData(List<AccountSchedule> accountScheduleList ){
        List appointData = []
        accountScheduleList.each{
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
}
