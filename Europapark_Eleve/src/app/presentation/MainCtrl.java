/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.presentation;

import app.App;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.application.Platform;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.ListView;
import app.workers.DbWorker;
import app.exceptions.MyDBException;
import app.helpers.JfxPopup;
import java.io.IOException;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Modality;
import javafx.stage.Stage;

/**
 *
 * @author RamalhoM
 */
public class MainCtrl implements Initializable {

    private DbWorker dbWrk;
    //private Game jeuCourant;
    private boolean modeAjout = false;

    private Stage primaryStage;
    private EditCtrl editCtrl;

    @FXML
    private ListView<?> lstAttractions;
    @FXML
    private Button btnAfficher;
    @FXML
    private Button btnAjouter;
    @FXML
    private Button btnModifier;
    @FXML
    private Button btnSupprimer;
    @FXML
    private ComboBox<?> cmbLieu;
    @FXML
    private ComboBox<?> cmbSensation;

    @Override
    public void initialize(URL url, ResourceBundle rb) {

        try {
            dbWrk = new DbWorker();
            editCtrl = new EditCtrl();
        } catch (MyDBException ex) {
            System.out.println(ex.getMessage());
        }

        cmbLieu.getSelectionModel().selectedItemProperty().addListener(
                (observable, oldValue, newValue) -> filtrerAttraction(newValue));
        cmbSensation.getSelectionModel().selectedItemProperty().addListener(
                (observable, oldValue, newValue) -> filtrerAttraction(newValue));

    }

    public void setPrimaryStage(Stage primaryStage) {
        this.primaryStage = primaryStage;
    }

    private void filtrerAttraction(Lieu l) {
    }

    private void filtrerAttraction(Sensation s) {

    }

    private void ouvrirFenetre(boolean isAjoutModif, Attraction attraction) {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("EditView.fxml"));
        Scene newScene = null;
        try {
            newScene = new Scene(loader.load());
        } catch (IOException ex) {
            JfxPopup.displayError("ERREUR", "ERREUR JavaFX", ex.getMessage());
            quitter();
        }
        editCtrl = loader.getController();
        editCtrl.setDbWorker(dbWrk);
        editCtrl.setCourant(attraction);
        editCtrl.setMode(isAjoutModif);
        Stage inputStage = new Stage();
        inputStage.initOwner(primaryStage);
        inputStage.setScene(newScene);
        inputStage.setTitle("Formulaire d'édition");
        inputStage.initModality(Modality.APPLICATION_MODAL);
        inputStage.getIcons().add(new Image(App.LOGO));
        inputStage.showAndWait();
    }

    @FXML
    public void quitter() {
        dbWrk.fermerBD(); // ne pas oublier !!!
        Platform.exit();
    }

    @FXML
    private void afficherAttraction(ActionEvent event) {
        if (lstAttractions.getSelectionModel().getSelectedItem() != null) {
            ouvrirFenetre(false, lstAttractions.getSelectionModel().getSelectedItem());
        } else {
            JfxPopup.displayInformation("Attention", "Attraction", "Merci de sélectionner une attraction");
        }
    }

    @FXML
    private void ajouterAttraction(ActionEvent event) {
        ouvrirFenetre(true, null);
    }

    @FXML
    private void modifierAttraction(ActionEvent event) {
        if (lstAttractions.getSelectionModel().getSelectedItem() != null) {
            ouvrirFenetre(true, lstAttractions.getSelectionModel().getSelectedItem());
        } else {
            JfxPopup.displayInformation("Attention", "Attraction", "Merci de sélectionner une attraction");
        }
    }

    @FXML
    private void supprimerAttraction(ActionEvent event) {

    }

}
