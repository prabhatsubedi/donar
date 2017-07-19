package donar

import com.donar.Account
import com.donar.Authority
import com.donar.Query
import com.donar.QueryTrack
import com.donar.User
import com.donar.UserAuthority
import com.donar.UserAuthorityEnum
import grails.converters.JSON
import grails.transaction.Transactional

@Transactional
class GenerateListService {

    protected boolean save(Query query) {
        try{
            query.save(failOnError: true)

            return true
        }catch (Exception ex){
            ex.printStackTrace()
            return false
        }
    }

    protected String createQueryJson(params){
        String query = "";
        Map queryMap = new HashMap();
        if(params.age){
            queryMap.age = params.age
        }
        if(params.ethnicity){
            queryMap.ethnicity = params.ethnicity
        }
        if(params.gender){
            queryMap.gender = params.gender
        }
        if(params.bloodType){
            queryMap.bloodType = params.bloodType
        }
        if(params.cmv){
            queryMap.cmv = params.cmv
        }
        if(params.donorIndex){
            queryMap.donorIndex = params.donorIndex
        }
        if(params.preferredDonationType){
            queryMap.preferredDonationType = params.preferredDonationType
        }
        if(params.preferredContactMethod){
            queryMap.preferredContactMethod = params.preferredContactMethod
        }
        if(params.preferredDonatoinLocation){
            queryMap.preferredDonatoinLocation = params.preferredDonatoinLocation
        }
        if(params.eligibleFor){
            queryMap.eligibleFor = params.eligibleFor
        }

        query = (queryMap as JSON)

        return query
    }

    public List<User> searchDonorWithCriteria(Map jsonMap){
        Authority authority = Authority.findByAuthority(UserAuthorityEnum.ROLE_DONAR.toString());
        List<User> donarList = UserAuthority.withCriteria {
            eq 'authority', authority
            user{
                jsonMap.each{
                    eq ''+it.key+'', it.value
                }
            }

            projections{
                property 'user'
            }
        }
        return donarList
    }
    protected boolean saveQueryTrack(Query query) {
        QueryTrack queryTrack = QueryTrack.findByQuery(query);
        if(queryTrack == null){
            queryTrack = new QueryTrack()
        }

        queryTrack.setQuery(query)

        try{
            queryTrack.save(failOnError: true)
            query.save(failOnError: true)

            return true
        }catch (Exception ex){
            ex.printStackTrace()
            return false
        }
    }
}
