package donar

import com.donar.Account
import com.donar.AccountSchedule
import com.donar.User
import grails.transaction.Transactional

@Transactional
class ReportingService {
    private File generateDonorListCSVFile(String reportName, List<User> donorList){
        File file = File.createTempFile(reportName, ".tmp");
        Map<String, String> columns = new LinkedHashMap<>();

        columns.put('sn', 'S.No.')
        columns.put('name', "Name")
        columns.put('gender', "Gender")
        columns.put('bloodType', "Blood Type")
        columns.put('phoneNumber', "Phone Number")
        columns.put('email', "Email")
        columns.put('averageDonorIndex', "Average Donor Index")

        List<Object> dataList = []
        Map<String, Object> dataMap = null;

        donorList.eachWithIndex{val, int i ->

            dataMap = new HashMap()
            dataMap.put('sn', i+1)
            dataMap.put('name', val.fullName)
            dataMap.put('gender', val.gender)
            dataMap.put('bloodType', val.bloodType)
            dataMap.put('phoneNumber', val.phoneNumber)
            dataMap.put('email', val.email)
            dataMap.put('averageDonorIndex', 100)

            dataList.add(dataMap)

        }

        writeRowsToCsvFileExport(dataList, columns, file)
        return file;
    }

    public static writeRowsToCsvFileExport(data,header,fileName){
        try{
            FileWriter writer = new FileWriter(fileName, true);

            def headerLoop = header.size()
            //println("Header......"+header)
            header.each{
                writer.append('\"')
                writer.append(it.value.toString());
                writer.append('\"')
                if(headerLoop>1){
                    writer.append(',');
                }else{
                    writer.append('\n');
                }
                headerLoop--;
            }
            def map
            headerLoop
            data.each{rowdata->
                map = rowdata
                headerLoop = header.size()
                header.each{
                    if(map.getAt(it.key) || map.getAt(it.key)==0){
                        writer.append('\"')
                        writer.append((map.getAt(it.key).toString()))
                        writer.append('\"')
                    }else{
                        writer.append('')
                    }
                    if(headerLoop > 1){
                        writer.append(',')
                    }
                    headerLoop--
                }
                writer.append('\n');
            }
            writer.flush();
            writer.close();

        } catch ( e ) {
            e.printStackTrace()
            //log.warn e
        }
    }

    public static byte[] fileToByteArray(File file) throws IOException{
        ByteArrayOutputStream ous = null;
        InputStream ios = null;
        try {
            byte[] buffer = new byte[32768];
            ous = new ByteArrayOutputStream();
            ios = new FileInputStream(file);
            int read = 0;
            while ( (read = ios.read(buffer)) != -1 ) {
                ous.write(buffer, 0, read);
            }
        } finally {
            try {
                if ( ous != null )
                    ous.close();
            } catch ( IOException e) {
            }

            try {
                if ( ios != null )
                    ios.close();
            } catch ( IOException e) {
            }
            //file.delete()
        }
        return ous.toByteArray();
    }
}
