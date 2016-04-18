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
public partial class MsgBoard : System.Web.UI.Page
{
    public string strConnection = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["jrjConnectionString"].ConnectionString;

    protected override void OnLoad(EventArgs e)
    {
        SqlDataSource1.ConnectionString = strConnection;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strName = this.tbName.Text;
        string strSubject = this.tbSubject.Text;
        string strMsg = this.tbMsg.Text;
        string strDate = System.DateTime.Now.ToString();
        DbProviderFactory dbproviderFactory=DbProviderFactories.GetFactory("System.Data.SqlClient");
        DbConnection dbConnection = dbproviderFactory.CreateConnection();
        dbConnection.ConnectionString = strConnection;
        dbConnection.Open();
        DbCommand dbCommand = dbproviderFactory.CreateCommand();
        dbCommand.Connection = dbConnection;
        //
        dbCommand.CommandText = "INSERT INTO Message(UserName,MessageSubject,MessageContent,MessageTime) VALUES('";
        dbCommand.CommandText += strName + "','" + strSubject + "','" + strMsg + "','" + strDate +"');";
        dbCommand.ExecuteNonQuery();
        dbConnection.Close();
        dbConnection.Dispose();
        Response.Redirect("MsgBoard.aspx");
    }
}
