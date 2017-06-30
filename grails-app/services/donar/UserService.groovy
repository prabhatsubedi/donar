package donar

import com.donar.Authority
import com.donar.User
import com.donar.UserAuthority
import com.donar.UserAuthorityEnum
import grails.transaction.Transactional

@Transactional
class UserService {

    protected boolean createDonar(User user) {
        try{
            user.save(failOnError: true)

            def roleUser = Authority.findByAuthority(UserAuthorityEnum.ROLE_USER.toString())
            def roleDonar = Authority.findByAuthority(UserAuthorityEnum.ROLE_DONAR.toString())

            UserAuthority.create(user, roleUser, true)
            UserAuthority.create(user, roleDonar, true)

            return true
        }catch (Exception ex){
            ex.printStackTrace()
            return false
        }

    }
}
