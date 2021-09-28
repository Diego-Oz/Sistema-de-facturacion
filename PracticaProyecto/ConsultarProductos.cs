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
    public partial class ConsultarProductos : Consultas
    {
        public ConsultarProductos()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet ds;

                string cmd = "Select * From Articulo Where Nom_pro Like ('%" + textBox1.Text.Trim() + "%') ";

                ds = Utilidades.Ejecutar(cmd);

                dataGridView1.DataSource = ds.Tables[0];
            }
            catch (Exception error)
            {
                MessageBox.Show("Ha ocurrido un error " + error.Message);
            }
        }

        private void ConsultarProductos_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = LlenarDataGV("Articulo").Tables[0];
        }
    }
}
