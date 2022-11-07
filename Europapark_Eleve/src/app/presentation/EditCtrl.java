/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.presentation;

import app.exceptions.MyDBException;
import app.helpers.JfxPopup;
import app.workers.DbWorker;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Slider;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author RamalhoM
 */
public class EditCtrl implements Initializable {

    private Attraction courant;
    private DbWorker worker;
    private Lieu lieu;
    private boolean isAjoutModif = false;
    @FXML
    private TextField txtNom;
    @FXML
    private TextArea txtDescription;
    @FXML
    private Slider sldAge;
    @FXML
    private Slider sldTaille;
    @FXML
    private ComboBox<?> comLieu;
    @FXML
    private ComboBox<?> comSaison;
    @FXML
    private TextField txtDuree;
    @FXML
    private TextField txtCapacite;
    @FXML
    private TextField txtCapaciteHoraire;
    @FXML
    private ComboBox<?> comSensation;
    @FXML
    private ComboBox<?> comConstructeur;
    @FXML
    private TextField txtAnnee;
    @FXML
    private Button btnSauver;
    @FXML
    private Button btnAnnuler;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {

    }

    public void setCourant(Attraction courant) {
        this.courant = courant;
        afficherCourant(courant);
    }

    public void setDbWorker(DbWorker worker) {
        this.worker = worker;
        initialiserCombobox();

    }

    public void setMode(boolean isAjoutModif) {
        this.isAjoutModif = isAjoutModif;
        if (!isAjoutModif) {
            btnSauver.setText("OK");
            btnAnnuler.setVisible(false);
        } else {
            btnSauver.setText("Sauver");
            btnAnnuler.setVisible(true);
        }
    }

    private void initialiserCombobox() {

        try {

        } catch (Exception ex) {
            JfxPopup.displayError("ERREUR", "ERREUR JPA", ex.getMessage());
        }
    }


    private void afficherCourant(Attraction courant) {
    }

    @FXML
    private void sauverAttraction(ActionEvent event) {
        Stage stage = (Stage) btnSauver.getScene().getWindow();
        if (!isAjoutModif) {
            stage.close();
        } else if (courant == null) {
            try {
                //Ajouter attraction
                stage.close();
            } catch (MyDBException ex) {
                JfxPopup.displayError("ERREUR", "ERREUR JPA", ex.getMessage());
            }
        } else {
            try {
                //Modifier attraction
                stage.close();
            } catch (MyDBException ex) {
                JfxPopup.displayError("ERREUR", "ERREUR JPA", ex.getMessage());
            }
        }
    }

    @FXML
    private void annuler(ActionEvent event) {
        Stage stage = (Stage) btnAnnuler.getScene().getWindow();
        stage.close();
    }

}
