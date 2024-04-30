<%@ Page Title="" Language="C#" MasterPageFile="~/BloodMasterpage.Master" AutoEventWireup="true" CodeBehind="DonorList.aspx.cs" Inherits="BloodDonationManagement.DonorList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="SBG">
        Search By Blood-Group
    <asp:TextBox ID="SearchBG" runat="server" CssClass="SBG1"></asp:TextBox>

        <asp:Button ID="btnSBG" runat="server" Text="Search" CssClass="btnBGCSS" OnClick="btnSID_Click" />

    </div>

    <div class="SCity">
        Search By City
        <asp:TextBox ID="SearchCity" runat="server" CssClass="SCity1"></asp:TextBox>

        <asp:Button ID="btnSCity" runat="server" Text="Search" CssClass="btnCityCSS" OnClick="btnSBG_Click" />
    </div>

    <asp:Button ID="btnEditData" runat="server" Text="Edit Data" CssClass="btnEdit" OnClick="btnEditData_Click" />

    <div class="gvCSS">
        <asp:GridView ID="gvBlood" runat="server" OnRowDataBound="gvBlood_RowDataBound" CssClass="gvCSS1" AlternatingRowStyle-HorizontalAlign="Center" AlternatingRowStyle-BorderWidth="4" BorderWidth="10" BorderStyle="Double" BorderColor="Black"></asp:GridView>
    </div>
    <br />

    <div class="gvSearch">
        <asp:GridView ID="gvSerchDonor" runat="server" CssClass="gvSerchCSS" AlternatingRowStyle-HorizontalAlign="Center" AlternatingRowStyle-BorderWidth="4" BorderWidth="10" BorderStyle="Double" BorderColor="Black"></asp:GridView>
    </div>


    <style>
        .gvSearch {
            margin-left: 100px;
            margin-top: 20px;
            text-align: center;
        }

            .gvSearch th {
                padding: 4px 4px;
                color: #000000;
                background: #99CCFF;
                font-size: 0.9em;
                border: solid 3px black;
            }

            .gvSearch td {
                background-color: mintcream;
                font-weight: bold;
                font-size: 14px;
                padding: 5px;
                border: solid 3px black;
                color: black;
            }

        .gvSerchCSS {
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        .btnEdit {
            position: absolute;
            margin-top: 250px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            background-color: orangered;
            color: white;
            border-radius: 10px;
            font-size: 20px;
            margin-left: 860px;
            width: 180px;
        }

            .btnEdit:hover {
                background-color: red;
                color: papayawhip;
                font-weight: bold;
                cursor: pointer;
            }

        .btnBGCSS {
            margin-top: 15px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            background-color: orangered;
            color: white;
            border-radius: 10px;
            font-size: 15px;
            margin-left: 20px;
            width: 120px;
        }

            .btnBGCSS:hover {
                background-color: red;
                color: papayawhip;
                font-weight: bold;
                cursor: pointer;
            }

        .btnCityCSS {
            margin-top: 15px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            background-color: orangered;
            color: white;
            border-radius: 10px;
            font-size: 15px;
            margin-left: 20px;
            width: 120px;
        }

            .btnCityCSS:hover {
                background-color: red;
                color: papayawhip;
                font-weight: bold;
                cursor: pointer;
            }

        .gvCSS {
            background-color: white;
            margin-left: 100px;
            margin-top: 20px;
            text-align: center;
        }

            .gvCSS th {
                padding: 4px 4px;
                color: #000000;
                background: #99CCFF;
                font-size: 0.9em;
                border: solid 3px black;
            }

            .gvCSS td {
                font-weight: bold;
                font-size: 15px;
                padding: 5px;
                border: solid 3px black;
                color: black;
            }

        .gvCSS1 {
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        .SBG {
            font-size: 20px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            position: absolute;
            margin-top: 50px;
            margin-left: 720px;
        }

        .SCity {
            font-size: 20px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            position: absolute;
            margin-top: 140px;
            margin-left: 730px;
        }


        .btnCityCSS:hover {
            background-color: red;
            color: papayawhip;
            font-weight: bold;
            cursor: pointer;
        }

        .SCity1 {
            text-align: center;
            background-color: #FFEBD8;
            color: Red;
            font-size: 20px;
            width: 180px;
            height: 25px;
            border-radius: 13px;
            cursor: pointer;
        }

        .SBG1 {
            text-align: center;
            background-color: #FFEBD8;
            color: Red;
            font-size: 20px;
            width: 100px;
            height: 25px;
            border-radius: 13px;
            cursor: pointer;
        }
    </style>

</asp:Content>
