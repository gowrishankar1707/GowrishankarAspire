using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;

namespace LibraryManagement
{
    class AdminSqlConnections
    {
        public static SqlConnection AdminDB()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Admin"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            return sqlConnection;
            

        }
    }
}
