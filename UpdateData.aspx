<%@ Page Title="" Language="C#" MasterPageFile="~/BloodMasterpage.Master" AutoEventWireup="true" CodeBehind="UpdateData.aspx.cs" Inherits="BloodDonationManagement.UpdateData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="gvCSS1">
        <asp:GridView ID="gvBloodUpd" runat="server" OnRowDataBound="gvBloodUpd_RowDataBound" CssClass="gvCSS"></asp:GridView>
    </div>

    <div class="DID">
        Donor ID:
        <asp:TextBox ID="DonID" runat="server" CssClass="DID1"></asp:TextBox>
        <asp:RangeValidator ID="IdVal" runat="server" ControlToValidate="DonID" MinimumValue="1" MaximumValue="10000 " Type="Integer" ErrorMessage="Nuber only" Text=" * Digit Only" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
    </div>


    <div class="DNam">
        Donor Name:
        <asp:TextBox ID="DonName" runat="server" CssClass="DNam1"></asp:TextBox>
        <asp:RegularExpressionValidator ID="NamVal" runat="server" ControlToValidate="DonName" ValidationExpression="^[a-zA-Z ]+$" ForeColor="Red" Text=" * Enter Valid Name" ErrorMessage="Enter Characters" Display="Dynamic"></asp:RegularExpressionValidator>
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

    </div>
    <br />

    <div class="DAge">
        Donor Age:
        <asp:TextBox ID="DonorAge" runat="server" CssClass="DAge1"></asp:TextBox>
        <asp:RangeValidator ID="AgeVal" runat="server" ControlToValidate="DonorAge" MinimumValue="18" MaximumValue="50" Type="Integer" Text=" * Enter Age b/w 18-50" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
    </div>

    <br />

    <div class="DCity">
        Donor City:
        <asp:TextBox ID="DonorCity" runat="server" CssClass="DCity1"></asp:TextBox>
        <asp:RegularExpressionValidator ID="CityVal" runat="server" ControlToValidate="DonorCity" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red" Text=" * Enter Valid Name" ErrorMessage="Enter Characters" Display="Dynamic"></asp:RegularExpressionValidator>
    </div>

    <br />

    <div class="DMOb">
        Donor Mo.:
        <asp:TextBox ID="DonorMob" runat="server" CssClass="DMob1"></asp:TextBox>
        <asp:RegularExpressionValidator ID="MobVal" runat="server" ControlToValidate="DonorMob" ErrorMessage="Digits Only" ValidationExpression="[0-9]{10}" Text=" * Enter Valid Number" ForeColor="red" Display="Dynamic"></asp:RegularExpressionValidator>

    </div>
    <br />

    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btnUpd" />

    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btnDel" OnClick="btnDelete_Click" />



    <style>
        .DID {
            margin-left: 850px;
            margin-top: 100px;
            font-size: 20px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            margin-bottom: 15px;
        }

        .DNam, .BG, .DAge, .DCity, .DMOb {
            margin-left: 850px;
            font-size: 20px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        .DID1, .DNam1, .BG1, .DAge1, .DCity1, .DMob1 {
            text-align: center;
            background-color: #FFEBD8;
            color: Red;
            font-size: 18px;
            width: 122px;
            height: 28px;
            border-radius: 9px;
            cursor: pointer;
        }

        .gvCSS1 {
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            background-color: antiquewhite;
            position: absolute;
            margin-left: 200px;
            top: 200px;
            text-align: center;
        }

        .gvCSS th {
            padding: 5px 5px;
            color: #000000;
            background: #99CCFF;
            font-size: 0.9em;
            border: solid 3px black;
        }

        .gvCSS td {
            font-size: 18px;
            padding: 2px 5px;
            border: solid 3px black;
            color: black;
        }

        .btnUpd {
            margin-top: 15px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            background-color: orangered;
            color: white;
            border-radius: 10px;
            font-size: 20px;
            margin-left: 860px;
            width: 100px;
        }

            .btnUpd:hover {
                cursor: pointer;
                background-color: red;
                color: papayawhip;
                font-weight: bold;
            }

        .btnDel {
            margin-top: 15px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            background-color: orangered;
            color: white;
            border-radius: 10px;
            font-size: 20px;
            margin-left: 50px;
            width: 100px;
            cursor: pointer;
        }

            .btnDel:hover {
                cursor: pointer;
                background-color: red;
                color: papayawhip;
                font-weight: bold;
            }
    </style>

</asp:Content>
