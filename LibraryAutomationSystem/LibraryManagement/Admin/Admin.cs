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
        internal string adminPhoneNumber;

          internal string adminEmail;
        internal string adminPost;
      
       public Admin(string Name,string id,string password, string PhoneNumber, string Email,string role)
        {
            adminName = Name;
            adminPassword = password;
            adminId = id;
            adminPhoneNumber = PhoneNumber;
            adminEmail = Email;
            adminPost = role;
        }

        public Admin()
        {
        }

        public   void Display()
        {
            Console.WriteLine(adminName);
            Console.WriteLine(adminPhoneNumber);
            Console.WriteLine(adminEmail);
            Console.WriteLine(adminPost);

        }
       
       
        



    }
}
