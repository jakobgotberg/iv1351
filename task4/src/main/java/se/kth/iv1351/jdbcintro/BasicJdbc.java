package se.kth.iv1351.jdbcintro;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

/**
 * A small program that illustrates how to write a simple JDBC program.
 */
public class BasicJdbc {

    public Connection createConnection() throws SQLException, ClassNotFoundException {
        Class.forName("org.postgresql.Driver");

        Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/soundgood_musicschool",
      "postgres", "postgres");
        return connection;
    }

    public void accessDatabase(Connection connection) throws SQLException, ClassNotFoundException {
        Statement statement = connection.createStatement();
        Scanner input = new Scanner(System.in);
        String userInput = "";
        while(!userInput.equalsIgnoreCase("QUIT")) {
            System.out.println("For commands, type HELP.\n");
            userInput = input.next();

            if(userInput.equalsIgnoreCase("HELP"))
                System.out.println("To rent an instrument, type RENT.\nTo list all unrented instruments, type LIST.\nTo terminate an ongoing rental, type TERMINATE.\nTo exit, type: QUIT");
            else if(userInput.equalsIgnoreCase("RENT"))
            {
                System.out.println("Please enter the username for the student.");
                rentInstrument(statement, input.next(), input);
            }
            else if(userInput.equalsIgnoreCase("TERMINATE"))
            {
                System.out.println("Please enter the username for the student.");
                terminateRental(statement, input.next(), input);
            }
            else if(userInput.equalsIgnoreCase("LIST"))
            {
                System.out.println("Which instrument type would you like to review?");
                listTable(statement, input.next());
            }
            else if(userInput.equalsIgnoreCase("QUIT"))
                return;
            else 
                System.out.println("\nUnknown Command.\n");
            }
        System.out.println("\n");
    }

    private boolean studentExist(Statement statement, String student) throws SQLException {
        ResultSet result = statement.executeQuery("SELECT COUNT(*) FROM student WHERE stud_uname = " + "'" + student + "';");
        result.next();
        if(result.getInt(1) == 1)
            return true;
        return false;
    }

    private int instrumentsRented(Statement statement, String student) throws SQLException{
        ResultSet result = statement.executeQuery("SELECT COUNT(*) FROM instrument_rented AS IR, student AS S WHERE (IR.stud_uname = S.stud_uname AND IR.termination_date IS NULL AND S.stud_uname = '" + student + "')");
        result.next();
        return result.getInt(1);
    }

    private void renting(Statement statement, String instrumentID, String student, String rent_start, String rent_end) throws SQLException{
        statement.executeUpdate("INSERT INTO instrument_rented(stud_uname, instrument_id, rent_start, rent_end)  VALUES('" + student + "', " + instrumentID + ", '" + rent_start + "', '" + rent_end + "')");
        statement.executeUpdate("UPDATE instrument SET is_booked = TRUE WHERE instrument_id = '" + instrumentID + "'");
    }

    private boolean isBooked(Statement statement, String instrumentID) throws SQLException{
        ResultSet result = statement.executeQuery("SELECT is_booked FROM instrument WHERE instrument_id = '" + instrumentID + "'");
        result.next();
        return result.getBoolean(1);
    }

    private void rentInstrument(Statement statement, String student, Scanner input) {
        try
        {
            if (!studentExist(statement, student))
            {
                System.out.println("No student with given username found.\n");
                return;
            }
            if (instrumentsRented(statement, student) >= 2)
            {
                System.out.println("Student can not rent anymore instruments.\n");
                return;
            }
            System.out.println("Which instrument type would you like to rent?");
            if (!listTable(statement, input.next()))
            {
                System.out.println("No matching instruments found.\n");
                return;
            }
            System.out.println("Please state the ID of the instrument you would like to rent.");
            String instrumentID = input.next();
            if(isBooked(statement, instrumentID))
            {
                System.out.println("Instrument already booked or not in database.\n");
                return;
            }
            System.out.println("Please specify the starting date of the rental.");
            String rent_start = input.next();
            System.out.println("Please specify the starting date of the rental.");
            String rent_end = input.next();
            renting(statement, instrumentID, student, rent_start, rent_end);
        }
        catch(SQLException e)
        {
            System.out.println(e.toString());
            return;
        }
        System.out.println("Instrument successfully rented.\n");
    }

    private void terminateRental(Statement statement, String student, Scanner input) throws SQLException{
        String terminationDate;
        String instrumentID;
        ResultSet result;

        if (!studentExist(statement, student))
        {
            System.out.println("No student with given username found.\n");
            return;
        }
        result = statement.executeQuery("SELECT COUNT(*) FROM instrument_rented AS IR, instrument AS I WHERE IR.instrument_id = I.instrument_id AND I.is_booked = TRUE AND IR.stud_uname = '" + student + "'");
        result.next();
        if(result.getInt(1) == 0)
        {
            System.out.println("No active rentals found for student\n");
            return;
        }
        result = statement.executeQuery("SELECT IR.instrument_id, I.instrument_type, I.instrument_brand, I.rental_fee, IR.rent_start, IR.rent_end, IR.termination_date FROM instrument_rented AS IR, instrument AS I WHERE IR.instrument_id = I.instrument_id AND IR.stud_uname = '" + student + "'");
        while(result.next())
        {
            if(result.getString(7) != null)
                System.out.print("TERMINATED\t");
            System.out.println("ID: " + result.getString(1) + "\tInstrument" + result.getString(2) + "\tBrand: "+ result.getString(3) + "\tFee: " + result.getString(4) + "\tRent Start: " + result.getString(5) + "\tRent End: " + result.getString(6));
        }
        System.out.println("Please state the ID of the instrument which correlates to the rental which is to be terminated.");
        instrumentID = input.next();
        result = statement.executeQuery("SELECT COUNT(*) FROM instrument WHERE is_booked = TRUE AND instrument_id = '" + instrumentID + "'");
        result.next();
        if(result.getInt(1) == 0)
        {
            System.out.println("Rental is already terminated.\n");
            return;
        }
        System.out.println("Please enter the date when the rental is to be terminated.\n");
        terminationDate = input.next();
        statement.executeUpdate("UPDATE instrument_rented SET termination_date = '" + terminationDate + "' WHERE instrument_id = '" + instrumentID + "' AND stud_uname = '" + student + "'");
        statement.executeUpdate("UPDATE instrument SET is_booked = FALSE WHERE instrument_id = '" + instrumentID + "'");
        System.out.println("Rental Terminated.\n");
    }

    // Add COUNT(*) instead of the boolean.
    private boolean listTable(Statement statement, String instrument_type) throws SQLException {
        String query = "SELECT COUNT(*) FROM instrument WHERE is_booked = FALSE AND instrument_type = '";
        ResultSet result = statement.executeQuery(query + instrument_type + "'");
        result.next();
        if( result.getInt(1) == 0)
        {
            System.out.println("No such instrument found.\n");
            return false;
        }

        query = "SELECT * FROM instrument WHERE is_booked = FALSE AND instrument_type = '";
        result = statement.executeQuery(query + instrument_type + "'");

        System.out.println();
        while(result.next()) {
            System.out.println("ID: " + result.getString(1) + "\ttype: " + result.getString(2) + "\tBrand: " + result.getString(3) +
                "\t\tFee: " + result.getString(4));
        }
        return true;
    } 

    public static void main(String[] args) {
        BasicJdbc instance = new BasicJdbc();
        try
        {
            Connection connection = instance.createConnection();
            instance.accessDatabase(connection);
        }
        catch(SQLException | ClassNotFoundException e)
        {
            System.out.println(e.toString());
            System.out.println(e.getMessage());
            System.out.println();
            e.printStackTrace();
        }
        

        

  }
}
