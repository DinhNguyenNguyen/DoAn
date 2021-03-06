using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Web.UI.WebControls;

namespace QuanLyThuVien.From
{
    public partial class frmTraSach : DevExpress.XtraEditors.XtraForm
    {
        public frmTraSach()
        {
            InitializeComponent();
        }

        connection con = new connection();
        public static string MAPM;
        public static string TENDG;
        public static string MADG;


        string sqlDG = "select  DISTINCT docgia.MADG as[Mã độc giả] , HOTEN as [Họ và tên], NAMSINH [Năm sinh],GIOITINH [Giới tính] ," +
                       "DIACHI [Địa chỉ], SDT [Số điện thoại], EMAIL as[Email] from docgia, phieumuon where DOCGIA.MADG= PHIEUMUON.MADG and phieumuon.trangthai=N'Đang mượn'";

        string sqlPM = "select MAPM [Mã phiếu mượn], MANV [Mã nhân viên],d.MADG [Mã độc giả], d.Hoten [Tên độc giả], NGAYMUON [Ngày mượn], SOLUONG [Số lượng], " +
                       "TRANGTHAI [Trạng thái] from PHIEUMUON p , DOCGIA d where p.trangthai !=N'Đã trả' and d.MADG= p.MADG";

        string sqlCTPM = "select  s.MASACH as [Mã sách], s.TENSACH as [Tên sách],n.TENNXB as[Tên nhà xuất bản],s.NAMXB as[Năm xuất bản], " +
                         "p.NGAYMUON as[Ngày mượn], c.HENTRA as[Hẹn trả], c.SOLUONG as[Số lượng], c.TRANGTHAI as[Trạng thái], c.mapm as[Mã phiếu mượn] from DOCGIA d, " +
                         "PHIEUMUON p,CTPM c, SACH s, NXB n where d.MADG= p.MADG and p.MAPM= c.MAPM and s.MANXB= n.MANXB and s.MASACH= c.MASACH and c.TRANGTHAI!=N'Đã trả'";

        #region load
        private void FullLoad()
        {
           // loadCTPM();
            loadDocGia();
            loadPhieuMuon();
            
        }

        private void TrangThai()
        {
            DataTable dt = con.readData(sqlCTPM);
            DateTime now = DateTime.Parse(DateTime.Now.ToShortDateString());
            foreach (DataRow dr in dt.Rows) // check quá hạn
            {              
                DateTime hentra = DateTime.Parse(dr["Hẹn trả"].ToString());
                string trangthai = dr["Trạng thái"].ToString();

                TimeSpan time = now - hentra;

                int songay = time.Days;

                if (songay>0 && trangthai != "Đã trả")
                {
                    string sql = string.Format("update CTPM set trangthai=N'{0}' where masach='{1}' and mapm='{2}'", "Quá hạn", dr["Mã sách"], dr["Mã phiếu mượn"]);
                    con.exeData(sql);
                    //textBox1.Text = sql;
                }
                
               // loadCTPM();
            }
            //foreach( DataGridViewRow row in dt.Rows)
            //{
            //    if (row.Cells[7].ToString()=="Quá hạn")
            //    {
            //        row.DefaultCellStyle.BackColor = Color.Red;
            //    }
            //}
        }

        public void loadPhieuMuon()
        {
            DataTable dt = con.readData(sqlPM);
            if (dt != null)
            {
                gcPM.DataSource = dt;
            }
        }

        public void loadCTPM()
        {
            DataTable dt = con.readData(sqlCTPM);
            if (dt != null)
            {
                gcCTPM.DataSource = dt;
            }
           
        }

        public void loadDocGia()
        {
            DataTable dt = con.readData(sqlDG);
            if (dt != null)
            {
                gcDocGiaa.DataSource = dt;
            }
        }

        private void frmInfoTPhieuMuon_Load(object sender, EventArgs e)
        {
            FullLoad();
            TrangThai();
        }

        #endregion

        private void ShowCTPMonClickPM(string mapm)
        {
            string sqlload = string.Format("select s.MASACH as [Mã sách], s.TENSACH as [Tên sách],n.TENNXB as[Tên nhà xuất bản],s.NAMXB as[Năm xuất bản], " +
                " p.NGAYMUON as[Ngày mượn], c.HENTRA as[Hẹn trả], c.SOLUONG as[Số lượng], c.TRANGTHAI as[Trạng thái], p.MaPM as [Mã phiếu mượn] from DOCGIA d, PHIEUMUON p,CTPM c, " +
                "SACH s, NXB n where d.MADG= p.MADG and p.MAPM= c.MAPM and s.MANXB= n.MANXB and s.MASACH= c.MASACH and p.MAPM='{0}'", mapm);
            DataTable dt = con.readData(sqlload);
            if (dt != null)
            {
                gcCTPM.DataSource = dt;
            }
        }

