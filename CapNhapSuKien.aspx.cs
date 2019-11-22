using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class CapNhapSuKien : System.Web.UI.Page
{
    LopXLDuLieu xl = new LopXLDuLieu();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        String tenFile = Guid.NewGuid() + Path.GetExtension(FileUpload1.FileName);
        FileUpload1.SaveAs(Server.MapPath("/Images/")+tenFile);
        String[] vals = new string[]
        {
                txtSukien.Text,
                tenFile,
                txtMota.Text,
                txtChitiet.Text,
                txtIDmien.Text
            };
        String[] pars = new string[]
           {

            "@TEN_SU_KIEN",
            "@HINH_ANH_SU_KIEN",
            "@MO_TA",
            "@CHI_TIET",
            "@ID_MIEN"
       };
        int dt = xl.xuly("addSukien", vals, pars);
        if (dt == 1)
        {
            lblThongbao.Text = "Thêm thanh cong";
        }
        else
        {
            lblThongbao.Text = "That bai";
        }
    }

    protected void btnSua_Click(object sender, EventArgs e)
    {
        String tenFile = Guid.NewGuid() + Path.GetExtension(FileUpload1.FileName);
        FileUpload1.SaveAs(Server.MapPath("/Images/") + tenFile);
        String[] vals = new string[]
        {
                txtSukien.Text,
                tenFile,
                txtMota.Text,
                txtChitiet.Text,
                txtIDmien.Text
            };
        String[] pars = new string[]
           {

            "@TEN_SU_KIEN",
            "@HINH_ANH_SU_KIEN",
            "@MO_TA",
            "@CHI_TIET",
            "@ID_MIEN"
       };
        int dt = xl.xuly("addSukien", vals, pars);
        if (dt == 1)
        {
            lblThongbao.Text = "Thêm thanh cong";
        }
        else
        {
            lblThongbao.Text = "That bai";
        }
    }
}