using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Text.RegularExpressions;


namespace FileManipulation
{
    public class FilePathInfo
    {
        private int intFileExt = 0;
        private string strFileExt = "";
        private int intLastFilePathDevider = 0;
        private string strFileName = "";

        public FilePathInfo(string FullFileName)
        {
            intFileExt = FullFileName.LastIndexOf(".") + 1; //+ 1 to remove the .
            strFileExt = FullFileName.Substring(intFileExt);
            if (FullFileName.LastIndexOf("\\")!=0)
                intLastFilePathDevider = FullFileName.LastIndexOf("\\") + 1; //+ 1 To remove the \
            else if (FullFileName.LastIndexOf("//") != 0)
                intLastFilePathDevider = FullFileName.LastIndexOf("/") + 1; //+ 1 to remove the /
            else //There are no sub directories
                intLastFilePathDevider = 0;
            strFileName = FullFileName.Substring(intLastFilePathDevider);
        }

        public string FileExtention { get { return strFileExt; } }
        public string FileName { get { return strFileName; } }
    }
}
