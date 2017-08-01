import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class CSVReader {

    public static void main(String[] args) {

        String csvFile = "../../octave/gps_1.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        String utm;
        double lat,llong;
		CoordinateConversion cc = new CoordinateConversion();
        try {

            br = new BufferedReader(new FileReader(csvFile));
            while ((line = br.readLine()) != null) {

                // use comma as separator
                String[] lat_long = line.split(cvsSplitBy);

                //System.out.println("Lat dd= " + lat_long[2] + " , Long dd=" + lat_long[4]);
                lat = Double.parseDouble(lat_long[2]);
                llong = Double.parseDouble(lat_long[4]);
                llong = (-1)*llong;
                //System.out.println(lat+ " "+ llong);
                utm = cc.latLon2UTM(lat, llong);
                System.out.println(utm);

            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

    }

}
