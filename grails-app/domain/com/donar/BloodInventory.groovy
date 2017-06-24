package com.donar

class BloodInventory {
    /*
    * blood product,blood type,optimal level,current inventory level,projected usage daily,projected usage weekly,
    * projected collection day i,projected collection day i +1 ,projected collection day i +2 ,projected collection day i +3,
    * projected collection day i +4 ,projected collection day i +5 ,projected collection day i +6,projected weekly import*/
    String bloodProduct;
    String bloodType;
    Integer optimalLevel;
    Integer currentInventoryLevel;
    Integer projectedUsageDaily;
    Integer projectedUsageWeekly;
    Integer projectedCollectionDayI;
    Integer projectedCollectionDayIPlusOne;
    Integer projectedCollectionDayIPlusTwo;
    Integer projectedCollectionDayIPlusThree;
    Integer projectedCollectionDayIPlusFour;
    Integer projectedCollectionDayIPlusFive;
    Integer projectedCollectionDayIPlusSix;
    Integer projectedWeeklyImport;


    static constraints = {

    }

    static mapping = {

    }
}
