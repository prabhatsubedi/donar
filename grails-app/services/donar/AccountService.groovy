package donar

import com.donar.Account
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
}
