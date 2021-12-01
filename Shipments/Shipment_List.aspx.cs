using Shipments.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shipments
{
    public partial class Contact : Page
    {
        TASKEntities ts = new TASKEntities();
        private object txtrolename;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                gridFill();
            }
        }
        protected void gridFill()
        {
            var result = (from obj in ts.tbl_Shipment orderby obj.shipment_Id select obj).ToList();
            if(result.Count>0)
            {
                gvDetails.DataSource = result;
                gvDetails.DataBind();
            }
            else
            {
                gvDetails.DataSource = null;
                gvDetails.DataBind();
            }
        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {
                var res = (from obj in ts.tbl_Shipment
                           where obj.sender_Name == txtSearch.Text
                           select obj).ToList();
                if (res.Count > 0)
                {
                    gvDetails.DataSource = res;
                    gvDetails.DataBind();                 
                }
                else
                {
                    gvDetails.DataSource = null;
                    gvDetails.DataBind();
                }
            }
            catch
            {

            }
        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Shipment_Add.aspx");
            }
            catch
            {

            }
        }
        protected void gvDetails_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvDetails.EditIndex = e.NewEditIndex;
            gridFill();
        }
        protected void gvDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int shiping_Id = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Value.ToString());
            TextBox txtsenderName = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtsenderName");
            TextBox txtdescription = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtdescription");
            TextBox txtrecipient_address = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtrecipient_address");

            var res = (from obj in ts.tbl_Shipment
                        where obj.shipment_Id == shiping_Id
                       select obj).ToList();
            if (res.Count > 0)
            {              
                res[0].sender_Name = txtsenderName.Text;
                res[0].description = txtdescription.Text;
                res[0].recipient_Address = txtrecipient_address.Text;
                ts.SaveChanges();
                gridFill();
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Shipment List Updated Successfully ......!!! ');", true);                             
            }


            gvDetails.EditIndex = -1;
            gridFill();
        }

        protected void imgDelete_Click(object sender, ImageClickEventArgs e)
        {
            try
            {        
                gvDetails.EditIndex = -1;
                GridViewRow gvDetails1 = (GridViewRow)(sender as Control).Parent.Parent;
                int index = gvDetails1.RowIndex;

                int shiping_Id = Convert.ToInt32(gvDetails.DataKeys[index].Value.ToString());

                if (shiping_Id>0)
                {
                    var deleteShipment = ts.tbl_Shipment.Find(shiping_Id);
                    ts.tbl_Shipment.Remove(deleteShipment);
                    ts.SaveChanges();
                }
                gridFill();
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Deleted Successfully ......!!! ');", true);              
            }
            catch (Exception ex)
            {
            }
        }
        protected void gvDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvDetails.EditIndex = -1;
            gridFill();
        }
        protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDetails.PageIndex = e.NewPageIndex;
            gridFill();
        }

        
        protected void btnclear_Click(object sender, EventArgs e)
        {
            try
            {
                txtSearch.Text = "";
                gridFill();
            }
            catch
            {

            }
        }
    }
}