        private void ShowDGonClickPM(string madg)
        {
            string sqlload = string.Format("select DISTINCT MADG as [Mã độc giả],HOTEN as [Họ và tên], NAMSINH as [Năm sinh],GIOITINH as [Giới tính]," +
                "DIACHI as [Địa chỉ],SDT as [Số điện thoại],Email from DOCGIA where MADG='{0}'", madg);
            DataTable dt = con.readData(sqlload);
            if (dt != null)
            {
                gcDocGiaa.DataSource = dt;
            }
        }

        private void gvPM_RowClick(object sender, DevExpress.XtraGrid.Views.Grid.RowClickEventArgs e)
        {
            int row_index = gvPM.FocusedRowHandle;
            string dg = gvPM.GetRowCellValue(row_index, gvPM.Columns[0].ToString()).ToString();
            string dg1 = gvPM.GetRowCellValue(row_index, gvPM.Columns[2].ToString()).ToString();
            if (dg != null)
            {
                ShowCTPMonClickPM(dg);
                ShowDGonClickPM(dg1);
            }           
        }

        #region double load

        private void gvPM_DoubleClick(object sender, EventArgs e)
        {
            FullLoad();
        }

        private void gvDocGia_DoubleClick(object sender, EventArgs e)
        {
            FullLoad();
        }

        private void gcPM_DoubleClick(object sender, EventArgs e)
        {
            FullLoad();
        }
        #endregion
        
        

        private void btnGiaHan_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            int row_index = gvCTPM.FocusedRowHandle;
            string masach = gvCTPM.GetRowCellValue(row_index, "Mã sách").ToString();
            string trangthai = gvCTPM.GetRowCellValue(row_index, "Trạng thái").ToString();

            DateTime ngaymuon = DateTime.Parse(gvCTPM.GetRowCellValue(row_index, "Ngày mượn").ToString());
            DateTime hantra = DateTime.Parse(gvCTPM.GetRowCellValue(row_index, "Hẹn trả").ToString());


            TimeSpan time = hantra-ngaymuon;
            string sqlTraSach = string.Format("update ctpm set hentra='{0}', trangthai=N'{1}' where masach='{2}'", hantra.AddDays(7).ToString("MM/dd/yyy"),"Đang mượn", masach);
            
            if (trangthai=="Quá hạn")
            {
               
                if (int.Parse(time.Days.ToString()) <= 14)
                {
                    if (con.exeData(sqlTraSach))
                    {
                        XtraMessageBox.Show("Baạn đã gia hạn sách đến ngày "+ hantra.ToString("dd/MM/yyyy"),"Thông báo");                       
                        loadCTPM();
                    }
                }
                else
                {
                    XtraMessageBox.Show("Bạn không thể gia hạn sách này", "Thông báo");
                    btnGiaHan.ReadOnly = true;
                }
            }
            else
            {
                XtraMessageBox.Show("Bạn không thể gia hạn sách này", "Thông báo");
                btnGiaHan.ReadOnly = true;
            }
        }

        private void btnTraSach_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            int row_index = gvCTPM.FocusedRowHandle;
            string masach = gvCTPM.GetRowCellValue(row_index, "Mã sách").ToString();
            string mapm = gvCTPM.GetRowCellValue(row_index, "Mã phiếu mượn").ToString();
            string trangthai = gvCTPM.GetRowCellValue(row_index, "Trạng thái").ToString();

            string sqlTraSach = string.Format("update ctpm set trangthai=N'{0}' where masach='{1}' and mapm='{2}'", "Đã trả", masach, mapm);
            string sqlSLSach = string.Format("update sach set soluong=soluong+{0} where masach='{1}'", 1, masach);

            if (trangthai != "Đã trả")
            {
                if (XtraMessageBox.Show("Bạn có chắc chọn đúng sách không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    con.exeData(sqlTraSach);
                    con.exeData(sqlSLSach);
                    ShowCTPMonClickPM(mapm);
                    loadCTPM();
                }
            }
            else
            {
                btnTraSach.ReadOnly = true;
                XtraMessageBox.Show("Sách đã trả", "Thông báo");
            }
            int index = gvPM.FocusedRowHandle;
            string dtmaPM = gvPM.GetRowCellValue(index, "Mã phiếu mượn").ToString();
            string dtctpm = string.Format("select * from CTPM   where mapm='{0}'", dtmaPM);
            DataTable dt = con.readData(dtctpm);

            string sqlUttPM = string.Format("update phieumuon set trangthai=N'{0}' where mapm='{1}' ", "Đã trả", dtmaPM);
            int dem = 0;
            foreach (DataRow dr in dt.Rows)
            {             
                if (dr["trangthai"].ToString()=="Đang mượn" && dr["MaPM"].ToString()==mapm)
                {
                    dem += 1;                    
                }
            }
            if (dem <= 0)
            {
                con.exeData(sqlUttPM);
            }
            loadPhieuMuon();
            ShowCTPMonClickPM(dtctpm);
            //loadCTPM();
        }

