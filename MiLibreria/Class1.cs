using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MiLibreria
{

    public class Utilidades
    {
        //Para conectarme a la BD y con esta instrucción solo llamarla
        public static DataSet Ejecutar(string cmd)
        {
            SqlConnection Con = new SqlConnection("Data Source=localhost\\SQLEXPRESS; Initial Catalog=Administracion; Integrated Security=true");
            Con.Open();

            DataSet DS = new DataSet();
            SqlDataAdapter DP = new SqlDataAdapter(cmd, Con);

            //Para rellenar el DataSet
            DP.Fill(DS);

            Con.Close();

            return DS;
        }

        public static Boolean ValidarFormulario(Control Objeto, ErrorProvider ErrorProvider)
        {
            Boolean HayErrores = false;

            foreach (Control Item in Objeto.Controls)
            {
                if (Item is ErrorTxtBox)
                {
                    ErrorTxtBox Obj = (ErrorTxtBox)Item;

                    if (Obj.Validar == true)
                    {
                        if (string.IsNullOrEmpty(Obj.Text.Trim()))
                        {
                            ErrorProvider.SetError(Obj, "No puede estar vacio");
                            HayErrores = true;
                        }
                    }
                    else
                    {
                        ErrorProvider.SetError(Obj, "");
                    }
                }
            }

            return HayErrores;
        }
       
    }
}
