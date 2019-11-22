using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
public partial class CapNhapDiaDiem : System.Web.UI.Page
{
    LopXLDuLieu xl = new LopXLDuLieu();
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] values = new string[] { };
        string[] parameters = new string[] { };
        GridView1.DataSource =
            xl.docNhieuDL("Pr_dsDiaDiem", values, parameters);
        GridView1.DataBind();
    }
    private void loadHangHoa()
    {
        GridView1.DataSource = xl.docNhieuDL("Pr_dsDiaDiem"
            , new string[] { }, new string[] { });
        GridView1.DataBind();
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
         String tenFile = Guid.NewGuid() + Path.GetExtension(FileUpload1.FileName);
         FileUpload1.SaveAs(Server.MapPath("/Images/")+tenFile);
         String[] vals = new string[]
         {
               //  TextBox1.Text,
                 txtDiadiem.Text,
                 tenFile,
                 txtMota.Text,
                 txtChitiet.Text,
                 txtIDmien.Text,
                 txtGhichu.Text
             };
         String[] pars = new string[]
            {

             "@TEN_DIA_DIEM",
             "@HINH_ANH_DIA_DIEM",
             "@MO_TA",
             "@CHI_TIET",
             "@ID_MIEN",
             "@GHI_CHU"};
        int dt = xl.xuly("addDiadiem", vals, pars);
        

        if (dt == 1)
        {
            lblThongbao.Text = "Thêm thành công";
        }
        else
        {
            lblThongbao.Text = "Thêm thất bại";
        }
    }

    protected void btnSua_Click(object sender, EventArgs e)
    {
        String tenFile = Guid.NewGuid() + Path.GetExtension(FileUpload1.FileName);
        FileUpload1.SaveAs(Server.MapPath("/Images/") + tenFile);
        String[] vals = new string[]
        {
              //  TextBox1.Text,
                txtDiadiem.Text,
                tenFile,
                txtMota.Text,
                txtChitiet.Text,
                txtIDmien.Text,
                txtGhichu.Text
            };
        String[] pars = new string[]
           {

            "@TEN_DIA_DIEM",
            "@HINH_ANH_DIA_DIEM",
            "@MO_TA",
            "@CHI_TIET",
            "@ID_MIEN",
            "@GHI_CHU"};
        int dt = xl.xuly("UpdateDiadiem", vals, pars);
        if (dt == 1)
        {
            lblThongbao.Text = "Sửa thành công";
        }
        else
        {
            lblThongbao.Text = "Sửa thất bại";
        }
    }

    protected void btnXoa_Click(object sender, EventArgs e)
    {
        /* String tenFile = Guid.NewGuid() + Path.GetExtension(FileUpload1.FileName);
         FileUpload1.SaveAs(Server.MapPath("/Images/") + tenFile);
         String[] vals = new string[]
         {
               //  TextBox1.Text,
                 txtDiadiem.Text,
                 tenFile,
                 txtMota.Text,
                 txtChitiet.Text,
                 txtIDmien.Text,
                 txtGhichu.Text
             };
         String[] pars = new string[]
            {

             "@TEN_DIA_DIEM",
             "@HINH_ANH_DIA_DIEM",
             "@MO_TA",
             "@CHI_TIET",
             "@ID_MIEN",
             "@GHI_CHU"};
        /* string[] values = new string[]{
             ((Button)sender).CommandArgument
         };
         string[] parameters = new string[]{
             "@ID_DIA_DIEM"
         };
         int dt = xl.xuly("DeleteDiadiem", vals, pars);
         if (dt == 1)
       
         {
             lblThongbao.Text = "Xóa thành công";
         }
         else
         {
             lblThongbao.Text = "Xóa thất bại";
         }*/
        string[] values = new string[]{
            ((Button)sender).CommandArgument
        };
        string[] parameters = new string[]{
            "@ID_DIA_DIEM"
        };

        if (xl.xuly("DeleteDiadiem", values, parameters) == 1)
            lblThongbao.Text = "Cập nhật hàng hóa thành công!";
        else
            lblThongbao.Text = "Cập nhật hàng hóa thất bại!";
        loadHangHoa();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}