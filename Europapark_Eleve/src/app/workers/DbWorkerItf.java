package app.workers;


import app.exceptions.MyDBException;
import java.util.List;

/**
 * Interface qui définit les services métier nécessaires avec la base de données
 * liée.
 *
 * @author ramalhom
 */
public interface DbWorkerItf {


    // autres
    void fermerBD();
}
