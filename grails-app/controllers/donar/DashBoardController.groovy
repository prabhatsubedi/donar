package donar

import com.donar.UserAuthorityEnum
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder

/**
 * Created by prabhat on 7/15/16.
 */
class DashBoardController {
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]


    def index(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        List<String> authorities = auth.getAuthorities().collect {it.toString()}
        println "Roles............"+authorities;
        if(authorities.contains(UserAuthorityEnum.ROLE_ADMIN.toString())){
            redirect(controller: 'admin')
            return
        }
    }

}
