/*
 * Class    :   Program
 * Date     :   16-01-2020
 * Version  :   1.4
 * Author   :   Gowrishankar.N
 **/
using System;


namespace LibraryManagement
{
  
    class Home
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to Library Automation System:");
            Console.WriteLine(ErrorMessage.design);
            UserChoice userChoice = new UserChoice();
            Console.ReadLine();
        }
    }
}
