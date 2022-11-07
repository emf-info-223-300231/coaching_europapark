package app.workers;

import app.exceptions.MyDBException;
import app.workers.dao.JpaDao;
import app.workers.dao.JpaDaoItf;
import java.util.List;

/**
 * Couche "métier" gérant les accès de et vers la base de données.
 *
 * @author jcstritt
 */
public class DbWorker implements DbWorkerItf {

    private static final String JPA_PU = "EuropaparkPU";

    /**
     * Constructeur.
     */
    public DbWorker() throws MyDBException {
    }

  

    /*
   * AUTRES
     */
    @Override
    public void fermerBD() {

    }

}
