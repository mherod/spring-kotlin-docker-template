import co.herod.springkotlindockertemplate.BackendApplicationKt;
import co.herod.springkotlindockertemplate.BuildConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.junit.MockitoJUnitRunner;

@RunWith(MockitoJUnitRunner.class)
public class ApplicationConfigTest {

    @Test
    public void name() throws ClassNotFoundException {
        Class.forName(BuildConfig.MAIN_CLASS_NAME);
        Class.forName(BuildConfig.MAIN_CLASS_NAME.replaceAll("Kt", ""));
        Class.forName(BuildConfig.MAIN_CLASS_NAME.replaceAll("Kt", "") + "Kt");
    }

    @Test
    public void mainMethod() {
        BackendApplicationKt.main("");
    }
}
