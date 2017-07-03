package donar

import com.donar.User

/**
 * Created by prabhat on 7/15/16.
 */
class ProfileController {
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]
    UserService userService;

    def index(){
        User user = userService.getUser(session.user.id);

        [user: user]
    }

    def save(){
        User user = userService.getUser(session.user.id);
        bindData(user, params)

        userService.updateDonar(user);

        redirect(action: 'index')

    }

}
