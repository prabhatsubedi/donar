package donar.admin

import com.donar.Account
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

        [location: locationList, accountList: accountList, hasOwnJs: "account"]
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
}
