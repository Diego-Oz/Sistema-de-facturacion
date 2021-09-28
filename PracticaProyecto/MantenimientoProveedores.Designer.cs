namespace PracticaProyecto
{
    partial class MantenimientoProveedores
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtIdProve = new MiLibreria.ErrorTxtBox();
            this.txtNomProve = new MiLibreria.ErrorTxtBox();
            this.txtRNC = new MiLibreria.ErrorTxtBox();
            this.txtTelProve = new MiLibreria.ErrorTxtBox();
            this.txtEmailProve = new MiLibreria.ErrorTxtBox();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnNuevo
            // 
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // btnConsultar
            // 
            this.btnConsultar.Click += new System.EventHandler(this.btnConsultar_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Georgia", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(26, 166);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(67, 14);
            this.label5.TabIndex = 27;
            this.label5.Text = "Telefono:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Georgia", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(26, 97);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(38, 14);
            this.label6.TabIndex = 26;
            this.label6.Text = "RNC:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Georgia", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(26, 202);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(50, 14);
            this.label3.TabIndex = 25;
            this.label3.Text = "Email:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Georgia", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(26, 131);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(63, 14);
            this.label2.TabIndex = 24;
            this.label2.Text = "Nombre:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Georgia", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(26, 62);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(94, 14);
            this.label1.TabIndex = 23;
            this.label1.Text = "ID Proveedor:";
            // 
            // txtIdProve
            // 
            this.txtIdProve.Location = new System.Drawing.Point(126, 56);
            this.txtIdProve.Name = "txtIdProve";
            this.txtIdProve.Size = new System.Drawing.Size(100, 20);
            this.txtIdProve.TabIndex = 28;
            this.txtIdProve.Validar = false;
            // 
            // txtNomProve
            // 
            this.txtNomProve.Location = new System.Drawing.Point(126, 125);
            this.txtNomProve.Name = "txtNomProve";
            this.txtNomProve.Size = new System.Drawing.Size(100, 20);
            this.txtNomProve.TabIndex = 29;
            this.txtNomProve.Validar = false;
            // 
            // txtRNC
            // 
            this.txtRNC.Location = new System.Drawing.Point(126, 91);
            this.txtRNC.Name = "txtRNC";
            this.txtRNC.Size = new System.Drawing.Size(100, 20);
            this.txtRNC.TabIndex = 30;
            this.txtRNC.Validar = false;
            // 
            // txtTelProve
            // 
            this.txtTelProve.Location = new System.Drawing.Point(126, 160);
            this.txtTelProve.Name = "txtTelProve";
            this.txtTelProve.Size = new System.Drawing.Size(100, 20);
            this.txtTelProve.TabIndex = 31;
            this.txtTelProve.Validar = false;
            // 
            // txtEmailProve
            // 
            this.txtEmailProve.Location = new System.Drawing.Point(126, 196);
            this.txtEmailProve.Name = "txtEmailProve";
            this.txtEmailProve.Size = new System.Drawing.Size(100, 20);
            this.txtEmailProve.TabIndex = 32;
            this.txtEmailProve.Validar = false;
            // 
            // MantenimientoProveedores
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(397, 290);
            this.Controls.Add(this.txtEmailProve);
            this.Controls.Add(this.txtTelProve);
            this.Controls.Add(this.txtRNC);
            this.Controls.Add(this.txtNomProve);
            this.Controls.Add(this.txtIdProve);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "MantenimientoProveedores";
            this.Text = "MantenimientoProveedores";
            this.Controls.SetChildIndex(this.btnSalir, 0);
            this.Controls.SetChildIndex(this.btnNuevo, 0);
            this.Controls.SetChildIndex(this.btnConsultar, 0);
            this.Controls.SetChildIndex(this.btnGuardar, 0);
            this.Controls.SetChildIndex(this.btnEliminar, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.label2, 0);
            this.Controls.SetChildIndex(this.label3, 0);
            this.Controls.SetChildIndex(this.label6, 0);
            this.Controls.SetChildIndex(this.label5, 0);
            this.Controls.SetChildIndex(this.txtIdProve, 0);
            this.Controls.SetChildIndex(this.txtNomProve, 0);
            this.Controls.SetChildIndex(this.txtRNC, 0);
            this.Controls.SetChildIndex(this.txtTelProve, 0);
            this.Controls.SetChildIndex(this.txtEmailProve, 0);
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private MiLibreria.ErrorTxtBox txtIdProve;
        private MiLibreria.ErrorTxtBox txtNomProve;
        private MiLibreria.ErrorTxtBox txtRNC;
        private MiLibreria.ErrorTxtBox txtTelProve;
        private MiLibreria.ErrorTxtBox txtEmailProve;
    }
}