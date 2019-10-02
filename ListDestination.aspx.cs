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
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] == null)
                DataList1.DataSource = xl.docNhieuDL("Pr_dsDiaDiem", new string[] { }, new string[] { });
            else
                DataList1.DataSource = xl.docNhieuDL("Pr_dsDiaDiemTheoMien", new string[] { Request.QueryString["id"] },
               new string[] { "@ID_MIEN" });
            DataList1.DataBind();
        }
    }
}