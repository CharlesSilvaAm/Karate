package conduitApp;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

public class ConduitTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags() {
        return Karate.run("tags").tags("@second").relativeTo(getClass());
    }

//    @Test
//    void testParallel() {
//        Results results = Runner.path("classpath:conduitApp")
//                //.outputCucumberJson(true)
//                .parallel(5);
//        assertEquals(0, results.getFailCount(), results.getErrorMessages());
//    }
}
