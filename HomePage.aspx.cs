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
        string[] vals = new string[] { };
        string[] para = new string[] { };
        DataList1.DataSource = xl.docNhieuDL("Pr_dsDiaDiemHot", vals, para);
        DataList1.DataBind();
        Repeater1.DataSource = xl.docNhieuDL("Pr_EventHot", vals, para);
        Repeater1.DataBind();
        DataList2.DataSource = xl.docNhieuDL("Pr_Event", vals, para);
        DataList2.DataBind();

    }
}