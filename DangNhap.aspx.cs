using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    LopXLDuLieu xl = new LopXLDuLieu();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string[] vals = new string[]{
                txtUser.Text,
                txtPass.Text           
            };
        string[] parar = new string[]{
                "@TEN_DN",
                "@MAT_KHAU"
            };
        DataTable ds = xl.docNhieuDL("TAIKHOAN", vals, parar);
        {
            Session["taikhoan"] = txtUser.Text;
            Response.Redirect("ViewDestinations.aspx");
        }

        
    }
}