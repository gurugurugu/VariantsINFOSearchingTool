<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SavePage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>

                        <asp:Label Text="Subject" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" />
                        </td>
                    <td>

                        <asp:Label Text="CHROM" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox2" runat="server" />
                        </td>
                    <td>

                        <asp:Label Text="Position" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox3" runat="server" />
                        </td>
                    <td>

                        <asp:Label Text="REF" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox4" runat="server" />
                        </td>
                   
                    <td>

                        <asp:Label Text="ALT" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox5" runat="server" />
                        </td>



             
                  




                </tr>


            </table>
        </div>
    </form>
</body>
</html>
