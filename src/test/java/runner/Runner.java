package runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;
//import scr.test.java.runner.Runner;
@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"json:target/cucumber.json","rerun:target/rerun.txt"},
        features = "src/test/resources/features",
        glue = "steps",
        tags = "@OMT-7932",
        dryRun = false

)

public class Runner {
}
