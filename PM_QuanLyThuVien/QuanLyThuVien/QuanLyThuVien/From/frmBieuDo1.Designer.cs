﻿namespace QuanLyThuVien.From
{
    partial class frmBieuDo1
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
            this.tablePanel1 = new DevExpress.Utils.Layout.TablePanel();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.btnTao = new DevExpress.XtraEditors.SimpleButton();
            this.dtpE = new DevExpress.XtraEditors.DateEdit();
            this.dtpS = new DevExpress.XtraEditors.DateEdit();
            this.chartControl1 = new DevExpress.XtraCharts.ChartControl();
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).BeginInit();
            this.tablePanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtpE.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtpE.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtpS.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtpS.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chartControl1)).BeginInit();
            this.SuspendLayout();
            // 
            // tablePanel1
            // 
            this.tablePanel1.Columns.AddRange(new DevExpress.Utils.Layout.TablePanelColumn[] {
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 21.25F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 61.7F)});
            this.tablePanel1.Controls.Add(this.groupControl1);
            this.tablePanel1.Controls.Add(this.chartControl1);
            this.tablePanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tablePanel1.Location = new System.Drawing.Point(0, 0);
            this.tablePanel1.Name = "tablePanel1";
            this.tablePanel1.Rows.AddRange(new DevExpress.Utils.Layout.TablePanelRow[] {
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 155F)});
            this.tablePanel1.Size = new System.Drawing.Size(827, 470);
            this.tablePanel1.TabIndex = 0;
            // 
            // groupControl1
            // 
            this.tablePanel1.SetColumn(this.groupControl1, 0);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Controls.Add(this.btnTao);
            this.groupControl1.Controls.Add(this.dtpE);
            this.groupControl1.Controls.Add(this.dtpS);
            this.groupControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl1.Location = new System.Drawing.Point(3, 3);
            this.groupControl1.Name = "groupControl1";
            this.tablePanel1.SetRow(this.groupControl1, 0);
            this.groupControl1.Size = new System.Drawing.Size(206, 464);
            this.groupControl1.TabIndex = 1;
            this.groupControl1.Text = "groupControl1";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(33, 46);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(63, 13);
            this.labelControl1.TabIndex = 2;
            this.labelControl1.Text = "labelControl1";
            // 
            // btnTao
            // 
            this.btnTao.Location = new System.Drawing.Point(57, 394);
            this.btnTao.Name = "btnTao";
            this.btnTao.Size = new System.Drawing.Size(75, 23);
            this.btnTao.TabIndex = 0;
            this.btnTao.Text = "Tạo biểu đồ";
            this.btnTao.Click += new System.EventHandler(this.btnTao_Click);
            // 
            // dtpE
            // 
            this.dtpE.EditValue = null;
            this.dtpE.Location = new System.Drawing.Point(33, 107);
            this.dtpE.Name = "dtpE";
            this.dtpE.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dtpE.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dtpE.Properties.DisplayFormat.FormatString = "dd/MM/yyyy";
            this.dtpE.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dtpE.Properties.EditFormat.FormatString = "";
            this.dtpE.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dtpE.Properties.Mask.EditMask = "";
            this.dtpE.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.None;
            this.dtpE.Size = new System.Drawing.Size(100, 20);
            this.dtpE.TabIndex = 1;
            // 
            // dtpS
            // 
            this.dtpS.EditValue = null;
            this.dtpS.Location = new System.Drawing.Point(33, 74);
            this.dtpS.Name = "dtpS";
            this.dtpS.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dtpS.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dtpS.Properties.CalendarTimeProperties.DisplayFormat.FormatString = "MM/dd/yyyy";
            this.dtpS.Properties.CalendarTimeProperties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dtpS.Properties.DisplayFormat.FormatString = "dd/MM/yyyy";
            this.dtpS.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dtpS.Properties.EditFormat.FormatString = "";
            this.dtpS.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.dtpS.Properties.Mask.EditMask = "";
            this.dtpS.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.None;
            this.dtpS.Size = new System.Drawing.Size(100, 20);
            this.dtpS.TabIndex = 1;
            // 
            // chartControl1
            // 
            this.tablePanel1.SetColumn(this.chartControl1, 1);
            this.chartControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chartControl1.Legend.Name = "Default Legend";
            this.chartControl1.Location = new System.Drawing.Point(215, 3);
            this.chartControl1.Name = "chartControl1";
            this.tablePanel1.SetRow(this.chartControl1, 0);
            this.chartControl1.SeriesSerializable = new DevExpress.XtraCharts.Series[0];
            this.chartControl1.Size = new System.Drawing.Size(609, 464);
            this.chartControl1.TabIndex = 0;
            // 
            // frmBieuDo1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(827, 470);
            this.Controls.Add(this.tablePanel1);
            this.Name = "frmBieuDo1";
            this.Text = "frmBieuDo1";
            this.Load += new System.EventHandler(this.frmBieuDo1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).EndInit();
            this.tablePanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtpE.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtpE.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtpS.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtpS.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chartControl1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.Utils.Layout.TablePanel tablePanel1;
        private DevExpress.XtraCharts.ChartControl chartControl1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SimpleButton btnTao;
        private DevExpress.XtraEditors.DateEdit dtpE;
        private DevExpress.XtraEditors.DateEdit dtpS;
    }
}