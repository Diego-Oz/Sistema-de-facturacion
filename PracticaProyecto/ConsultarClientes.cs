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
    public partial class ConsultarClientes : Consultas
    {
        public ConsultarClientes()
        {
            InitializeComponent();
        }

        private void ConsultarClientes_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = LlenarDataGV("Clientes").Tables[0];
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(textBox1.Text.Trim()) == false)
            {
                try
                {
                    DataSet ds;

                    string cmd = "Select * From Clientes Where Nom_cli Like ('%" + textBox1.Text.Trim() + "%') ";
                    
                    ds = Utilidades.Ejecutar(cmd);

                    dataGridView1.DataSource = ds.Tables[0];

                }
                catch(Exception error)
                {
                    MessageBox.Show("Ha ocurrido un error " + error.Message);
                }
            }
        }
    }
}
