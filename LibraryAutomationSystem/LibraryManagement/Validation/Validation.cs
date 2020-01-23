/*
 * Class    :   Validation
 * Date     :   16-01-2020
 * Version  :   1.4
 * Author   :   Gowrishankar.N
 **/


using System;
using System.Text.RegularExpressions;


namespace LibraryManagement
{
    static class Validation
    {
      
        public static bool CheckName(string checkName)
        {

            Regex regex = new Regex(@"^[A-Z][a-zA - Z]*$");
            Match match = regex.Match(checkName);
            try
            {

                if (string.IsNullOrEmpty(checkName))
                {
                    throw new Exception(ErrorMessage.nameError);
                }
                else if (!match.Success)
                {
                    throw new Exception(ErrorMessage.nameError);
                }
                else
                {
                   
                    return true;

                }


            }
            catch (Exception Ex)
            {
                Console.WriteLine(Ex.Message, Ex.StackTrace);
                return false;
            }

        }
        public static bool CheckPassword(string checkPassword)
        {
            try
            {
                if (checkPassword.Length < 8)
                {
                    throw new Exception(ErrorMessage.passwordError);
                }


                return true;

            }
            catch (Exception Ex)
            {
               
                Console.WriteLine("The Exception is :{0} and Error occured at:{1}", Ex.Message, Ex.StackTrace);
                return false;
            }
        }
        public static bool CheckEmail(string checkEmail)
        {
            Regex regex = new Regex(@"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z", RegexOptions.IgnoreCase);
            Match match = regex.Match(checkEmail);
            try
            {
                if (!match.Success)
                {
                    throw new Exception(ErrorMessage.emailError);
                }
                return true;
            }
            catch(Exception Ex)
            {
                Console.WriteLine("The message is :{0} and the message occured at :{1}", Ex.Message, Ex.StackTrace);
                return false;
            }
        }
        public static bool CheckGender(char checkGender)
        {
            try
            {
                if ((checkGender == 'f') || (checkGender == 'm'))
                {
                    throw new Exception(ErrorMessage.sexNotIn_M_F);
                }
                else if (char.IsWhiteSpace(checkGender))
                {

                    throw new Exception(ErrorMessage.sexNull);

                }
                else if ((checkGender == 'F') || (checkGender == 'M'))
                {

                    return true; ;

                }
                else
                {


                    throw new Exception(ErrorMessage.sexError);
                }


            }
            catch (Exception Ex)
            {
               
                Console.WriteLine("The eror is :{0} and it occured at:{1}", Ex.Message, Ex.StackTrace);
                return false;
              
            }
        }
        public static bool CheckPhoneNumber(string checkPhoneNumber)
        {
            try
            {
                Regex regex = new Regex(@"^(0/91)?[6-9][4-9][0-9]{8}$");
                Match match = regex.Match(checkPhoneNumber);
                if (!match.Success)
                {
                    throw new Exception(ErrorMessage.phoneNumberError);
                }
                return true;
               
            }
            catch (Exception Ex)
            {
                
                Console.WriteLine("The message is :{0} and error occured at :{1}", Ex.Message, Ex.StackTrace);
                return false;
            }
        }
       
    }
}
