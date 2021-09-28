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
    public partial class MantenimientoProveedores : Mantenimiento
    {
        public MantenimientoProveedores()
        {
            InitializeComponent();
        }

        public override Boolean Guardar()
        {
            if (Utilidades.ValidarFormulario(this, errorProvider1) == false)
            {
                try
                {
                    string cmd = string.Format("EXEC ActualizaProvedores '{0}','{1}','{2}','{3}','{4}'", txtIdProve.Text.Trim(), txtRNC.Text.Trim(), txtNomProve.Text.Trim(), txtTelProve.Text.Trim(), txtEmailProve.Text.Trim());
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
                string cmd = string.Format("EXEC EliminarProveedores '{0}'", txtIdProve.Text.Trim());
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
            ConsultarProveedor ConProve = new ConsultarProveedor();
            ConProve.ShowDialog();
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            txtIdProve.Text = "";
            txtRNC.Text = "";
            txtNomProve.Text = "";
            txtTelProve.Text = "";
            txtEmailProve.Text = "";
            txtIdProve.Focus();
        }
    }
}
