<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="SampleNetApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>To Do Application</h1>
        New
        Task:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
        Due Date:<asp:Calendar ID="Calendar1" runat="server" SelectedDate="07/03/2020 13:58:47"></asp:Calendar>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="task" HeaderText="task" SortExpression="task" />
                <asp:BoundField DataField="due" HeaderText="due" SortExpression="due" />
            </Columns>
        </asp:GridView>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Add Task" />
        <br />
        <br />
        List of tasks:<br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PowerBIConnectionString %>" SelectCommand="SELECT * FROM [tasks]"></asp:SqlDataSource>
    </div>

</asp:Content>
