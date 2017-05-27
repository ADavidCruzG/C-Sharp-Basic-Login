using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Clase para manejo de usuarios
/// </summary>
public class user {

    public static sqlConnection connection = new sqlConnection();

    public DataSet getUserByEmail(string userEmail) {

        SqlCommand sqlInstruction = new SqlCommand();
        DataSet user = new DataSet();

        sqlInstruction.CommandText = "Sel_UserByEmail";
        sqlInstruction.CommandType = CommandType.StoredProcedure;
        sqlInstruction.Parameters.Add("@email", SqlDbType.NVarChar, 50).Value = userEmail;

        user = connection.buildDataset(sqlInstruction);

        return user;
    }

    public DataSet userLogin(string userEmail, string userPassword) {

        SqlCommand sqlInstruction = new SqlCommand();
        DataSet user = new DataSet();

        sqlInstruction.CommandText = "Sel_UserLogin";
        sqlInstruction.CommandType = CommandType.StoredProcedure;
        sqlInstruction.Parameters.Add("@email", SqlDbType.NVarChar, 50).Value = userEmail;
        sqlInstruction.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = userPassword;

        user = connection.buildDataset(sqlInstruction);

        return user;
    }
}