package donar

import com.donar.User

/**
 * Created by prabhat on 7/3/17.
 */
class AppointmentController {
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]
    UserService userService

    def index(){
        User user = userService.getUser(session.user.id);

        [user: user]
    }

}
