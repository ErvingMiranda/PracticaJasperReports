module ni.edu.uam.practicajasperreports {
    requires javafx.controls;
    requires javafx.fxml;


    opens ni.edu.uam.practicajasperreports to javafx.fxml;
    exports ni.edu.uam.practicajasperreports;
}