using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace BTLWebForm.Helpers
{
    public class IMGFileUpload
    {
        public IMGFileUpload()
        {
            
        }
        public string UploadFile(FileUpload file, string folder)
        {
            if(file.HasFile)
            {
                string fileName = Path.GetFileName(file.FileName);
                string folderPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "wwwroot","img",folder);
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }
                file.SaveAs(Path.Combine(folderPath, fileName));
                return fileName;
            }
            return null;
        }
        
    }
}