using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    LopXLDuLieu xl = new LopXLDuLieu();
    protected void Page_Load(object sender, EventArgs e)
    {

        //string[] values = new string[] { };
        //string[] para = new string[] { };
        //DataList1.DataSource = xl.docNhieuDL("docTenMien", values, para);
        //DataList1.DataBind();
        //string[] vals = new string[] { };
        //string[] paras = new string[] { };
        //DataList2.DataSource = xl.docNhieuDL("docKhuVuc", vals, paras);
        //DataList2.DataBind();
        //DataList1.DataSource = xl.docNhieuDL("docTenKhuVucTheoMien", values, para);
        //DataList1.DataBind();
        label1.Text = Session["taikhoan"].ToString();
    }

}
