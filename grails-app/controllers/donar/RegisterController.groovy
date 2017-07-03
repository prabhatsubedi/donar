package donar

import com.donar.User
import com.donar.UserAuthorityEnum
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder

/**
 * Created by prabhat on 7/15/16.
 */
class RegisterController {
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]

    UserService userService;
    def index(){

    }
    def register(){
        User user = new User(username: params.username, password: params.password, fullName: params.fullName, email: params.username,
                bloodType: params.bloodType, age: params.age, gender: params.gender)
        boolean isCreated = userService.createDonar(user);
        println "Is Created............"+isCreated
        if(isCreated){
            forward(uri:  "/login")
        }else{
            redirect(action: "index")
        }
    }

}
