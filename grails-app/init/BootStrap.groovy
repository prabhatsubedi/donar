import com.donar.*
import grails.util.Environment;
class BootStrap {

    def init = { servletContext ->

        switch (Environment.current) {
            case Environment.DEVELOPMENT:

                /*def user = new User(username: 'user', password: 'user', enabled: true, accountExpired: false, accountLocked: false, credentialsExpired: false ).save(failOnError: true)
                def admin = new User(username: 'admin', password: 'admin', enabled: true, accountExpired: false, accountLocked: false, credentialsExpired: false ).save(failOnError: true)

                def roleUser = new Authority(authority: 'ROLE_USER').save(failOnError: true)
                def roleAdmin = new Authority(authority: 'ROLE_ADMIN').save(failOnError: true)

                UserAuthority.create(user, roleUser, true)
                UserAuthority.create(admin, roleUser, true)
                UserAuthority.create(admin, roleAdmin, true)*/

                break
            case Environment.PRODUCTION:

                break
        }
    }

    def destroy = {
    }
}
