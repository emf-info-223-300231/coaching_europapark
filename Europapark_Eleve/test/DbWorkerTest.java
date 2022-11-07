
import app.exceptions.MyDBException;
import app.helpers.SystemLib;
import app.workers.DbWorker;
import java.util.List;
import org.junit.AfterClass;
import static org.junit.Assert.*;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

/**
 * Test des principales fonctionnalités de DbWorker.
 *
 * @author Mario Ramalho
 */
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class DbWorkerTest {

    private static DbWorker dbWrk;

    @BeforeClass
    public static void setUpClass() throws MyDBException {
        dbWrk = new DbWorker();

    }

    @AfterClass
    public static void tearDownClass() throws MyDBException {
        dbWrk.fermerBD();
    }

    private void afficherMessage(boolean ok, String msg1, String msg2) {
        if (ok) {
            System.out.println("  " + msg1);
        } else {
            System.out.println("  " + msg2);
        }
    }

    @Test
    public void a_lireTouteslesAttractions() throws MyDBException {
        System.out.println("*** " + SystemLib.getCurrentMethod() + " ...");
    }

    @Test
    public void b_lireLesAttractionsNiveau1() throws MyDBException {
        System.out.println("*** " + SystemLib.getCurrentMethod() + " ...");
    }

}
