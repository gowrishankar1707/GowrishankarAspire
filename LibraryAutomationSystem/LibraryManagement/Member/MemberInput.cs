/*
 * Class    :   MemberRegistration
 * Date     :   15-01-2020
 * Version  :   1.3
 * Author   :   Gowrishankar.N
 * */

using System;


namespace LibraryManagement
{
   class MemberInput
    {
        //protected int memberID;
        protected string memberId="M";
        protected string memberName;
        public string memberPassword;
        protected char memberSex;
        protected string e_Mail;
        protected string memberPhoneNumber;
        protected string memberAddress;
        static int i = 0;
        
 
        bool myBool = true;
        
        public string GetMemberId()
            //get member id
        {

            //do
            //{
            //    try
            //    {
            //        Console.WriteLine("Enter the member ID:");
            //        memberID = int.Parse(Console.ReadLine());
            //        myBool = false;

            //    }
            //    catch (Exception Ex)
            //    {
            //        Console.WriteLine("The Exception is :{0} \n Exception occured at :{1}", Ex.Message, Ex.StackTrace);
            //    }
            //} while (myBool != false);
            i++;
            memberId+=i;
            return memberId;
        }
        public string GetMemberName()
            //Get member Name
        {

            do
            {
                try
                {

                    Console.WriteLine("Enter the member Name");
                    Console.WriteLine(ErrorMessage.design);
                    memberName = Console.ReadLine();

                  
                    myBool = false;
                }
                catch (Exception Ex)
                {
                    myBool = true;
                    Console.WriteLine("The Exception is :{0} \n Exception occured at :{1}", Ex.Message, Ex.StackTrace);
                }
            } while (myBool != false);
            return memberName;
        }
        public string GetMemberPassword()
            //Get the member password
        {
            do
            {
                try
                {
                    Console.WriteLine("Enter the Password");
                    Console.WriteLine(ErrorMessage.design);
                    memberPassword = Console.ReadLine();
                    myBool = false;
                }
                catch 
                {
                    throw new Exception(ErrorMessage.basicPasswordError);
                }
            } while (myBool != false);
            

           return memberPassword;
        }
        public char GetMemberSex()
            //get membersex
        {

            do
            {
                try
                {
                    Console.WriteLine("Enter the memberSex");
                    Console.WriteLine(ErrorMessage.design);
                    memberSex = char.Parse(Console.ReadLine());




                    myBool = false;
                }

                catch (Exception Ex)
                {
                    myBool = true;
                    Console.WriteLine("The Exception is :{0} \n Exception occured at :{1}", Ex.Message, Ex.StackTrace);
                }
            } while (myBool != false);
            return memberSex;
        }
        public string GetMemberEmail()
        {
            do {
                try
                {
                    Console.WriteLine("Enter the email:");
                    Console.WriteLine(ErrorMessage.design);
                    e_Mail = Console.ReadLine();
                    myBool = false;
                }
                catch(Exception Ex)
                {
                    Console.WriteLine("The exception is :{0} and occured at:{1}", Ex.Message, Ex.StackTrace);
                    myBool = true;
                }
            } while (myBool != false);
            return e_Mail;
        }
        public string GetMemberPhoneNumber()
            //get memberphone number
        {
            do
            {
                try
                {
                    Console.WriteLine("Enter the member phone number");
                    Console.WriteLine(ErrorMessage.design);
                    memberPhoneNumber = Console.ReadLine();
                    if (string.IsNullOrEmpty(memberPhoneNumber))
                    {
                        myBool = true;
                        throw new Exception(ErrorMessage.sexNull);

                    }
                    
                    myBool = false;
                }

                catch (Exception Ex)
                {
                    myBool = true;
                    Console.WriteLine("The Exception is :{0} \n Exception occured at :{1}", Ex.Message, Ex.StackTrace);
                }
            } while (myBool != false);
            return memberPhoneNumber;
        }
        public string GetMemberAdress()
            //get member address
        {
            do
            {
                try
                {
                    Console.WriteLine("Enter the memberAddress:");
                    Console.WriteLine(ErrorMessage.design);
                    memberAddress = Console.ReadLine();
                    myBool = false;
                }
                catch (Exception Ex)
                {
                    myBool = true;
                    Console.WriteLine("The Exception is :{0} \n Exception occured at :{1}", Ex.Message, Ex.StackTrace);
                }
            } while (myBool != false);
            return memberAddress;
        }
    }
   
}
