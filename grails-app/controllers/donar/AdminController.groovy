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

        List dataPercent = []
        List dataGap = []
        rbcList.each {
            dataPercent.add(it.currentInventoryLevel / it.optimalLevel)
            dataGap.add(it.optimalLevel - it.currentInventoryLevel)
        }
        currentInventoryPercent['rbc'] = dataPercent
        currentInventoryGap['rbc'] = dataGap

        dataPercent = []
        dataGap = []
        plateletList.each {
            dataPercent.add(it.currentInventoryLevel / it.optimalLevel)
            dataGap.add(it.optimalLevel - it.currentInventoryLevel)
        }
        currentInventoryPercent['platelet'] = dataPercent
        currentInventoryGap['platelet'] = dataGap

        dataPercent = []
        dataGap = []
        plasmaList.each {
            dataPercent.add(it.currentInventoryLevel / it.optimalLevel)
            dataGap.add(it.optimalLevel - it.currentInventoryLevel)
        }
        currentInventoryPercent['plasma'] = dataPercent
        currentInventoryGap['plasma'] = dataGap

        [count: count, rbcList: rbcList, plateletList: plateletList, plasmaList: plasmaList, currentInventoryPercent: currentInventoryPercent, currentInventoryGap: currentInventoryGap]
    }

}
