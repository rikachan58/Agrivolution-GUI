<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddMCU.aspx.cs" Inherits="Agrivolution.AddMCU" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: large">
        <strong>Add a Micro Control Unit</strong></p>
    <p>
        &nbsp;</p>
    <p style="font-family: Arial; font-size: medium">
        <asp:Label ID="mcuIdLabel" runat="server" Text="MCU ID Number"></asp:Label>
        <asp:TextBox ID="ID_text" runat="server" Height="25px" Width="240px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Location</p>
    <p>
        &nbsp;<asp:Label ID="facilityLabel" runat="server" Text="Facility"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="facilityList" runat="server" DataSourceID="newfacility" DataTextField="Facility" DataValueField="Facility">
            <asp:ListItem>Other...</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="newfacility" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Facility] FROM [MCU]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;
        <asp:Label ID="roomLabel" runat="server" Text="Room"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="roomList" runat="server" DataSourceID="newRoom" DataTextField="Room" DataValueField="Room">
            <asp:ListItem>Other...</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="newRoom" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Room] FROM [MCU]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;
        <asp:Label ID="groupLabel" runat="server" Text="Group"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="groupList" runat="server" DataSourceID="GroupNames" DataTextField="GroupName" DataValueField="GroupName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="GroupNames" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [GroupName] FROM [MCU]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;
        <asp:Label ID="typeLabel" runat="server" Text="Type"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="typeList" runat="server" DataSourceID="newType" DataTextField="Type" DataValueField="Type">
            <asp:ListItem>Other...</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="newType" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Type] FROM [MCU]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="addButton" runat="server" Text="Add MCU" OnClick="CreateMCU" />
    </p>
</asp:Content>
