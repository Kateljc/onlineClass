using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class DeleUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string directorypath = Server.MapPath("~/UploadFiles/");
        //创建目录对象
        DirectoryInfo dir = new DirectoryInfo(directorypath);
        //获取目录下的所有文件
        FileSystemInfo[] infos = dir.GetFileSystemInfos();
        ListItem myitem;
        //遍历文件集合，将所有的文件用Listbox显示
        foreach (FileSystemInfo myfile in infos)
        {
            myitem = new ListItem();
            myitem.Text = myfile.Name;
            myitem.Value = myfile.FullName;
            ListBox1.Items.Add(myitem);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string SName = ListBox1.SelectedItem.Value;
        FileInfo finfo = new FileInfo(SName);
        finfo.Delete();   
        Response.Redirect("Admin.aspx");

    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
