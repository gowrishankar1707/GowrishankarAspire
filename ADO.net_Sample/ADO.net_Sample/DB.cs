/*
 * Name         :   Gowrishankar
 * Class        :   GetDB
 * Version      :   1.0
 * Date         :   22-01-2020
 * */
using System.Data.SqlClient;


namespace ADO.net_Sample
{
     class DB
    {
        public static SqlConnection GetDB()
        {
           
            string initialCatalog = "Customer";
            string userName = "sa";
            string password = "Gowri@1707";
            return DBconnection.GetDBConnection(initialCatalog, userName, password);
        }
    }
}
