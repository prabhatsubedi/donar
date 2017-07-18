package donar.admin

import com.donar.Authority
import com.donar.User
import com.donar.UserAppointment
import com.donar.UserAuthority
import com.donar.UserAuthorityEnum
import donar.CommonController
import grails.converters.JSON

/**
 * Created by prabhat on 7/13/17.
 */
class DonarContactController extends CommonController{
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]

    def index(){
        List<UserAuthority> donarList = UserAuthority.findAllByAuthority(Authority.findByAuthority(UserAuthorityEnum.ROLE_DONAR.toString()))
        println "Donar List .."+donarList.size();

        [location: locationList, donarList: donarList, hasOwnJs: "donarContact"]
    }

    def donarDetail(){
        User user = User.get(params.int("id"))

        render(template: '/donarContact/donarInfo', model: [user: user])
    }

    def pastDonation(){
        User user = User.get(params.int("id"))

        List pastDonationList = [
                [location: "Mountain View", donationType: "Platelets", earnedPoint: "100 pts"],
                [location: "Menlo Park", donationType: "Plasma", earnedPoint: "100 pts"],
                [location: "Google Mobile", donationType: "Double Red Cells", earnedPoint: "100 pts"],
                [location: "Palo Alto", donationType: "Whole Blood", earnedPoint: "100 pts"]
        ]

        render(template: '/donarContact/pastDonation', model: [user: user, pastDonationList: pastDonationList])
    }
}
