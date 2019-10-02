using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    LopXLDuLieu xl = new LopXLDuLieu();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        if (txtPass.Text != txtRePass.Text)
        {
            lblThongBao2.Text = "Mật khẩu không trùng khớp";
        }
        else
        {
            string[] values = new string[]{
                    txtUser.Text
                };
            string[] param = new string[]{
                    "@TEN_DN"
                };
            DataTable ds = xl.docNhieuDL("Pr_ktTEN_DN", values, param);
            if (ds.Rows.Count == 1)
            {
                lblThongBao1.Text = "Tên tài khoản đã tồn tại!";
            }
            else
            {
                string[] vals = new string[]{
                        txtUser.Text,
                        txtPass.Text
                    };
                string[] para = new string[]{
                        "@TEN_DN",
                        "@MAT_KHAU"
                    };
                int dt = xl.xuly("Pr_Register", vals, para);
                if (dt == 1)
                {
                    lblThongBao.Text = "Đăng ký tài khoản thành công!";
                    Response.Redirect("Login.aspx");
                }
                else
                    lblThongBao.Text = "Lỗi tài khoản hoặc mật khẩu!";
            }
        }
    }
}