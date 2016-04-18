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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    // 判断学生用户登录是否成功
    protected void btn1_Click(object sender, EventArgs e)
    {
        try
        {
            database db = new database();
            string sqlstr = @"select UserPower,UserName,Useradmire from Users where UserID='" + this.name.Value + "' and UserPwd='" + this.pwd.Value + "'";
            SqlDataReader read = db.GetDataReadBySQL(sqlstr);
            if( read.Read())
            {
                if (read["UserPower"].ToString().Trim() == "学生")
                {
                    if (read["Useradmire"].ToString().Trim() == "1")
                    {
                        Session["studentID"] = this.name.Value;
                        Session["studentName"] = read["UserName"].ToString();
                        read.Close();
                        Response.Redirect("Student.aspx");
                    }
                    else{
                        Response.Redirect("Student2.aspx");
                    }
                }
                if (read["UserPower"].ToString().Trim() == "老师")
                {
                    if (read["Useradmire"].ToString().Trim() == "1")
                    {
                        Session["teacherID"] = this.name.Value;
                        Session["teacherName"] = read["UserName"].ToString();
                        read.Close();
                        Response.Redirect("Teacher.aspx");
                    }
                    else
                    {
                        Response.Redirect("Teacher2.aspx");
                    }
                }
                if (read["UserPower"].ToString().Trim() == "管理员")
                {
                    Session["teacherID"] = this.name.Value;
                    Session["teacherName"] = read["UserName"].ToString();
                    read.Close();
                    Response.Redirect("Admin.aspx");
                }
            }
            else Response.Write("<script>alert('登录失败！')</script>");
            
        }
        catch (Exception t)
        {
            Response.Write("<script>alert('出现异常:" + t.Message + "')</script>");
        }
    }

   
}
