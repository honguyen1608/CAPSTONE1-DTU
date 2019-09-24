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
        string[] vals = new string[] {};
        string[] para = new string[] { };
        DataList1.DataSource = xl.docNhieuDL("dsDiaDiem", vals, para);
        DataList1.DataBind();
    }
}