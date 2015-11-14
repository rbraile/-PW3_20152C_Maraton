using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

namespace PW3_20152C_Maraton.clases
{
    public class Md5
    {
        private MD5CryptoServiceProvider md5Hasher = new MD5CryptoServiceProvider();
        private MD5 md5Hash = MD5.Create();
        public string GetMd5Hash(string input)
        {
            
            

            byte[] data = this.md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

            StringBuilder sBuilder = new StringBuilder();

            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            return sBuilder.ToString();
        }
    }
}