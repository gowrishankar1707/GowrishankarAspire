/*
 * Class    :   ErroMessage
 * Date     :   16-01-2020
 * Version  :   1.4
 * Author   :   Gowrishankar.N
 * */

using System;


namespace LibraryManagement
{
    static class ErrorMessage
    {
        internal static string nameError = "Name Should  be in corect format and should not be Null";
        internal static string passwordError = "Password should be above 8 character";
        internal static string basicPasswordError = "Password should be in correct format";
        internal static string phoneNumberError = "Phone Number should be in correct format and it should not be greater than or lesser tha 2";
        internal static string sexNull = "Sex should not be Null";
        internal static string sexError = "Sex should be in capital";
        internal static string sexNotIn_M_F = "Sex should be in male or female ";
        internal static string emailError = "Email should not be in correct format and also should not be \"null\"";
        internal static string memberIdNull = "Member Id should not be null";
        internal static string memberNumberError = "roll no should not be outof range(0-5) ";
        internal static string switchError = "your option is not find";
        internal static string choiceError = "Choice should not be null";
        internal static string design = "-------------------------------------------------------------------------------";
    }
}
