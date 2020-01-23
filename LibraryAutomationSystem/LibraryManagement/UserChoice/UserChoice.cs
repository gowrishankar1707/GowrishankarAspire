/*
 * Class    :   UserChoice
 * Date     :   16-01-2020
 * Version  :   1.4
 * Author   :   Gowrishankar.N
 **/

using System;


namespace LibraryManagement
{
    class UserChoice
    {
        
        enum Option
            //all are user
        {
            register=1,
            login,
            exit,
        };
        public UserChoice()
            //userchoice constructor
        {
            string choice;
            bool myBool = true;
            Option option;
            Console.WriteLine("Choose the option:");
            Console.WriteLine(ErrorMessage.design);
            foreach (int i in Enum.GetValues(typeof(Option)))
                //display the content at enum
            {
               
                Console.WriteLine("{0} {1}:",i,(Option)i);
            }

            do {
                //check whether the choice is empty  or not
                try
                {
                    Console.WriteLine("Enter the choice:(Should be as admin,member.etc.,)");
                    Console.WriteLine(ErrorMessage.design);
                    string  checkChoice = Console.ReadLine();
                    if(string.IsNullOrEmpty(checkChoice))
                        //choice should not be null
                    {

                        throw new Exception(ErrorMessage.choiceError);
                    }
                    choice = checkChoice;
                     option= (Option)Enum.Parse(typeof(Option), choice);
                    switch (option)
                    {
                        case Option.register:
                            {

                                UserRepository userRepository = new UserRepository();
                                userRepository.SignUp();
                                Console.WriteLine(ErrorMessage.design);
                                Console.WriteLine("\n\n\n");
                                Console.WriteLine("Registration is completed");
                                Console.WriteLine(ErrorMessage.design);
                                Console.WriteLine("\n\n\n");
                                Console.WriteLine("Do you want to login:(EX:yes or no)");
                                //ask do you login and check whether the registration is completed or not
                                bool check = (Console.ReadLine() == "yes");
                                if (check)
                                {
                                    userRepository.Login();
                                }
                                break;
                            }
                        case Option.login:
                            {
                                UserRepository userRepository = new UserRepository();
                                userRepository.Login();

                                break;
                            }
                        case Option.exit:
                            {
                                break;
                            }
                        default:
                            {
                                Console.WriteLine(ErrorMessage.switchError);
                                break;
                            }
                    }
                    myBool = false;

                }
                catch(Exception Ex)
                {
                    myBool = true;
                    Console.WriteLine("the exception is :{0} and the its occured at:{1}", Ex.Message, Ex.StackTrace);
                }
                

                } while (myBool);

            }

    }
}
