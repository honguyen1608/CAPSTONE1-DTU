using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    LopXLDuLieu xl = new LopXLDuLieu();
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] vals = new string[] { Request.QueryString["id"] };
        string[] para = new string[] { "ID_SU_KIEN" };
        Repeater1.DataSource = xl.docNhieuDL("Pr_Chitietsukien", vals, para);
        Repeater1.DataBind();
    }
}