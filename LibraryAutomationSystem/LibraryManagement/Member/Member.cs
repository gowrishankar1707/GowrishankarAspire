/*
 * Class    :   Member
 * Date     :   15-01-2020
 * Version  :   1.3
 * Author   :   Gowrishankar.N
 * */
using System;
using System.Text.RegularExpressions;

namespace LibraryManagement
{
    abstract class Registeration
    {
        public virtual void GetMember()
        { }
        public virtual void GetStaff()
        {
        }
    }
    class Member : Registeration
    {
        protected internal string memberID;
        protected internal string memberName;
        protected internal string memberPassword;
        protected internal char memberSex;
        protected internal string e_Mail;
        protected internal string memberPhoneNumber;
        protected internal string memberAddress;

        MemberInput register = new MemberInput();
        bool myBool = true;


        public override void GetMember()
        {
            MemberID = register.GetMemberId();
            MemberName = register.GetMemberName();
            MemberPassword = register.GetMemberPassword();
            MemberSex = register.GetMemberSex();
            MemberEmail = register.GetMemberEmail();
            PhoneNumber = register.GetMemberPhoneNumber();
            Address = register.GetMemberAdress();
        }

        public string MemberID
        //Set member id
        {

            get
            {
                return memberID;
            }
            set
            {

                memberID = value;


            }
        }
        public string MemberName
        //set member name
        {
            get
            {
                return memberName;
            }
            set
            {
                do
                {

                    if (Validation.CheckName(value))
                    {
                        memberName = value;
                        myBool = false;
                    }
                    else
                    {
                        myBool = true;
                        MemberName = register.GetMemberName();
                    }


                } while (myBool != false);
            }
        }
        public string MemberPassword
        {
            get { return memberPassword; }
            set
            {
                do
                {

                    if (Validation.CheckPassword(value))
                    {
                        memberPassword = value;
                        myBool = false;
                    }
                    else
                    {
                        myBool = true;
                        MemberPassword = register.GetMemberPassword();
                    }
                } while (myBool != false);


            }
        }

        public char MemberSex
        //set member sex
        {
            get
            {
                return memberSex;
            }
            set
            {

                do
                {

                    if (Validation.CheckGender(value))
                    {
                        memberSex = value;
                        myBool = false;
                    }
                    else
                    {
                        myBool = true;
                        MemberSex = register.GetMemberSex();
                    }
                } while (myBool != false);
            }
        }
        public string MemberEmail
        {
            get
            {
                return e_Mail;
            }
            set
            {
                do
                {
                    if (Validation.CheckEmail(value))
                    {
                        e_Mail = value;
                        myBool = false;
                    }
                    else
                    {
                        myBool = true;
                        MemberEmail = register.GetMemberEmail();
                    }
                } while (myBool != false);
            }
        }
        public string PhoneNumber
        //set member phone number
        {
            get
            {
                return memberPhoneNumber;
            }
            set
            {
                do
                {

                    //Validation.CheckPhoneNumber(value) ? memberPhoneNumber = value : PhoneNumber = register.GetMemberPhoneNumber();
                    if (Validation.CheckPhoneNumber(value))
                    {
                        memberPhoneNumber = value;
                        myBool = false;
                    }
                    else
                    {
                        myBool = true;
                        PhoneNumber = register.GetMemberPhoneNumber();
                    }
                } while (myBool != false);

            }

        }
        public string Address
        {
            get
            {
                return memberAddress;
            }
            set
            {
                memberAddress = value;
            }
        }




        public void PrintMember()
        {

            Console.WriteLine("member id:{0}", memberID);
            Console.WriteLine("member Name:{0}", memberName);

        }
        //public void Login()
        //{
        //    Console.WriteLine("Enter the Id:");
        //    string checkId = (Console.ReadLine());
        //    Console.WriteLine("Enter the password");
        //    string password = Console.ReadLine();
        //    UserRepository user = new UserRepository();
        //    if (user.Login(checkId, password))
        //    {
        //        Console.WriteLine("Login ");
        //    }
        //    else
        //    {
        //        Console.WriteLine("Not");
        //    }
        //}

    }
}

