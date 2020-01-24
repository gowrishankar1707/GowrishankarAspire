/*
 * Class    :   Program
 * Date     :   16-01-2020
 * Version  :   1.4
 * Author   :   Gowrishankar.N
 **/


using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;


namespace LibraryManagement
{
    class UserRepository : Admin
    {

        internal static Dictionary<string, Member> userDictionary = new Dictionary<string, Member>();

        internal static Dictionary<string, Admin> adminDictionary = new Dictionary<string, Admin>();
       
        public void SignUp()
        {
            Console.WriteLine("Enter the role:member");
            string role = Console.ReadLine();



            Member member = new Member();
            member.GetMember();
            member.PrintMember();
            userDictionary.Add(member.memberID, member);

        }
        public void Login()
        {
            Console.WriteLine("Enter the Id :(Member:example(M101))  OR (Admin)");
            string id = Console.ReadLine();
            Console.WriteLine("Enter the password:");
            string password = Console.ReadLine();
            Console.WriteLine("Enter the role:(member   or     admin)");
            string role = Console.ReadLine();

            if (role == "member")
            //role="member" enter in member dictionary and check the values.if the values is not present in member it search another time.
            {
                if (userDictionary.Count == 0)
                {
                    Console.WriteLine("yoou are new you cannot allow to log in");
                }
                foreach (var loginMember in userDictionary.Values)
                    //member checking
                {
                    if  (loginMember.memberPassword == password)
                    {
                        Console.WriteLine("Name: " + loginMember.memberName);
                        Console.WriteLine("password: " + loginMember.memberPassword);
                        Console.WriteLine("Gender: " + loginMember.memberSex);
                        Console.WriteLine("Mail: " + loginMember.e_Mail);


                    }
                    else
                    {
                        //Enter the password and id once again 
                        Console.WriteLine("admin id or password are incorrect");
                        Console.WriteLine("Do you want to continue");
                        bool myBool = (Console.ReadLine() == "yes");
                        if (myBool)
                        {
                            Login();
                        }
                        Console.WriteLine(ErrorMessage.design);
                        Console.WriteLine("If you are  new please register and login:");

                        myBool = (Console.ReadLine() == "yes");
                        if (myBool)
                        {
                            UserChoice userchoice = new UserChoice();
                        }

                    }
                }

            }



            if (role == "admin")
            {
   
                //bool Bool = true;
                //do
                //{
                    SqlConnection s=   AdminSqlConnections.AdminDB();
                    s.Open();
                    SqlCommand cmd = new SqlCommand("Select * FROM Admin", s);
                    SqlDataAdapter adap = new SqlDataAdapter();
                    adap.SelectCommand = cmd;
                    DataSet set = new DataSet();
                    adap.Fill(set,"Admin");
                    DataTable table = set.Tables["Admin"];
                    foreach(DataRow row in table.Rows)
                    {
                    Console.WriteLine("hi");
                        Admin admin = new Admin(row[0].ToString(), row[1].ToString(),row[2].ToString());
                        adminDictionary.Add(admin.adminId, admin);
                        

                    }
                   

                    foreach (Admin admin in adminDictionary.Values)
                    {
                        if ((admin.adminId == id) && (admin.adminPassword == password))
                        {
                            Console.WriteLine("Login sucessfully");
                        }
                        else
                        {
                            Console.WriteLine("not login");
                        }
                    }


                    //foreach (var loginAdmin in adminDictionary.Values)
                    ////admin checking
                    //{
                    //    if ((loginAdmin.adminId == id) && (loginAdmin.adminPassword == password))
                    //    {
                    //        AdminChoice adminChoice = new AdminChoice();
                    //        adminChoice.GetOption();
                    //        Bool = false;

                    //    }
                    //    else
                    //    {
                    //        Bool = true;
                    //        Console.WriteLine("Do you want to continue");
                    //        bool myBool = (Console.ReadLine() == "yes");
                    //        if (myBool)
                    //        {
                    //            Login();
                    //        }
                    //    }
                //    //}
                //} while (Bool);
                
            }
            if ((role != "admin") && (role != "member"))
            {
                Console.WriteLine("Given role is incorect..are you willing to continue:(TYPE YES TO CONTINUE)");
                bool myBool = (Console.ReadLine() == "yes");
                if (myBool) { Login(); }

            }


        }

    }
}
