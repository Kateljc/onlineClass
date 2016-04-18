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
public partial class SchoolWorkPublish : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strID = this.TextBoxID.Text;
        string strTitle = this.TextBoxTitle.Text;
        string strContent = this.TextBoxContent.Text;
        string strTime = this.TextBoxTime.Text;
        string strDeadLine = this.TextBoxDeadLine.Text;
        //
        string strConnection = @"Data Source=CSU-16289143E90\SQLEXPRESS;Initial Catalog=jrj;Integrated Security=True";
        DbProviderFactory dbproviderFactory = DbProviderFactories.GetFactory("System.Data.SqlClient");
        DbConnection dbConnection = dbproviderFactory.CreateConnection();
        dbConnection.ConnectionString = strConnection;
        dbConnection.Open();
        DbCommand dbCommand = dbproviderFactory.CreateCommand();
        dbCommand.Connection = dbConnection;
        //
        dbCommand.CommandText = "INSERT INTO SchoolWorkPublish(SchoolWorkID,Title,WorkContent,PublishTime,DeadLine) VALUES('";
        dbCommand.CommandText += strID + "','" + strTitle + "','" + strContent + "','" + strTime + "','" + strDeadLine + "');";
        dbCommand.ExecuteNonQuery();
        dbConnection.Close();
        dbConnection.Dispose();
        
        Label.Text = "作业上传成功！";

    }
}
