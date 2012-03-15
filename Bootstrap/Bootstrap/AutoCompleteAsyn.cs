using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Diagnostics;

namespace Bootstrap
{
    public class AutoCompleteAsyn
    {
        public void GetData()
        {
            Debug.WriteLine("GetData()...");
            HttpResponse response = System.Web.HttpContext.Current.Response;
            HttpRequest request = System.Web.HttpContext.Current.Request;
            //string type = request["type"].ToString().ToLower();
            //string words = request["words"].ToString();

            response.Clear();
            response.ContentType = "application/json";
            response.ContentEncoding = Encoding.UTF8;
            response.Write("aa");
            response.End();
        }
    }
}