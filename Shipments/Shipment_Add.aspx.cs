using Shipments.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shipments
{   
    public partial class About : Page
    {
        TASKEntities ts = new TASKEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                tbl_Shipment obj = new tbl_Shipment();
                obj.sender_Name = txt_Sender_Name.Text.ToString();
                obj.description = txt_Description.Text.ToString();
                obj.recipient_Address = txt_Recipient_Address.Text.ToString();
                if (rb_True.Checked == true)
                {
                    obj.expedited = true;
                }
                else if (rb_False.Checked == true)
                {
                    obj.expedited = false;
                }
                obj.shipment_Type= ddl_Shipment_Type.SelectedItem.Text;
                ts.tbl_Shipment.Add(obj);
                ts.SaveChanges();
                clear();
                Response.Redirect("Shipment_List.aspx");                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Shipment_List.aspx");
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }
        
        public void clear()
        {
            txt_Sender_Name.Text = txt_Description.Text = txt_Recipient_Address.Text = "";
            rb_True.Checked = true;
            ddl_Shipment_Type.SelectedIndex = 0;
        }

    }
}