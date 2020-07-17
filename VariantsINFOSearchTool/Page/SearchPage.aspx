<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchPage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="Textsearch" Width="148px"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Panel ID="Panel1" runat="server" Height="171px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Subject" DataSourceID="SqlDataSource1" Visible ="true">
                <Columns>
                    <asp:BoundField DataField="Subject" HeaderText="Subject" ReadOnly="True" SortExpression="Subject" />
                    <asp:BoundField DataField="POS" HeaderText="POS" SortExpression="POS" />
                    <asp:BoundField DataField="CHROM" HeaderText="CHROM" SortExpression="CHROM" />
                    <asp:BoundField DataField="REF" HeaderText="REF" SortExpression="REF" />
                    <asp:BoundField DataField="ALT" HeaderText="ALT" SortExpression="ALT" />
                </Columns>
            </asp:GridView>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString2 %>" ProviderName="<%$ ConnectionStrings:testConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM `variants`"></asp:SqlDataSource>
    </form>
</body>
</html>
