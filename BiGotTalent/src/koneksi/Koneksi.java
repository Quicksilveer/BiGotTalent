package koneksi;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
public class Koneksi {
    private static Connection conn;
    
    public static Connection configDB() {
        try {
            // Alamat database XAMPP yang kita buat tadi
            String url = "jdbc:mysql://localhost:3306/db_bigottalent";
            // Username default XAMPP
            String user = "root";
            // Password default XAMPP (kosong)
            String pass = "";
            
            // Memanggil Driver MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Menghubungkan Java ke XAMPP
            conn = DriverManager.getConnection(url, user, pass);
            
        } catch (Exception e) {
            // Jika gagal, kotak pesan error ini akan muncul
            JOptionPane.showMessageDialog(null, "Koneksi Database Gagal: " + e.getMessage());
        }
        return conn;
    }
}
