using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using IS.Base;
using IS.Config;
using System.Configuration;
namespace IS.uni
{
    public class ROOM_BUS
    {
        DBBase db = new DBBase(ConfigurationSettings.AppSettings["connectionString"].ToString());
        public ROOM_BUS()
        {
        }
        public  ROOM_OBJ createObject()
        {
            ROOM_OBJ obj = new ROOM_OBJ();
            return obj;
        }
        public  ROOM_OBJ createNull()
        {
            return null;
        }
        public List<ROOM_OBJ> getAll(params spParam[] listFilter)
        {
            List<ROOM_OBJ> lidata = new List<uni.ROOM_OBJ>();
            string sql = "SELECT * FROM ROOM";
            string swhere = "";
            SqlCommand cm = new SqlCommand();
            foreach (var item in listFilter)
            {
                if (swhere != "")
                {
                    swhere += " AND ";
                }
                if (item.data == null)
                {
                    //cm.Parameters.Add("@" + f.Name, st);
                    //cm.Parameters["@" + f.Name].Value = DBNull.Value;
                    swhere += "[" + item.name + "]" + " is null";
                }
                else
                {
                    if (item.searchtype == 0)
                    {
                        swhere += "[" + item.name + "]= @" + item.name;
                        cm.Parameters.Add(new SqlParameter("@" + item.name, item.data));
                    }
                    else
                    {
                        swhere += "[" + item.name + "] LIKE @" + item.name;
                        cm.Parameters.Add(new SqlParameter("@" + item.name,"%"+  item.data +"%"));
                    }
                }
            }
            if(swhere!="")
            {
                sql += " WHERE " + swhere;
            }
            cm.CommandText = sql;
            cm.CommandType = CommandType.Text;
            DataSet ds = new DataSet();
            int ret= db.getCommand(ref ds, "Tmp",  cm);
            if(ret<0)
            {
                return null;
            }
            else
            {
                foreach(DataRow dr in ds.Tables["Tmp"].Rows)
                {
                    ROOM_OBJ obj = new ROOM_OBJ();

                    Type myTableObject = typeof(ROOM_OBJ);
                    System.Reflection.PropertyInfo[] selectFieldInfo = myTableObject.GetProperties();

                    Type myObjectType = typeof(ROOM_OBJ.BusinessObjectID);
                    System.Reflection.PropertyInfo[] fieldInfo = myObjectType.GetProperties();

                    //set object value
                    foreach (System.Reflection.PropertyInfo info in selectFieldInfo)
                    {
                        if (info.Name != "_ID")
                        {
                            if (dr.Table.Columns.Contains(info.Name))
                            {
                                if (!dr.IsNull(info.Name))
                                {
                                    info.SetValue(obj, dr[info.Name], null);
                                }
                            }
                        }
                        else
                        {
                            //set id value
                            ROOM_OBJ.BusinessObjectID objid;
                            objid = (ROOM_OBJ.BusinessObjectID)info.GetValue(obj, null);
                            foreach (System.Reflection.PropertyInfo info1 in fieldInfo)
                            {
                                if (dr.Table.Columns.Contains(info1.Name))
                                {
                                    info1.SetValue(objid, dr[info1.Name], null);
                                }
                            }
                            info.SetValue(obj, objid, null);
                        }
                    }
                    lidata.Add( obj);
                }
            }
            return lidata;
        }
        public ROOM_OBJ GetByID(ROOM_OBJ.BusinessObjectID id)
        {
            List<ROOM_OBJ> li = getAll(new spParam("CODE", SqlDbType.VarChar, id.CODE,0));
            if(li== null || li.Count==0)
            {
                return null;
            }
            return li[0];
        }
        //public string genNextCode(ROOM_OBJ obj)
        //{
        //    //Phải viết lại theo mô hình nào đó
        //    Random rnd = new Random();
        //    int i = rnd.Next(int.MaxValue);
        //    return (i % 10000000000).ToString();
        //}
        public int Insert(ROOM_OBJ obj)
        {
            int ret = 0;
            DBBase db = new DBBase(ConfigurationSettings.AppSettings["connectionString"].ToString());
            string sql = "INSERT INTO ROOM(code, numberfloor,codeview,buildingcode) VALUES(@code,@numberfloor,@codeview,@buildingcode)";
            SqlCommand com = new SqlCommand();
            com.CommandText = sql;
            com.CommandType = CommandType.Text;
            com.Parameters.Add("@code", SqlDbType.VarChar).Value = obj.CODE;
            com.Parameters.Add("@numberfloor", SqlDbType.VarChar).Value = obj.NUMBERFLOOR;
            com.Parameters.Add("@codeview", SqlDbType.VarChar).Value = obj.CODEVIEW;
            com.Parameters.Add("@buildingcode", SqlDbType.VarChar).Value = obj.BUILDINGCODE;
            ret = db.doCommand(ref com);
            return ret;
        }
        public int Update(ROOM_OBJ obj)
        {
            int ret = 0;
            DBBase db = new DBBase(ConfigurationSettings.AppSettings["connectionString"].ToString());
            string sql = @"UPDATE ROOM SET 
                    code=@code
                    ,numberfloor=@numberflorr
                    ,codeview=@codeview
                    ,buildingcode=@buildingcode
                    WHERE code=@code_key
                ";
            SqlCommand com = new SqlCommand();
            com.CommandText = sql;
            com.CommandType = CommandType.Text;
            com.Parameters.Add("@code", SqlDbType.VarChar).Value = obj.CODE;
            com.Parameters.Add("@numberfloor", SqlDbType.VarChar).Value = obj.NUMBERFLOOR;
            com.Parameters.Add("@codeview", SqlDbType.VarChar).Value = obj.CODEVIEW;
            com.Parameters.Add("@buildingcode", SqlDbType.VarChar).Value = obj.BUILDINGCODE;
            com.Parameters.Add("@code_key", SqlDbType.VarChar).Value = obj._ID.CODE;
            ret = db.doCommand(ref com);
            return ret;
        }
        public int Delete(ROOM_OBJ.BusinessObjectID obj)
        {
            int ret = 0;
            DBBase db = new DBBase(ConfigurationSettings.AppSettings["connectionString"].ToString());
            string sql = @"DELETE FROM ROOM  WHERE code=@code_key
                ";
            SqlCommand com = new SqlCommand();
            com.CommandText = sql;
            com.CommandType = CommandType.Text;
            com.Parameters.Add("@code_key", SqlDbType.VarChar).Value = obj.CODE;
            ret = db.doCommand(ref com);
            return ret;
        }
        public int Open()
        {
            return db.Open();
        }
        public void CloseConnection()
        {
            db.Close();
        }
    }

}

