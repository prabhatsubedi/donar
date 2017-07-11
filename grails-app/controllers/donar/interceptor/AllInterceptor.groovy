package donar.interceptor

import com.donar.User
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder

/**
 * Filters required for redirecting to landing page when user, by some means, lands to individual module
 * without filling out complete parameters. This happen especially when the session is expired in some modules and user tries to re login.
 * Created by IntelliJ IDEA.
 */


class AllInterceptor {

	public AllInterceptor(){
		matchAll()
	}

	boolean before(){
		if(session.user == null){
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();

			session.user = User.findWhere(username: auth.getName())
		}

		return true
	}
	boolean after() {
		if (model) {
			model.put("applicationTitle", "Circulate")
		}
		return true
	}

	void afterView() {
		// no-op
	}

}
