<%@ Page Title="Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shipment_List.aspx.cs" Inherits="Shipments.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="col-md-12">
            <h1 style="padding-bottom: 30px;text-align: center;">Shipment List</h1>
        </div>
        <div class="col-lg-12" style="display: flex; margin-bottom: 5px;">
            <asp:Label ID="Label1" runat="server" Text="Sender Name" Style="margin-right: 25px; font-weight: bold; margin-top: 8px;"></asp:Label>
            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search Sender Name"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" Style="margin-left: 20px" OnClick="btnsearch_Click" class="btn btn-primary"></asp:Button>
            <asp:Button ID="btnClear" runat="server" Text="Clear" Style="margin-left: 20px" OnClick="btnclear_Click" class="btn btn-primary"></asp:Button>
            <asp:Button ID="btnAdd" runat="server" Text="Add New List" Style="margin-left: 20px; float: right" OnClick="btnadd_Click" class="btn btn-success"></asp:Button>
        </div>
        <div class="col-md-12">
            <asp:GridView ID="gvDetails" DataKeyNames="shipment_Id" runat="server" HeaderStyle-BackColor="white" Style="color: #0f73a0"
                AutoGenerateColumns="false" CssClass="table table-bordered table-condensed table-hover"
                OnRowCancelingEdit="gvDetails_RowCancelingEdit"
                OnRowEditing="gvDetails_RowEditing"
                OnRowUpdating="gvDetails_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="S.No" HeaderStyle-Width="50px">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="ID" Visible="false">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtshiping_Id" runat="server" Text='<%#Eval("shipment_Id") %>' CssClass="form-control" Style="border-color: #CACECE; border-radius: 5px;"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblshiping_Id" runat="server" Text='<%#Eval("shipment_Id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sender Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtsenderName" runat="server" Text='<%#Eval("sender_Name") %>' CssClass="form-control" Style="border-color: #CACECE; border-radius: 5px; " ReadOnly="true"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblsenderName" runat="server" Text='<%#Eval("sender_Name") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                       <asp:TemplateField HeaderText="Description">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtdescription" runat="server" Text='<%#Eval("description") %>' CssClass="form-control" Style="border-color: #CACECE; border-radius: 5px;"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbldescription" runat="server" Text='<%#Eval("description") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                       <asp:TemplateField HeaderText="Recipient Address">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtrecipient_address" runat="server" Text='<%#Eval("recipient_address") %>' CssClass="form-control" Style="border-color: #CACECE; border-radius: 5px;"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblrecipient_address" runat="server" Text='<%#Eval("recipient_address") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Expedited">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtexpedited" runat="server" Text='<%#Eval("expedited") %>' CssClass="form-control" Style="border-color: #CACECE; border-radius: 5px;" ReadOnly="true"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblexpedited" runat="server" Text='<%#Eval("expedited") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                           <asp:TemplateField HeaderText="Shipment Type">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtshipment_Type" runat="server" Text='<%#Eval("shipment_Type") %>' CssClass="form-control" Style="border-color: #CACECE; border-radius: 5px;" ReadOnly="true"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblshipment_Type" runat="server" Text='<%#Eval("shipment_Type") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                          

                    <asp:TemplateField HeaderText="Edit Detail" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:ImageButton ID="imgbtnUpdate" CommandName="Update" data-toggle="tooltip" runat="server" ImageUrl="~/Images/update.png" ToolTip="Update" Height="15px" Width="15px" />
                            <asp:ImageButton ID="imgbtnCancel" runat="server" data-toggle="tooltip" CommandName="Cancel" ImageUrl="~/Images/cancel.png" ToolTip="Cancel" Height="15px" Width="15px" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="imgbtnEdit" CommandName="Edit" data-toggle="tooltip" runat="server" ImageUrl="~/Images/edit.png" ToolTip="Edit" Height="15px" Width="15px" />

                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgDelete" CommandName="Delete" runat="server" ImageUrl="~/Images/close.png" ToolTip="Delete" data-toggle="tooltip" OnClick="imgDelete_Click" Height="20px" Width="20px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

