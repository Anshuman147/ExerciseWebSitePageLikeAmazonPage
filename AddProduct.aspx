<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="ExerciseWebSitePageLikeAmazon.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/CSS/Product.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <th rowsapn="2" >
                        <asp:Label ID="heading" runat="server" ForeColor="Green"><h1>Add Product</h1></asp:Label>
                    </th>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" >Product Name</asp:Label><label class="Warning">*</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtProductName"  runat="server" ></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RfvProductName" runat="server" ErrorMessage="Please Enter any Product Name" ControlToValidate="TxtProductName" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">Description</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtDescription"  runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">Category</asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="DlCategory">
                            <asp:ListItem Text="-select-" Value="-1" />
                            <asp:ListItem Text="Phone"  Value="101"/>
                            <asp:ListItem Text="Watch"  Value="102"/>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RfvDlCategory" runat="server" ErrorMessage="Please Enter Type" ControlToValidate="DlCategory" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">Price</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtPrice"  runat="server"></asp:TextBox><br />
                         <asp:RequiredFieldValidator ID="RfvTxtPrice" runat="server" ErrorMessage="Please Enter Price" ControlToValidate="TxtPrice" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">Quantity</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtQuantity"  runat="server"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RfvtxtQuantity" runat="server" ErrorMessage="Please Enter Quantity" ControlToValidate="TxtQuantity" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server">Upload Image</asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload id="FupImage" runat="server"/><br />
                        <asp:RequiredFieldValidator ID="RfvFupImage" runat="server" ErrorMessage="Please select a Image" ControlToValidate="FupImage" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br/>
                        <span class="Warning" color="red">(Image should be either jpg or png)</span>
                         
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="" id="LblMessage" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button class="btn" Text="Save" ID="BtnSave" runat="server" BackColor="#00CC00" ForeColor="Black" OnClick="BtnSave_Click" />
                    </td>
                    <td>
                        <asp:Button class="btn" Text="Cancel" ID="BtnCancel" runat="server" BackColor="Red" ForeColor="White" CausesValidation="false" OnClick="BtnCancel_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
