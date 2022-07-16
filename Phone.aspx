<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Phone.aspx.cs" Inherits="ExerciseWebSitePageLikeAmazon.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .dataList {
            padding: 20px;
        }

        span {
            font-size: 15px;
            font-weight: bold;
        }

        input[type=submit]{
            padding:5px;            
            font-weight:bold;
            background-color:#00ff21;
            border-radius:6px;
            cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
     <div>
            <asp:DataList ID="DlProduct" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Image  ID="ImgProduct" ImageUrl='<%#Eval("Imagepath") %>' runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LblProductName" Text='<%#Eval("ProductName") %>' runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LblPrice" Text='<%#Eval("Price","{0:c}") %>' runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button Text="Add to Cart" ID="BtnAdd" runat="server"  />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
</asp:Content>
