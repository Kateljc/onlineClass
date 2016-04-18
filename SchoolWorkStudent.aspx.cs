using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Data.Common;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class SchoolWorkStudent : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
  
       
        string strTitle = this.tbTitle.Text;
        string strContent = this.tbContent.Text;
        string strComment = this.tbComment.Text;
        string strDate = System.DateTime.Now.ToString();
        //
        string strConnection = @"Data Source=CSU-16289143E90\SQLEXPRESS;Initial Catalog=jrj;Integrated Security=True";
        DbProviderFactory dbproviderFactory = DbProviderFactories.GetFactory("System.Data.SqlClient");
        DbConnection dbConnection = dbproviderFactory.CreateConnection();
        dbConnection.ConnectionString = strConnection;
        dbConnection.Open();
        DbCommand dbCommand = dbproviderFactory.CreateCommand();
        dbCommand.Connection = dbConnection;
        //
        dbCommand.CommandText = "INSERT INTO SchoolWorkSubmit(SWSubmitID,SWSubmitName,SWSubmitTitle,SWSubmitContent,SWSubmitDate,TeacherComment) VALUES('";
        dbCommand.CommandText += strTitle + "','" + strContent + "','" + strDate + "','" + strComment + "');";
        dbCommand.ExecuteNonQuery();
        dbConnection.Close();
        dbConnection.Dispose();
        Response.Redirect("SchoolWorkStudent.aspx");
    }
}
