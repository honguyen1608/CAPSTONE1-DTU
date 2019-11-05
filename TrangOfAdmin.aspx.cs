using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Dulich
{
    public partial class TrangOfAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        XulyDL xl = new XulyDL();
        protected void btnThem_Click(object sender, EventArgs e)
        {
            String tenFile = Guid.NewGuid() + Path.GetExtension(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("/Images/") + tenFile);
            String[] vals = new string[]
            {
                txtIDDiadiem.Text,
                txtDiadiem.Text,
                tenFile,
                txtMota.Text,
                txtChitiet.Text,
                txtIDmien.Text,
                txtGhichu.Text
                };
            String[] pars = new string[]
               {
                   "@ID_DIA_DIEM",
            "@TEN_DIA_DIEM",
            "@HINH_ANH_DIA_DIEM",
            "@MO_TA",
            "@CHI_TIET",
            "@ID_MIEN",
            "@GHI_CHU"};
            int dt = xl.xuLyStored("addDiadiem", vals, pars);
            if (dt == 1)
            {
                lblThongbao.Text = "Thêm thanh cong";
            }
            else
            {
                lblThongbao.Text = "That bai";
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCNSuKien.aspx");
        }

        /* protected void btnKNSukien_Click(object sender, EventArgs e)
         {
             Response.Redirect("AdminCNSuKien.aspx");
         }*/
    }
}