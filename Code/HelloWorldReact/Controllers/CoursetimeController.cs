﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IS.uni;
using IS.Sess;
using IS.Base;

namespace HelloWorldReact.Controllers
{

    public class CoursetimeController : Controller
    {
        session ses = new session();
        public JsonResult getlist(string keysearchTimeStart, string keysearchTimeEnd, string keysearchDayInWeek)
        {
            List<COURSETIME_OBJ> li = null;
            //Không trả về dữ liệu khi chưa đăng nhập
            if (ses.func("ADMINDIRE") <= 0)
            {
                return Json(new
                {
                    data = li,//Danh sách
                    total = 0,//số lượng trang
                    parent = "",//đơn vị cấp trên
                    startindex = 1, //bắt đầu số trang
                    ret = -1//error
                }, JsonRequestBehavior.AllowGet);

            }
            //Khai báo lấy dữ liệu
            COURSETIME_BUS bus = new COURSETIME_BUS();
            List<spParam> lipa = new List<spParam>();
            //Thêm điều kiện lọc theo codeview nếu có nhập
            if (keysearchTimeStart != "")
            {
                lipa.Add(new spParam("TIMESTART", System.Data.SqlDbType.VarChar, keysearchTimeStart, 1));//search on codeview
            }
            if (keysearchTimeEnd != "")
            {
                lipa.Add(new spParam("TIMEEND", System.Data.SqlDbType.VarChar, keysearchTimeEnd, 1));//search on codeview
            }
            if (keysearchDayInWeek != "")
            {
                lipa.Add(new spParam("DAYINWEEK", System.Data.SqlDbType.VarChar, keysearchDayInWeek, 1));//search on codeview
            }
            int countpage = 0;
            //order by theorder, with pagesize and the page
            li = bus.getAll(lipa.ToArray());
            bus.CloseConnection();
            //Chỉ số đầu tiên của trang hiện tại (đã trừ -1)
            //Trả về client
            return Json(new
            {
                data = li,//Danh sách
                total = countpage,//số lượng trang
                ret = 0//ok
            }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult delete(string id)
        {
            if (ses.func("ADMINDIRE") <= 0)
            {
                return Json(new { sussess = -3 }, JsonRequestBehavior.AllowGet);

            }

            int ret = 0;
            COURSETIME_BUS bus = new COURSETIME_BUS();
            COURSETIME_OBJ obj = bus.GetByID(new COURSETIME_OBJ.BusinessObjectID(id));
            //Kiểm tra đối tượng còn trên server hay không
            if (obj == null)
            {
                ret = -1;
            }

            if (ret >= 0)
            {
                obj._ID.CODE = obj.CODE;
                //xóa
                ret = bus.Delete(obj._ID);
            }
            //close connection
            bus.CloseConnection();
            return Json(new { sussess = ret }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        /// <summary>
        /// Cập nhật một bản ghi được gửi lên từ phía client
        /// </summary>
        public JsonResult update(COURSETIME_OBJ obj, string keysearchTimeStart, string keysearchTimeEnd, string keysearchDayInWeek)
        {
            if (ses.func("ADMINDIRE") <= 0)
            {
                return Json(new { sussess = -3 }, JsonRequestBehavior.AllowGet);

            }
            COURSETIME_BUS bus = new COURSETIME_BUS();
            int ret = 0;
            //int add = 0;

            COURSETIME_OBJ obj_temp = null;
            //kiểm tra tồn tại cho trường hợp sửa
            //if (!string.IsNullOrEmpty(obj.CODE))//edit
            //{
            //    obj_temp = bus.GetByID(new COURSETIME_OBJ.BusinessObjectID(obj.CODE));

            //}
            //else
            //{
            //    obj_temp = new COURSETIME_OBJ();
            //}

            if (ret < 0)
            {
                //đóng kết nối trước khi trả về
                bus.CloseConnection();
                //ban ghi sửa đã bị xóa
                return Json(new { sussess = ret }, JsonRequestBehavior.AllowGet);

            }

            obj_temp.TIMESTART = obj.TIMESTART;
            obj_temp.TIMEEND = obj.TIMEEND;
            obj_temp.DAYINWEEK = obj.DAYINWEEK;

            if (string.IsNullOrEmpty(obj.CODE))
            {
                ret = bus.Insert(obj_temp);
            }

            bus.CloseConnection();

            //some thing like that
            return Json(new { sussess = ret }, JsonRequestBehavior.AllowGet);
        }
    }
}