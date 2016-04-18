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

public partial class Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)   //首次加载时
        {
            DropDownList1.AutoPostBack = true;
            DropDownList1.Items.Add("课件");
            DropDownList1.Items.Add("实验");
            DropDownList1.Items.Add("附件");
        }

        ListBox1.Items.Clear();
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
        Boolean fileOK = false;
        string path = Server.MapPath("~/UploadFiles/");
        if (FileUpload1.HasFile)
        {
            string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            string[] allowedExtensions = { ".txt", ".doc", ".docx", ".pdf", ".ppt", ".jpg", ".bmp", ".xml", ".rar" };
            for (int i = 0; i < allowedExtensions.Length; i++)
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileOK = true;
                }
            }
            //如果文件大于10M，则不允许上传
            if (FileUpload1.PostedFile.ContentLength > 10240000)
            {
                fileOK = false;
            }
            if (fileOK)
            {
                try
                {
                    //将文件保存到指定的文件夹下
                    FileUpload1.PostedFile.SaveAs(path + DropDownList1.SelectedItem.Text + " - " + FileUpload1.FileName);
                    Response.Write("<script>alert('上传成功！')</script>");
                }
                catch
                {
                    Label1.Text = "无法实现文件的上传！";
                }
            }
            else
            {
                Label1.Text = "文件类型不对或文件超出1M！";
            }

        }
        else Response.Write("<script>alert('请选择上传的文件！')</script>");
    }








    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = "你当前选中的是" + DropDownList1.SelectedItem.Text + "，一共有" + DropDownList1.Items.Count.ToString() + "项";
    }
}
