using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using Temperaturas;
namespace conversorTemperaturas
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCentigrados.Attributes.Add("onmouseover", "PoneFoco('txtCentigrados')");
            lblFarenheit.Attributes.Add("onmouseover", "PoneFoco('txtFarenheit')");

        }

        protected void btnCalcular_Click(object sender, EventArgs e, Convert convert)
        {
            if(txtCentigrados.Text!= "" && txtFarenheit.Text =="")
            {
                double gradoC = Convert.ToDouble(txtCentigrados.Text);
                txtFarenheit.Text = Conversor.ToString(Termometro.converticC_F(gradoC));
            }else if(txtCentigrados.Text == "" && txtFarenheit.Text != "")
            {
                double gradoF = Convert.ToDouble(txtFarenheit.Text);
                txtCentigrados.Text = Conversor.ToString(Termometro.converticC_F(gradoF));
            }
            else
            {
                limpiarCuadrosTexto();
            }

        }

        private void limpiarCuadrosTexto()
        {
            txtFarenheit.Text = "";
            txtCentigrados.Text = "";
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiarCuadrosTexto();
        }
    }
}