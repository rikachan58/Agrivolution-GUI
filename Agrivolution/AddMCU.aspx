<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddMCU.aspx.cs" Inherits="Agrivolution.AddMCU" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: large">
        <strong>Add a Micro Control Unit</strong></p>
    <p>
        <asp:HiddenField ID="UserID" runat="server" />
    </p>
    <p style="font-family: Arial; font-size: medium">
        <asp:Label ID="mcuIdLabel" runat="server" Text="MCU ID Number"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ID_text" runat="server" Height="24px" Width="193px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Location</p>
    <p>
        &nbsp;<asp:Label ID="facilityLabel" runat="server" Text="Facility"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="facilityList" runat="server" DataSourceID="Facility" DataTextField="Facility" DataValueField="Facility">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Facility" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Facility] FROM [MCU] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserID" Name="UserName" PropertyName="Value" Type="String" />
            </SelectParameters>
            
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;
        <asp:Label ID="roomLabel" runat="server" Text="Room"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="roomList" runat="server" DataSourceID="Room" DataTextField="Room" DataValueField="Room">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Room" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Room] FROM [MCU] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserID" Name="UserName" PropertyName="Value" Type="String" />
            </SelectParameters>

        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;
        <asp:Label ID="groupLabel" runat="server" Text="Group"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="groupList" runat="server" DataSourceID="Group" DataTextField="GroupName" DataValueField="GroupName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Group" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [GroupName] FROM [MCU] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserID" Name="UserName" PropertyName="Value" Type="String" />
            </SelectParameters>
            
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;
        <asp:Label ID="CropTypeLabel" runat="server" Text="CropType"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="CropType" runat="server" Height="17px" Width="141px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lightLabel" runat="server" Text="Light Schedule (in hours)"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="lightHours" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="addButton" runat="server" Text="Add MCU" OnClick="CreateMCU" />
    </p>
</asp:Content>
