<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Shipments._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Shipment List with below details</h1>
        <p class="lead">Based on assignment I have implemented the task, Please refer below points</p>
        <p><a href="Shipment_List.aspx" class="btn btn-primary btn-lg">View Shipment List &raquo;</a></p>
        <p>A company called ABC Logistics needs a web application that has the following features: <br />
        1. List of shipments <br />2. Create a shipment  <br />3. Delete a shipment  <br /> <br />A shipment has the following properties:  <br />
        1. Sender Name  <br />2. Description  <br />3. Recipient Address  <br />4. Expedited (True / False)  <br />5. Shipment Type (LTL, Volume LTL, Truckload)</p>
    </div>

</asp:Content>
