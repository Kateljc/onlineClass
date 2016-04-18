using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// database 的摘要说明
/// </summary>
public class database
{
    SqlConnection con=new SqlConnection();
	public database()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//

	}
    //打开数据库连接
    public void Open()
    {
        if (con.State == ConnectionState.Open)
            con.Close();
        con.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["jrjConnectionString"].ConnectionString;
        con.Open();
    }

    private SqlCommand CreateCommand(string ProcName,SqlParameter[] Para)
    {
        try
        {
            Open();
            SqlCommand cmd = new SqlCommand(ProcName, con);
            cmd.CommandType = CommandType.StoredProcedure;
            if (Para != null)
            {
                foreach (SqlParameter par in Para)
                    cmd.Parameters.Add(par);
            }
            return cmd;
        }
        catch (Exception t)
        {
            throw (t);
        }
    }
    //执行存储过程
    public int RunProc(string ProcName, SqlParameter[] Para)
    {
        try
        {
            int count = -1;
            SqlCommand cmd = CreateCommand(ProcName, Para);
            count = cmd.ExecuteNonQuery();
            Close();
            return count;
        }
        catch (Exception t)
        {
            throw (t);
        }
    }
    //执行存储过程，返回reader
    public SqlDataReader RunProcGetReader(string  ProcName,SqlParameter[] para)
    {
        try
        {
            SqlCommand cmd = CreateCommand(ProcName, para);
            return cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        }
        catch (Exception t)
        {
            throw (t);
        }
    }
    //执行存储过程，返回dataset
    public DataSet GetDataSet(String ProcName,SqlParameter[] Para)
    {
        try
        {
            SqlCommand cmd = CreateCommand(ProcName, Para);
            SqlDataAdapter adapt = new SqlDataAdapter(cmd);
            DataSet dataset = new DataSet();
            adapt.Fill(dataset);
            Close();
            return dataset;
        }
        catch (Exception t)
        {
            throw (t);
        }
    }
    //执行sql语句，返回dataset
    public DataSet GetDataSetBySQL(string s)
    {
        try
        {
            Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = s;
            DataSet ds = new DataSet();
            SqlDataAdapter adapt = new SqlDataAdapter(cmd);
            adapt.Fill(ds);
            Close();
            return ds;
        }
        catch (Exception t)
        {
            throw (t);
        }
    }
    //执行sql语句，返回dataread
    public SqlDataReader GetDataReadBySQL(string s)
    {
        try
        {
            Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = s;
            return cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        }
        catch (Exception t)
        {
            throw (t);
        }
    }
    //实例化存储过程中的参数
    public SqlParameter MakeParameter(string ParaName,SqlDbType DbType,Int32 Size,ParameterDirection Dir,object Value)
    {
        try
        {
            SqlParameter param;
            if (Size > 0)
                param = new SqlParameter(ParaName, DbType, Size);
            else param = new SqlParameter(ParaName, Size);
            param.Direction = Dir;
            if (Value != null)
                param.Value = Value;
            return param;
        }
        catch (Exception t)
        {
            throw (t);
        }
    }
    //根据sql语句插入数据，并返回自动生成的id号
    public int GetIDInsertBySQL(string s)
    {
        try
        {
            int id = -1;
            Open();
            SqlCommand cmd = new SqlCommand(s, con);
            id = int.Parse(cmd.ExecuteScalar().ToString().Trim());
            Close();
            return id;
        }
        catch (Exception t)
        {
            throw(t);
        }
    }
    //根据Sql语句插入数据
    public int InsertBySQL(string s)
    {
        try
        {
            int count = -1;
            Open();
            SqlCommand cmd = new SqlCommand(s, con);
            count = cmd.ExecuteNonQuery();
            Close();
            return count;
        }
        catch (Exception t)
        {
            throw (t);
        }
    }
    //执行sql语句，返回整形数
    public int GetInt(string s)
    {
        try
        {
            int count = -1;
            Open();
            SqlCommand cmd = new SqlCommand(s, con);
            count = int.Parse(cmd.ExecuteScalar().ToString().Trim());
            Close();
            return count;
        }
        catch (Exception t)
        {
            throw (t);
        }
    }

    //执行sql语句
    public int RunSql(string s)
    {
        try
        {
            int count = -1;
            Open();
            SqlCommand cmd = new SqlCommand(s, con);
            count = cmd.ExecuteNonQuery();
            Close();
            return count;
        }
        catch (Exception t)
        {
            throw (t);
        }
    }
    //关闭数据库连接
    public void Close()
    {
        con.Close();
    }
}
