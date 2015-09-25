using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca;

namespace AplicacionWeb
{
    public partial class Formulario_web14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Usuarios usu = new Usuarios();
            usu.NombreUsuario = txtNombreUsuario.Text;
            usu.RutUsuario = txtRutUsuario.Text;
            usu.NumTelefonoUsuario = Int32.Parse(txtNumeroUsuario.Text);
            usu.EmailUsuario = txtCorreoUsuario.Text;
            usu.PassUsuario = txtPassword.Text;
            usu.AreaUsuario = cmbAreaUsuario.SelectedValue;
            usu.FechaNacimientoUsuario = Calendar.SelectedDate;
            usu.FechaRegistroUsuario = DateTime.Today;

            Session["UsuarioRegistrado"] = usu;

            List<Usuarios> Usuario;

            if (Session["usuarios"] == null)
                Usuario = new List<Usuarios>();
            else
                Usuario = (List<Usuarios>)Session["usuarios"];

            Usuario.Add(usu);

            Response.Redirect("Indice.aspx");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtNombreUsuario.Text =
                txtRutUsuario.Text =
                txtNumeroUsuario.Text =
                txtCorreoUsuario.Text =
                txtPassword.Text =
                txtConfirmarPassword.Text = "";
            txtNombreUsuario.Focus();
        }
    }
}