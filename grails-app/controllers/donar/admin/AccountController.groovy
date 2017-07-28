package donar.admin

import com.donar.Account
import com.donar.AccountSchedule
import com.donar.Authority
import com.donar.User
import com.donar.UserAuthority
import com.donar.UserAuthorityEnum
import donar.AccountService
import donar.CommonController
import grails.converters.JSON

/**
 * Created by prabhat on 7/13/17.
 */
class AccountController extends CommonController{
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    AccountService accountService;

    def index(){
        List accountList = Account.list()
        Account account = Account.get(accountList.get(0).id)

        [location: locationList, accountList: accountList, account: account, hasOwnJs: "account"]
    }

    def accountDetail(){
        Account account = Account.get(params.int("id"))

        render(template: '/account/accountInfo', model: [account: account])
    }

    def save(){
        println "Params..............."+params
        Account account = new Account();
        bindData(account, params)

        boolean created = accountService.save(account);
        println("Created........"+created)

        redirect(action: 'index')
    }

    def schedule(){
        Account account = Account.get(params.int("id"))
        List mobileLocationList = ["Mob1", "Mob2", "Mob3"]
        mobileLocationList.addAll(locationList)

        List<AccountSchedule> accountScheduleList = AccountSchedule.findAllByAccount(account)
        List appointData = accountService.makeAppointmentData(accountScheduleList);

        [account: account, location: locationList, mobileLocationList: mobileLocationList, appointData: appointData as JSON, hasOwnJs: "account-schedule"]
    }

    def saveSchedule(){
        println "Params..............."+params
        Account account = Account.get(params.int("accountId"))

        Date date = Date.parse("MM/dd/yyyy", params.date)

        AccountSchedule accountSchedule = new AccountSchedule()
        accountSchedule.account = account
        accountSchedule.date = date
        accountSchedule.location = params.location
        accountSchedule.startTime = params.startTime
        accountSchedule.endTime = params.endTime

        boolean created = accountService.saveSchedule(accountSchedule);
        println("Created........"+created)

        redirect(action: 'index')
    }
}
