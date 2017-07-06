package donar

import com.donar.User

import java.text.SimpleDateFormat

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
        Date birthDate =  Date.parse("MM/dd/yyyy", params.birthDate)
        params.birthDate = birthDate

        bindData(user, params)

        boolean success = userService.updateDonar(user);
        if(success){
            session.user.fullName = user.fullName;
        }

        redirect(action: 'index')

    }

}
