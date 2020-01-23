/*
 * Name         :   Gowrishankar
 * Class        :   Program
 * Version      :   1.0
 * Date         :   22-01-2020
 * */

using System;
using System.Data;
using System.Data.SqlClient;


namespace ADO.net_Sample
{
    class Program
    {
        public enum Choice
        {
            Add = 1,
            View,
            Update,
            Delete,
            Exit,
        };
        static void Main(string[] args)
        {
            using (SqlConnection sqlConnection = DB.GetDB())
            {
                Console.WriteLine("Enter the choice :\n 1)Add   \n 2) View \n 3)Update \n 4)Delete \n 5)Exit");
                string choice = Console.ReadLine();
                Choice myChoice = (Choice)Enum.Parse(typeof(Choice), choice);//parse the enum
                switch (myChoice)
                {
                    case Choice.View:
                        {
                            ViewProgrammer(sqlConnection);
                            break;
                        }

                    case Choice.Add:
                        {
                            sqlConnection.Open();
                            InsertProgrammer(sqlConnection);
                            break;
                        }
                    case Choice.Update:
                        {
                            sqlConnection.Open();
                            UpdateProgrammer(sqlConnection);
                            break;
                        }
                    case Choice.Delete:
                        {
                            sqlConnection.Open();
                            DeleteProgrammer(sqlConnection);
                            break;
                        }
                    case Choice.Exit:
                        {
                            sqlConnection.Open();
                            break;

                        }
                    default:
                        {
                            Console.WriteLine("your choice is incorect");
                            break;
                        }
                }


            }


            Console.ReadLine();



        }
        public static void DeleteProgrammer(SqlConnection sqlConnection)//delete the programmer
        {

            Console.WriteLine("Enter the Name");
            string name = Console.ReadLine();
            Console.WriteLine("Enter the action:");
            string action = Console.ReadLine();
            //user defined deletion 
            using (SqlCommand cmd = new SqlCommand("CUSTOMER_PROC_DELETE", sqlConnection))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter param = new SqlParameter();//using parameter deletion 
                param.ParameterName = "@Name";
                param.Value = name;
                param.SqlDbType = System.Data.SqlDbType.VarChar;
                cmd.Parameters.Add(param);
                param = new SqlParameter();

                param.ParameterName = "@Action";
                param.Value = action;
                param.SqlDbType = System.Data.SqlDbType.VarChar;
                cmd.Parameters.Add(param);
                int rows = cmd.ExecuteNonQuery();//executing non query
                if (rows > 0)
                {
                    Console.WriteLine("rows deleted " + rows);
                }
                else
                {
                    Console.WriteLine("No rows are deleted " + rows);
                }
            }

        }
        public static void UpdateProgrammer(SqlConnection sqlConnection)//delete the programmer
        {
            Console.WriteLine("Enter the name TO search:");
            string Name = Console.ReadLine();
            Console.WriteLine("Eneter the salary:");
            int Salary = int.Parse(Console.ReadLine());
           

            SqlDataAdapter dataAdpater = new SqlDataAdapter("SELECT * FROM Programmer", sqlConnection);

            dataAdpater.UpdateCommand = new SqlCommand("UPDATE Programmer SET Salary=@Salary WHERE Name=@Name", sqlConnection);
        

            dataAdpater.UpdateCommand.Parameters.Add("@Salary", SqlDbType.Int, 4, "Salary");

            SqlParameter parameter = dataAdpater.UpdateCommand.Parameters.Add("@Name", SqlDbType.VarChar);
            parameter.SourceColumn = "Name";
            parameter.SourceVersion = DataRowVersion.Original;
            parameter.Value = Name;


            DataTable categoryTable = new DataTable();
            dataAdpater.Fill(categoryTable);
            DataRow categoryRow = categoryTable.Rows[0];
            categoryRow["Salary"] = Salary;
            dataAdpater.Update(categoryTable);
            
            foreach (DataRow row in categoryTable.Rows)
            {
                foreach (DataColumn col in categoryTable.Columns)
                {
                    
                    Console.WriteLine(row[col]);
                }

                Console.WriteLine();
                

            }
           

                //}

                //using (SqlCommand cmd=new SqlCommand("CUSTOMER_PRO_UPDATE",sqlConnection))
                //{
                //    cmd.CommandType = CommandType.StoredProcedure;

                //    SqlParameter param = new SqlParameter();
                //    param.ParameterName = "@Name";
                //    param.Value = Name;
                //    param.SqlDbType = System.Data.SqlDbType.VarChar;
                //    cmd.Parameters.Add(param);

                //    param = new SqlParameter();
                //    param.ParameterName = "@Salary";
                //    param.Value = Salary;
                //    param.SqlDbType = System.Data.SqlDbType.Int;
                //    cmd.Parameters.Add(param);

                //    param = new SqlParameter();
                //    param.ParameterName = "@Action";
                //    param.Value = action;
                //    param.SqlDbType = System.Data.SqlDbType.VarChar;
                //    cmd.Parameters.Add(param);



                //    int retRows = cmd.ExecuteNonQuery();


                //    if (retRows >= 1)
                //    {
                //        Console.WriteLine("Programmer Added " + retRows);
                //    }
                //    else
                //    {
                //        Console.WriteLine("Programmer Does not Added " + retRows);
                //    }



            




    }
        public static void InsertProgrammer(SqlConnection sqlConnection)
        {


            Console.WriteLine("Enter the Name:");
            string name = Console.ReadLine();
            Console.WriteLine("Enter the DOB:");
            string DOB = Console.ReadLine();
            Console.WriteLine("Enter the Sex:");
            string sex = Console.ReadLine();
            Console.WriteLine("Enter the Pro1:");
            string pro1 = Console.ReadLine();
            Console.WriteLine("Enter the Pro1:");
            string pro2 = Console.ReadLine();
            Console.WriteLine("Enter the DOJ:");
            string DOJ = Console.ReadLine();
            Console.WriteLine("Enter the salary:");
            int salary = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter the action:");
            string action = Console.ReadLine();
            using (SqlCommand cmd = new SqlCommand("CUSTOMER_PROC_INSERT_UPDATE", sqlConnection))
            //Inserting values to the database through params
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter();
                param.ParameterName = "@Name";
                param.Value = name;
                param.SqlDbType = System.Data.SqlDbType.VarChar;
                cmd.Parameters.Add(param);


                param = new SqlParameter();
                param.ParameterName = "@Dob";
                param.Value = DOB;
                param.SqlDbType = System.Data.SqlDbType.Date;
                cmd.Parameters.Add(param);

                param = new SqlParameter();
                param.ParameterName = "@Doj";
                param.Value = DOJ;
                param.SqlDbType = System.Data.SqlDbType.Date;
                cmd.Parameters.Add(param);

                param = new SqlParameter();
                param.ParameterName = "@Sex";
                param.Value = sex;
                param.SqlDbType = System.Data.SqlDbType.VarChar;
                cmd.Parameters.Add(param);

                param = new SqlParameter();
                param.ParameterName = "@Pro1";
                param.Value = pro1;
                param.SqlDbType = System.Data.SqlDbType.VarChar;
                cmd.Parameters.Add(param);

                param = new SqlParameter();
                param.ParameterName = "@Pro2";
                param.Value = pro2;
                param.SqlDbType = System.Data.SqlDbType.VarChar;
                cmd.Parameters.Add(param);

                param = new SqlParameter();
                param.ParameterName = "@Salary";
                param.Value = salary;
                param.SqlDbType = System.Data.SqlDbType.Int;
                cmd.Parameters.Add(param);

                //cmd.Parameters.Add(new SqlParameter("@Admin", SqlDbType.VarChar).Value = action);
                param = new SqlParameter();
                param.ParameterName = "@Action";
                param.Value = action;
                param.SqlDbType = System.Data.SqlDbType.VarChar;
                cmd.Parameters.Add(param);

                int retRows = cmd.ExecuteNonQuery();
                

                if (retRows >= 1)
                {
                    Console.WriteLine("Programmer Added " + retRows);
                }
                else
                {
                    Console.WriteLine("Programmer Does not Added " + retRows);
                }
            }




        }






        public static void ViewProgrammer(SqlConnection sqlconnection)
        {
            //view database through dataset(disconnected archietechure
            SqlCommand cmd = new SqlCommand("CUSTOMER_PROC_VIEW", sqlconnection);

            Console.WriteLine("Enter the action:");
            string action = Console.ReadLine();

            SqlParameter param = new SqlParameter();
            param.ParameterName = "@Action";
            param.Value = action;
            param.SqlDbType = System.Data.SqlDbType.VarChar;
            cmd.Parameters.Add(param);

            cmd.CommandType = CommandType.StoredProcedure;
            //command convert in to stored procedure
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            //dataadpater selectcommand also covert in to stored procedure

            DataSet set = new DataSet();
            adapter.Fill(set,"Programmer");
            DataTable table = set.Tables["Programmer"];
            foreach (DataRow drCurrent in table.Rows)
            {
                Console.WriteLine("{0}", drCurrent["Name"].ToString());
                Console.WriteLine("{0}", drCurrent["DOB"].ToString());
                Console.WriteLine("{0}", drCurrent["DOJ"].ToString());
                Console.WriteLine("{0}", drCurrent["Pro1"].ToString());
                Console.WriteLine("{0}", drCurrent["Pro2"].ToString());
                Console.WriteLine("{0}", drCurrent["Salary"].ToString());
            }



            
        }
    }

}
