
package airlinems;

public class AirlineMS {

    static int count = 0;
    public static void main(String[] args) {
        new Splash().setVisible(true);
        count++;
        if (count < 3) {
            Splash.main(null);
        }
    }
    
}
