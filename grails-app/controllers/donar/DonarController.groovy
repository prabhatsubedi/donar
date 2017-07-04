package donar

import com.donar.User
import com.donar.UserAuthorityEnum
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder

/**
 * Created by prabhat on 7/15/16.
 */
class DonarController {
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]
    UserService userService

    def index(){
        User user = userService.getUser(session.user.id);

        [user: user]
    }

}