        private bool kiemtra()
        {
            DataTable dt = con.readData(sqlCTPM);
            foreach (DataRow dr in dt.Rows) 
            {
                if (dr["Trạng thái"].Equals("Đã trả"))
                {
                    btnTraSach.ReadOnly = true;
                    return true;
                }
                
            }
            return false;
        }

        private void btnTraFull_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            int row_index = gvPM.FocusedRowHandle;
            string mapm = gvPM.GetRowCellValue(row_index, "Mã phiếu mượn").ToString();
            string trangthai = gvPM.GetRowCellValue(row_index, "Trạng thái").ToString();
            string sqlload = string.Format("select s.MASACH as [Mã sách], s.TENSACH as [Tên sách],n.TENNXB as[Tên nhà xuất bản],s.NAMXB as[Năm xuất bản], " +
                        " p.NGAYMUON as[Ngày mượn], c.HENTRA as[Hẹn trả], c.SOLUONG as[Số lượng], c.TRANGTHAI as[Trạng thái] from DOCGIA d, PHIEUMUON p,CTPM c, " +
                        "SACH s, NXB n where d.MADG= p.MADG and p.MAPM= c.MAPM and s.MANXB= n.MANXB and s.MASACH= c.MASACH and p.MAPM='{0}' and c.trangthai!=N'Đã trả'", mapm);
            DataTable dt = con.readData(sqlload);
            
            if(trangthai.Equals("Đang mượn"))
            {
                string uPM = string.Format("update PHIEUMUON set trangthai=N'{0}' where mapm='{1}'", "Đã trả", mapm);
                foreach (DataRow dr in dt.Rows)
                {
                    string upCTPM = string.Format("update CTPM set trangthai=N'{0}' where mapm='{1}' and masach='{2}'", "Đã trả", mapm, dr["Mã sách"]);
                    string upSSL = string.Format("update Sach set soluong=soluong+{0} where masach='{1}'", dr["Số lượng"], dr["Mã sách"]);
                    con.exeData(upSSL);
                    con.exeData(upCTPM);
                }
                if (XtraMessageBox.Show("Bạn có chắc chọn đúng sách không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    if (con.exeData(uPM))
                    {
                        XtraMessageBox.Show("Trả sách thành công","Thông báo");
                        loadCTPM();
                        loadPhieuMuon();
                    }
                    else
                    {
                        XtraMessageBox.Show("Trả sách thất bại","Thông báo");
                    }
                   
                }
            }
            else
            {
                XtraMessageBox.Show("Thất bại","Thông báo");
            }
            
          
        }
        

        private void gvCTPM_RowStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowStyleEventArgs e)
        {
            int row_index = gvPM.FocusedRowHandle;
            MAPM = gvPM.GetRowCellValue(row_index, "Mã phiếu mượn").ToString();
            MADG= gvPM.GetRowCellValue(row_index, "Mã độc giả").ToString();
            //DataTable dt = con.readData(sqlCTPM);

            //foreach (DataGridViewRow row in dt.Rows)
            //{
            //    if (row.Cells[7].ToString() == "Quá hạn")
            //    {
            //        row.DefaultCellStyle.BackColor = Color.Red;
            //    }
            //

        }

        private void btnPhat_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            int row_index = gvPM.FocusedRowHandle;
            MAPM = gvPM.GetRowCellValue(row_index, "Mã phiếu mượn").ToString();
            TENDG = gvPM.GetRowCellValue(row_index, "Tên độc giả").ToString();
            MADG = gvPM.GetRowCellValue(row_index, "Mã độc giả").ToString();

            
            frmViPham frm = new frmViPham();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                //DataRow row = dtSachMuon.NewRow();
                //row["MASACH"] = gvSach.GetRowCellValue(row_index, "MASACH").ToString();
                //row["TENSACH"] = gvSach.GetRowCellValue(row_index, "TENSACH").ToString();
                //row["TACGIA"] = gvSach.GetRowCellValue(row_index, "TACGIA").ToString();
                //row["NGAYMUON"] = DateTime.Now.ToString("dd/MM/yyyy");
                //row["HENTRA"] = Convert.ToDateTime(frmDatePitker.date).ToString("dd/MM/yyyy");
                //row["SoLuong"] = 1;
                //dtSachMuon.Rows.Add(row);
                //loadSachMuon();
            }
        }
    }
}