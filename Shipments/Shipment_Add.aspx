<%@ Page Title="Add" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shipment_Add.aspx.cs" Inherits="Shipments.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="col-lg-12">
            <h1 style="text-align: center">Add New Shipment</h1>
        </div>
        <div class="col-lg-12" style="margin-bottom: 5px;">
            <div class="row add">
                <div class="form-group">
                    <asp:Label ID="lbl_Sender_Name" runat="server" Text="Sender Name" Style="margin-right: 25px; font-weight: bold; margin-top: 8px;"></asp:Label>
                    <asp:TextBox ID="txt_Sender_Name" runat="server" CssClass="form-control" placeholder="Sender Name" Style="max-width: none;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_Sender_Name" runat="server"
                        ControlToValidate="txt_Sender_Name"
                        ErrorMessage="Sender Name is a required."
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lbl_Description" Text="Description" runat="server" Style="margin-right: 25px; font-weight: bold; margin-top: 8px;" />
                    <asp:TextBox ID="txt_Description" runat="server" CssClass="form-control" TextMode="MultiLine" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lbl_Recipient_Address" Text="Recipient Address" runat="server" Style="margin-right: 25px; font-weight: bold; margin-top: 8px;" />
                    <asp:TextBox ID="txt_Recipient_Address" runat="server" CssClass="form-control" TextMode="MultiLine" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lbl_Expedited" Text="Expedited" runat="server" Style="margin-right: 25px; font-weight: bold; margin-top: 8px;" />
                    <asp:RadioButton ID="rb_True" runat="server" Text="True" GroupName="Expedited" Checked="true" />
                    <asp:RadioButton ID="rb_False" runat="server" Text="False" GroupName="Expedited" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lbl_Shipment_Type" Text="Shipment Type" runat="server" Style="margin-right: 25px; font-weight: bold; margin-top: 8px;" />
                    <asp:DropDownList ID="ddl_Shipment_Type" runat="server" CssClass="form-control" AutoPostBack="True">
                        <asp:ListItem Value="LTL">LTL</asp:ListItem>
                        <asp:ListItem Value="Volume LTL">Volume LTL</asp:ListItem>
                        <asp:ListItem Value="Truckload">Truckload</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:Button ID="btnClear" runat="server" Text="Back" OnClick="btnBack_Click" class="btn btn-primary"></asp:Button>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" class="btn btn-success"></asp:Button>
            </div>
        </div>
    </div>
</asp:Content>
