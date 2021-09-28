using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MiLibreria;

namespace PracticaProyecto
{
    public partial class MantenimientoCliente : Mantenimiento
    {
        public MantenimientoCliente()
        {
            InitializeComponent();
        }

        public override Boolean Guardar()
        {
            if (Utilidades.ValidarFormulario(this, errorProvider1) == false)
            {
                try
                {
                    string cmd = string.Format("EXEC ActualizaClientes '{0}','{1}','{2}','{3}','{4}','{5}'", txtIdCli.Text.Trim(), txtCedula.Text.Trim(), txtNomCli.Text.Trim(), txtTelCli.Text.Trim(), txtEmailCli.Text.Trim(), txtCatCli.Text.Trim());
                    Utilidades.Ejecutar(cmd); 
                    MessageBox.Show("Se ha guardado correctamente...");
                    return true;
                }
                catch (Exception error)
                {
                    MessageBox.Show("Ha ocurrido un error: " + error.Message);
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public override void Eliminar()
        {
            try
            {
                string cmd = string.Format("EXEC EliminarClientes '{0}'", txtIdCli.Text.Trim());
                Utilidades.Ejecutar(cmd);
                MessageBox.Show("Se ha eliminado.");
            }
            catch (Exception error)
            {
                MessageBox.Show("Ha ocurrido un error: " + error.Message);
            }
        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            ConsultarClientes ConCli = new ConsultarClientes();
            ConCli.ShowDialog();
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            txtIdCli.Text = "";
            txtCedula.Text = "";
            txtNomCli.Text = "";
            txtTelCli.Text = "";
            txtEmailCli.Text = "";
            txtCatCli.Text = "";
            txtIdCli.Focus();
        }
    }
}
