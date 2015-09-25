using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWeb
{
    public partial class Formulario_web13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (!chkInformatica.Checked && !chkDiseño.Checked && !chkSalud.Checked && !chkOtros.Checked)
            {
                lblValidar.Text = "Seleccione un checkbox";
            }
            else
            {
                lblValidar.Text = "Correcto";
            } 
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtNombreProyecto.Text =
            txtDescripcion.Text =
            txtCantidad.Text = "";

            txtNombreProyecto.Focus();
            


        }
    }
}