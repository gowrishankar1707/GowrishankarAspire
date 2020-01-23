/*
 * Class    :   Adminchoice
 * Date     :   16-01-2020
 * Version  :   1.4
 * Author   :   Gowrishankar.N
 * */

using System;


namespace LibraryManagement
{
    class AdminChoice : Admin
    {
        bool myBool = true;
        public enum AdminOption
        {
            AddStaff = 1,
            ViewStaff,
            Exit,
        };
        public void GetOption()
        {
            Console.WriteLine("Enter the choice");
            Console.WriteLine(ErrorMessage.design);
            foreach (int i in Enum.GetValues(typeof(AdminOption)))
            {
                Console.WriteLine("{0} {1}", i, (AdminOption)i);
            }
            do
            {
                Console.WriteLine("Enter the option:");
                Console.WriteLine(ErrorMessage.design);
                string option = Console.ReadLine();
                AdminOption adminOption = (AdminOption)Enum.Parse(typeof(AdminOption), option);
                switch (adminOption)
                {
                    
                    case AdminOption.Exit:
                        {
                            myBool = false;
                            break;
                        }
                    default:
                        {
                            myBool = true;
                            Console.WriteLine(ErrorMessage.design);
                            Console.WriteLine("your option is not available");
                            Console.WriteLine(ErrorMessage.design);
                            break;
                        }
                }

            } while (myBool);

            Console.WriteLine("Do you want to continue the Admin access:");
            bool Bool = (Console.ReadLine() == "yes");
            if (Bool)
            {
                GetOption();
            }

        }
    }
}

