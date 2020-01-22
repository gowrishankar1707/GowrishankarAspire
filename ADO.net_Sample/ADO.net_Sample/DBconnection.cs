/*
 * Name         :   Gowrishankar
 * Class        :   DBConnection
 * Version      :   1.0
 * Date         :   22-01-2020
 * */


using System;

using System.Data.SqlClient;
using System.Configuration;


namespace ADO.net_Sample
{
    class DBconnection
    {
        public static SqlConnection GetDBConnection(string initialCatalog, string userName, string password)
        {
            ConnectionStringSettings settings = ConfigurationManager.ConnectionStrings["ConnectString"];
            if (settings == null)
            {
                Console.WriteLine("Null in the data");

            }
            string connectString = settings.ConnectionString;
            Console.WriteLine("{0}", connectString);
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder(connectString);//connection string builder is created
            builder.InitialCatalog = initialCatalog;
            builder.UserID = userName;
            builder.Password = password;
            Console.WriteLine("{0}", builder.ConnectionString);
            SqlConnection sqlConnection = new SqlConnection(builder.ConnectionString);
            return sqlConnection;

        }
    }
}
