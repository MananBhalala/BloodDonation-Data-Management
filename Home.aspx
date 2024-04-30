<%@ Page Title="" Language="C#" MasterPageFile="~/BloodMasterpage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BloodDonationManagement.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="hh1">Donate Blood</h1>

    <div class="DID">
        Donor ID:
        <asp:TextBox ID="DonID" runat="server" CssClass="DID1"></asp:TextBox>
        <asp:RangeValidator ID="IdVal" runat="server" ControlToValidate="DonID" MinimumValue="1" MaximumValue="10000 " Type="Integer" ErrorMessage="Nuber only" Text=" * Digit Only" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="ReqID" runat="server" ControlToValidate="DonID" Text=" * Requierd" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

    </div>
    <br />

    <div class="DNam">
        Donor Name:
        <asp:TextBox ID="DonName" runat="server" CssClass="DNam1"></asp:TextBox>
        <asp:RegularExpressionValidator ID="NamVal" runat="server" ControlToValidate="DonName" ValidationExpression="^[a-zA-Z ]+$" ForeColor="Red" Text=" * Enter Valid Name" ErrorMessage="Enter Characters" Display="Dynamic"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="ReqName" runat="server" ControlToValidate="DonName" Text=" * Requierd" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <br />

    <div class="BG">
        Blood Group:
        <asp:DropDownList ID="ddlBG" runat="server" CssClass="BG1">
            <asp:ListItem Value="">Select</asp:ListItem>
            <asp:ListItem>A Pos</asp:ListItem>
            <asp:ListItem>B Pos</asp:ListItem>
            <asp:ListItem>B Neg</asp:ListItem>
            <asp:ListItem>O Pos</asp:ListItem>
            <asp:ListItem>O Neg</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="ReqBG" runat="server" ControlToValidate="ddlBG" Text=" * Requierd" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <br />

    <div class="DAge">
        Donor Age:
        <asp:TextBox ID="DonorAge" runat="server" CssClass="DAge1"></asp:TextBox>
        <asp:RangeValidator ID="AgeVal" runat="server" ControlToValidate="DonorAge" MinimumValue="18" MaximumValue="50" Type="Integer" Text=" * Enter Age b/w 18-50" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="ReqAge" runat="server" ControlToValidate="DonorAge" Text=" * Requierd" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <br />

    <div class="DCity">
        Donor City:
        <asp:TextBox ID="DonorCity" runat="server" CssClass="DCity1"></asp:TextBox>
        <asp:RegularExpressionValidator ID="CityVal" runat="server" ControlToValidate="DonorCity" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red" Text=" * Enter Valid Name" ErrorMessage="Enter Characters" Display="Dynamic"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="ReqCity" runat="server" ControlToValidate="DonorCity" Text=" * Requierd" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>

    <br />

    <div class="DMOb">
        Donor Mo.:
        <asp:TextBox ID="DonorMob" runat="server" CssClass="DMob1"></asp:TextBox>
        <asp:RegularExpressionValidator ID="MobVal" runat="server" ControlToValidate="DonorMob" ErrorMessage="Digits Only" ValidationExpression="[0-9]{10}" Text=" * Enter Valid Number" ForeColor="red" Display="Dynamic"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="ReqMob" runat="server" ControlToValidate="DonorMob" Text=" * Requierd" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

    </div>
    <br />

    <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btnRegister" OnClick="btnRegister_Click" />


    <style>
        .hh1 {
            margin-top: 10px;
            text-align: center;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            text-decoration: underline;
        }

        .DID {
            margin-top: 25px;
            font-size: 25px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            margin-left: 480px;
        }

        .DNam, .BG, .DAge, .DCity, .DMOb {
            font-size: 25px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            margin-left: 480px;
        }

        .DID1, .DNam1, .BG1, .DAge1, .DCity1, .DMob1 {
            text-align: center;
            background-color: #FFEBD8;
            color: Red;
            font-size: 20px;
            width: 180px;
            height: 25px;
            border-radius: 13px;
            cursor: pointer;
        }

        .btnRegister {
            margin-top: 15px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            background-color: orangered;
            color: white;
            border-radius: 10px;
            font-size: 20px;
            margin-left: 560px;
            width: 180px;
        }

            .btnRegister:hover {
                background-color: red;
                color: papayawhip;
                font-weight: bold;
                cursor: pointer;
            }
    </style>
</asp:Content>
