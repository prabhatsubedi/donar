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
        println ("plateletList..."+plateletList)
        [count: count, rbcList: rbcList, plateletList: plateletList, plasmaList: plasmaList]
    }

}
