package donar

import com.donar.BloodInventory

/**
 * Created by prabhat on 7/15/16.
 */
class AdminController {
    static allowedMethods = [login: "POST", update: "PUT", delete: "DELETE"]

    def index(){
        def count = BloodInventory.countByBloodProduct("platelet");

        def rbcList = BloodInventory.findAllByBloodProduct("rbc");
        def plateletList = BloodInventory.findAllByBloodProduct("platelet");
        def plasmaList = BloodInventory.findAllByBloodProduct("plasma");

        println "currentInventoryLevel..."+plateletList.currentInventoryLevel

        Map currentInventoryPercent = [:]
        Map currentInventoryGap = [:]
        Map weeklyProjectionMap = [:]

        List dataPercent = []
        List dataGap = []
        List dataWeekly = []

        rbcList.each {
            dataPercent.add(it.currentInventoryLevel / it.optimalLevel)
            dataGap.add(it.optimalLevel - it.currentInventoryLevel)
            dataWeekly.add(weeklyProjectionPercent(it))
        }
        currentInventoryPercent['rbc'] = dataPercent
        currentInventoryGap['rbc'] = dataGap
        weeklyProjectionMap['rbc'] = dataWeekly

        dataPercent = []
        dataGap = []
        dataWeekly = []
        plateletList.each {
            dataPercent.add(it.currentInventoryLevel / it.optimalLevel)
            dataGap.add(it.optimalLevel - it.currentInventoryLevel)
            dataWeekly.add(weeklyProjectionPercent(it))
        }
        currentInventoryPercent['platelet'] = dataPercent
        currentInventoryGap['platelet'] = dataGap
        weeklyProjectionMap['platelet'] = dataWeekly

        dataPercent = []
        dataGap = []
        dataWeekly = []
        plasmaList.each {
            dataPercent.add(it.currentInventoryLevel / it.optimalLevel)
            dataGap.add(it.optimalLevel - it.currentInventoryLevel)
            dataWeekly.add(weeklyProjectionPercent(it))
        }
        currentInventoryPercent['plasma'] = dataPercent
        currentInventoryGap['plasma'] = dataGap
        weeklyProjectionMap['plasma'] = dataWeekly

        [count: count, rbcList: rbcList, plateletList: plateletList, plasmaList: plasmaList, currentInventoryPercent: currentInventoryPercent, currentInventoryGap: currentInventoryGap,
         weeklyProjectionMap: weeklyProjectionMap]
    }
    
    private Double weeklyProjectionPercent(BloodInventory bloodInventory){
        Integer weeklyProjection = bloodInventory.currentInventoryLevel + bloodInventory.projectedCollectionDayI + bloodInventory.projectedCollectionDayIPlusOne + bloodInventory.projectedCollectionDayIPlusTwo
        weeklyProjection +=  bloodInventory.projectedCollectionDayIPlusThree + bloodInventory.projectedCollectionDayIPlusFour + bloodInventory.projectedCollectionDayIPlusFive + bloodInventory.projectedCollectionDayIPlusSix
        weeklyProjection += weeklyProjection + bloodInventory.projectedWeeklyImport
        weeklyProjection = weeklyProjection - bloodInventory.projectedUsageWeekly

        Double weeklyProjectionPercent = weeklyProjection / bloodInventory.optimalLevel

        return weeklyProjectionPercent
    }

}
