package discount;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);

        int max=999999999;
        int rnd = rnd(max);

        System.out.println(rnd);
    }

    private static int rnd(int max) {
        return (int) (Math.random()* (++max));
    }

}