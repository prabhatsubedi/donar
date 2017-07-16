package donar.admin

import com.donar.Authority
import com.donar.Query
import com.donar.QueryTrack
import com.donar.UserAuthority
import com.donar.UserAuthorityEnum
import donar.CommonController
import donar.GenerateListService
import grails.converters.JSON

/**
 * Created by prabhat on 7/13/17.
 */
class GenerateListController extends CommonController{
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]

    List ageList = ['<20', '21-30', '31-40', '41-50', '51-60', '61-70', '71+']
    List genderList = ["M", "F"]
    List ethnicityList = ["American Indian or Alaska Native", "Asian, Black or African American", "Hispanic or Latino", "Native Hawaiian or Other Pacific Islander", "White", "Decline to State", "Other"]
    List bloodTypeList = ["O+", "O-", "A+", "A-", "B+", "B-", "AB+", "AB-"]
    List cmvList = ['Pos', 'Neg']
    List donorIndexList = 1..100
    List preferredDonationTypeList = ['Platelets', 'Plasma', 'Whole Blood', 'DRBC']
    List preferredContactMethodList = ['Phone', 'Email', 'Text', 'Message']
    List preferredDonationLocationList = ['Mountain View', 'Palo Alto', 'Menlo Park', 'Mobile 1', 'Mobile 2', 'Mobile 3']
    List eligibleForList = ['Platelets', 'Plasma', 'Whole Blood', 'DRBC']

    GenerateListService generateListService

    def index(){
        List<Query> queryList = Query.list()
        List<QueryTrack> queryTrackList = QueryTrack.list()
        //Map jsonMap = JSON.parse(queryList.get(0).query)
        //println ("JSON Map........"+jsonMap)

        [queryList: queryList, queryTrackList: queryTrackList,
         ageList: ageList, genderList: genderList, ethnicityList: ethnicityList, bloodTypeList: bloodTypeList, cmvList: cmvList, donorIndexList: donorIndexList,
         preferredDonationTypeList: preferredDonationTypeList, preferredContactMethodList: preferredContactMethodList, preferredDonationLocationList : preferredDonationLocationList,
         eligibleForList : eligibleForList, hasOwnJs: "generateList"]
    }

    def search(){
        println "Params........"+params
        List<UserAuthority> donarList = UserAuthority.findAllByAuthority(Authority.findByAuthority(UserAuthorityEnum.ROLE_DONAR.toString()))
        println "Donar List .."+donarList.size();

        String queryJSON = generateListService.createQueryJson(params)
        println "Query JSON..."+queryJSON

        [location: locationList, donarList: donarList, queryJSON: queryJSON, hasOwnJs: "search"]
    }

    def save(){
        println "Save Params........"+params

        Query query = new Query();

        bindData(query, params)
        
        boolean isCreated = generateListService.save(query)
        println("isCreated ... "+isCreated)

        redirect(action: 'index')
    }

    def generate(){
        println "Generate Params........"+params

        Query query = Query.get(params.int("id"))
        int count = query.count
        query.count = count + 1


        boolean isCreated = generateListService.saveQueryTrack(query)
        println("isCreated ... "+isCreated)

        List<UserAuthority> donarList = UserAuthority.findAllByAuthority(Authority.findByAuthority(UserAuthorityEnum.ROLE_DONAR.toString()))
        println "Donar List .."+donarList.size();

        String queryJSON = generateListService.createQueryJson(params)
        println "Query JSON..."+queryJSON

        [location: locationList, donarList: donarList, queryJSON: queryJSON, hasOwnJs: "search"]
    }


}