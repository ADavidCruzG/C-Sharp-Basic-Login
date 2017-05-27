using System;
using System.Data;

public partial class login : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void userLogin(object sender, EventArgs e) {

        user user = new user();
        DataSet returnedUser = new DataSet();
        DataSet loginUser = new DataSet();

        returnedUser = user.getUserByEmail(this.txtEmail.Text.Trim());

        if (returnedUser.Tables[0].Rows.Count > 0) {
            loginUser = user.userLogin(this.txtEmail.Text.Trim(), this.txtPasssword.Text.Trim());
            if (loginUser.Tables[0].Rows.Count > 0) {
                Response.Redirect("Welcome.aspx");
            } else {
                Response.Write("<script>alert('Contraseña incorrecta')</script>");
            }
        } else {
            Response.Write("<script>alert('No existe un usuario registrado con el correo " + this.txtEmail.Text + "')</script>");
        }

    }
}