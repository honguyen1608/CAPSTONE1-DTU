using System;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
/// <summary>
/// Summary description for LopXLDuLieu
/// </summary>
public class LopXLDuLieu
{
    public LopXLDuLieu()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private SqlConnection ketnoi()
    {
        SqlConnection coon = new SqlConnection(@"Data Source=PC\SQLEXPRESS;Initial Catalog=DataChatbotTravelService;Integrated Security=True");
        try
        {
            coon.Open();
        }catch(SqlException)
        {
            return null;
        }
        return coon;
    }

    public int xuly(string stored,string[] vars, string[] pars)
    {
        SqlConnection con = ketnoi();
        SqlCommand comm = new SqlCommand(stored, con);
        for (int i = 0; i < vars.Length; i++)
            comm.Parameters.Add(new SqlParameter(pars[i],vars[i]));
        comm.CommandType = CommandType.StoredProcedure;
        return comm.ExecuteNonQuery();
    }

    public DataTable docNhieuDL(string stored,string[] vars,string[] pars)
    {
        SqlConnection con = ketnoi();
        SqlCommand comm = new SqlCommand(stored, ketnoi());
        SqlDataAdapter ada = new SqlDataAdapter(comm);
        DataTable ds = new DataTable();
        for (int i = 0; i < vars.Length; i++)
            comm.Parameters.Add(new SqlParameter(pars[i], vars[i]));
        comm.CommandType = CommandType.StoredProcedure;
        ada.Fill(ds);
        return ds;
    }
}