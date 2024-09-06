import java.io.*; // for BufferedReader, InputStreamReader, FileWriter, BufferedWriter, IOException
import java.math.*; // for BigDecimal, BigInteger
import java.security.*; // for MessageDigest, NoSuchAlgorithmException
import java.text.*; // for DateFormat, SimpleDateFormat, ParseException
import java.util.*; // for Scanner, Random, Arrays, Collections, List, ArrayList, Map, HashMap, Set, Iterator, StringTokenizer
import java.util.concurrent.*; // for Callable, TimeUnit, ExecutorService, Executors
import java.util.function.*; // for Function, UnaryOperator
import java.util.regex.*; // for Pattern, Matcher
import java.util.stream.*; // for Stream, IntStream, Collectors, Collector
import static java.util.stream.Collectors.joining; // for joining()
import static java.util.stream.Collectors.toList; // for toList()

class Result {
    //"Public static" means that the method belongs to the class and can be called without creating an instance of the class.
    
    public static int simpleArraySum(List<Integer> ar) {
        int sum = 0;
        
        // For loop in Java has the same syntax as C++ for index-based iteration.
        for (int i = 0; i < ar.size(); i++) {
            // In Java, you cannot access list elements with square brackets like in C++. 
            // Instead, use the get() method to access elements of a List.
            sum += ar.get(i);
        }
        return sum;
    }
}


public class Solution {
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        int arCount = Integer.parseInt(bufferedReader.readLine().trim());

        List<Integer> ar = Stream.of(bufferedReader.readLine().replaceAll("\\s+$", "").split(" "))
            .map(Integer::parseInt)
            .collect(toList());

        int result = Result.simpleArraySum(ar);

        bufferedWriter.write(String.valueOf(result));
        bufferedWriter.newLine();

        bufferedReader.close();
        bufferedWriter.close();
    }
}
