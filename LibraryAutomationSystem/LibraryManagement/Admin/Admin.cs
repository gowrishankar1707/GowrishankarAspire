/*
 * Class    :   Admin
 * Date     :   16-01-2020
 * Version  :   1.4
 * Author   :   Gowrishankar.N
 * */
using System;
using System.Collections.Generic;


namespace LibraryManagement
{
    class Admin
    {
     internal string adminName;
         internal string adminPassword;
         internal string adminId;
       

      
       public Admin( string id,string Name,string password)
        {
            adminName = Name;
            adminPassword = password;
            adminId = id;
           
           
        }

        public Admin()
        {
        }

        public   void Display()
        {
            Console.WriteLine(adminName);
            Console.WriteLine(adminId);
         
         
        }
       
       
        



    }
}
