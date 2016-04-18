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

public partial class Download : System.Web.UI.Page
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
        string SelectName = ListBox1.SelectedItem.Value;
        string saveFileName = ListBox1.SelectedItem.Text;
        FileInfo finfo = new FileInfo(SelectName);
        //清空输出流
        Response.Clear();
        Response.Charset = "utf-8";//?
        Response.Buffer = true;
        //关闭ViewState提高速度
        this.EnableViewState = false;
        //定义输出文件编码、类型和文件名
        Response.ContentEncoding = System.Text.Encoding.UTF8;
        Response.AppendHeader("Content-Disposition", "attachment; filename=\"" + Server.UrlEncode(saveFileName) + "\""); 
        Response.ContentType = "application/unknown"; 
        Response.WriteFile(SelectName);
        //清空并关闭输出流
        Response.Flush();
        Response.Close();
        Response.End();
    }
}
