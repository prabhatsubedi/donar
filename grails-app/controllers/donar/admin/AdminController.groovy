package donar.admin

import com.donar.BloodInventory
import grails.converters.JSON

/**
 * Created by prabhat on 7/15/16.
 */
class AdminController {
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]

    static final List BLOOD_TYPE = ["O+", "A+", "B+", "AB+", "O-", "A-", "B-", "AB-"]
    static final List BLOOD_PRODUCT = ["platelet", "rbc", "plasma"]

    def index(){
        def count = BloodInventory.countByBloodProduct("platelet");

        def rbcList = BloodInventory.findAllByBloodProduct("rbc");
        def plateletList = BloodInventory.findAllByBloodProduct("platelet");
        def plasmaList = BloodInventory.findAllByBloodProduct("plasma");

        println "currentInventoryLevel..."+plateletList.currentInventoryLevel

        Map currentInventoryLevel = [:]
        Map currentInventoryPercent = [:]
        Map currentInventoryGap = [:]
        Map weeklyProjectionMap = [:]
        Map weeklyGapMap = [:]

        List dataInventory = []
        List dataPercent = []
        List dataGap = []
        List dataWeekly = []
        List dataWeeklyGap = []

        rbcList.each {
            dataInventory.add(it.currentInventoryLevel)
            dataPercent.add(it.currentInventoryLevel / it.optimalLevel)
            dataGap.add(it.optimalLevel - it.currentInventoryLevel)
            dataWeekly.add(weeklyProjectionPercent(it))
            dataWeeklyGap.add(weeklyProjectionGap(it))
        }
        currentInventoryLevel['rbc'] = dataInventory
        currentInventoryPercent['rbc'] = dataPercent
        currentInventoryGap['rbc'] = dataGap
        weeklyProjectionMap['rbc'] = dataWeekly
        weeklyGapMap['rbc'] = dataWeeklyGap

        dataInventory = []
        dataPercent = []
        dataGap = []
        dataWeekly = []
        plateletList.each {
            dataInventory.add(it.currentInventoryLevel)
            dataPercent.add(it.currentInventoryLevel / it.optimalLevel)
            dataGap.add(it.optimalLevel - it.currentInventoryLevel)
            dataWeekly.add(weeklyProjectionPercent(it))
            dataWeeklyGap.add(weeklyProjectionGap(it))
        }
        currentInventoryLevel['platelet'] = dataInventory
        currentInventoryPercent['platelet'] = dataPercent
        currentInventoryGap['platelet'] = dataGap
        weeklyProjectionMap['platelet'] = dataWeekly
        weeklyGapMap['platelet'] = dataWeeklyGap

        dataInventory = []
        dataPercent = []
        dataGap = []
        dataWeekly = []
        plasmaList.each {
            dataInventory.add(it.currentInventoryLevel)
            dataPercent.add(it.currentInventoryLevel / it.optimalLevel)
            dataGap.add(it.optimalLevel - it.currentInventoryLevel)
            dataWeekly.add(weeklyProjectionPercent(it))
            dataWeeklyGap.add(weeklyProjectionGap(it))
        }
        currentInventoryLevel['plasma'] = dataInventory
        currentInventoryPercent['plasma'] = dataPercent
        currentInventoryGap['plasma'] = dataGap
        weeklyProjectionMap['plasma'] = dataWeekly
        weeklyGapMap['plasma'] = dataWeeklyGap

        Map forcastedGraphDataMap = prepareForcastedGraphData()

        [count: count, currentInventoryLevel: currentInventoryLevel as JSON, rbcList: rbcList,
         plateletList: plateletList, plasmaList: plasmaList, currentInventoryPercent: currentInventoryPercent as JSON,
         currentInventoryGap: currentInventoryGap , weeklyProjectionMap: weeklyProjectionMap as JSON, forcastedGraphDataMap: (forcastedGraphDataMap as JSON),
         bloodType: BLOOD_TYPE, weeklyGapMap: weeklyGapMap as JSON, hasOwnJs: "dashboard"]
    }
    
    private Double weeklyProjectionPercent(BloodInventory bloodInventory){
        Integer weeklyProjection = bloodInventory.currentInventoryLevel + bloodInventory.projectedCollectionDayI + bloodInventory.projectedCollectionDayIPlusOne + bloodInventory.projectedCollectionDayIPlusTwo
        weeklyProjection +=  bloodInventory.projectedCollectionDayIPlusThree + bloodInventory.projectedCollectionDayIPlusFour + bloodInventory.projectedCollectionDayIPlusFive + bloodInventory.projectedCollectionDayIPlusSix
        weeklyProjection += weeklyProjection + bloodInventory.projectedWeeklyImport
        weeklyProjection = weeklyProjection - bloodInventory.projectedUsageWeekly

        Double weeklyProjectionPercent = weeklyProjection / bloodInventory.optimalLevel

        return weeklyProjectionPercent
    }

    private Map prepareForcastedGraphData(){
        Map forcastedGraphMap = [:]
        Map dataMap = [:]
        for (String bloodProduct : BLOOD_PRODUCT){
            dataMap = [:]
            for (String bloodType : BLOOD_TYPE){
                BloodInventory bloodInventory = BloodInventory.findByBloodProductAndBloodType(bloodProduct, bloodType)

                List plateletData = []
                plateletData.add(bloodInventory.projectedCollectionDayI)
                plateletData.add(bloodInventory.projectedCollectionDayIPlusOne)
                plateletData.add(bloodInventory.projectedCollectionDayIPlusTwo)
                plateletData.add(bloodInventory.projectedCollectionDayIPlusThree)
                plateletData.add(bloodInventory.projectedCollectionDayIPlusFour)
                plateletData.add(bloodInventory.projectedCollectionDayIPlusFive)
                plateletData.add(bloodInventory.projectedCollectionDayIPlusSix)

                dataMap[bloodType] = plateletData
            }

            forcastedGraphMap[bloodProduct] = dataMap
        }

        return forcastedGraphMap
    }

    private Double weeklyProjectionGap(BloodInventory bloodInventory){
        /*
        * (Projected Weekly Usage) - (sum of projected collection day i, day i+1, .... through day i+6) - (projected weekly import)
        */
        Integer sumProjectedCollection = (bloodInventory.projectedCollectionDayI + bloodInventory.projectedCollectionDayIPlusOne + bloodInventory.projectedCollectionDayIPlusTwo +  bloodInventory.projectedCollectionDayIPlusThree + bloodInventory.projectedCollectionDayIPlusFour + bloodInventory.projectedCollectionDayIPlusFive + bloodInventory.projectedCollectionDayIPlusSix)
        Integer weeklyProjectionGap = bloodInventory.projectedUsageWeekly - sumProjectedCollection - bloodInventory.projectedWeeklyImport

        return weeklyProjectionGap
    }

}
