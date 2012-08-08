using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bootstrap
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";


            System.Text.StringBuilder strValues = new System.Text.StringBuilder();

            strValues.Append("[");

            strValues.Append("{");
            strValues.Append("\"id\":\"cust\",");
            strValues.Append("\"label\":\"custName\"");
            strValues.Append("}");
            strValues.Append("]");
            context.Response.ContentType = "application/json";
            context.Response.ContentEncoding = System.Text.Encoding.UTF8;
            context.Response.Write(strValues.ToString());
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}