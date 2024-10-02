import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.println(fibonaci(3));
        System.out.println(fibonaci(5));
        System.out.println(fibonaci(12));
        System.out.println(fibonaci(25));
    }
    private static List<Integer> fibonaci(Integer maxNumberOfFibonaci){
        List<Integer> fibonacies = new ArrayList<>();
        fibonacies.add(1);
        fibonacies.add(1);
        int i = 1;
        while (true){
            Integer currentFibonaciResult = fibonacies.get(i) + fibonacies.get(i-1);
            if (maxNumberOfFibonaci < currentFibonaciResult) break;
            fibonacies.add(currentFibonaciResult);
            i++;
        }
        return fibonacies;
    }
}
