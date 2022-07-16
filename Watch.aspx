<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Watch.aspx.cs" Inherits="ExerciseWebSitePageLikeAmazon.Watch" %>
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
    
    <asp:DataList ID="DlProduct" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
                    <table class="table">
                        <tr>
                            <td>
                                <asp:Image ID="ImgProduct" runat="server" ImageUrl='<%#Eval("ImagePath") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text='<%#Eval("ProductName") %>' ID="LblProductName" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text='<%#Eval("Price","{0:c}") %>' ID="LblPrice" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button Text="Add to Cart" ID="BtnAdd" runat="server" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
    </asp:DataList>
    
</asp:Content>
