package donar

import com.donar.Account
import com.donar.Query
import com.donar.QueryTrack
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
        queryMap.age = params.age
        queryMap.ethnicity = params.ethnicity
        queryMap.gender = params.gender
        queryMap.bloodType = params.bloodType
        queryMap.cmv = params.cmv
        queryMap.donorIndex = params.donorIndex
        queryMap.preferredDonationType = params.preferredDonationType
        queryMap.preferredContactMethod = params.preferredContactMethod
        queryMap.preferredDonatoinLocation = params.preferredDonatoinLocation
        queryMap.eligibleFor = params.eligibleFor

        query = (queryMap as JSON)

        return query
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
