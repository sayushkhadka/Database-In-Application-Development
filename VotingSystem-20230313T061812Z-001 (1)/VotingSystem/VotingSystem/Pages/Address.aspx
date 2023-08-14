<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="VotingSystem.Pages.Address" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="/styles/style.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-3 px-5">
        <a class="navbar-brand" href="#">ONLINE VOTING SYSTEM </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarText">
            <ul class="navbar-nav mr-auto d-inline-flex">
                <li class="nav-item ">
                    <a class="nav-link" href="Home.aspx">Home</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="Department.aspx">Department</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Employee.aspx">Employee</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Job.aspx">Job</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Role.aspx">Role</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="Address.aspx">Address</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="wrapper">
        <div class="content-container">
            <form id="form1" runat="server">
                <asp:FormView ID="FormView1" CssClass="form-group" runat="server" DataKeyNames="ADDRESSID" DataSourceID="SqlDataSource1">
                    <InsertItemTemplate>
                        <div class="form-bg"></div>
                        <div class="form-modal">
                            <h1>Add Address</h1>
                            <label>
                                Address Id:
                        <asp:TextBox ID="ADDRESSIDTextBox" runat="server" Text='<%# Bind("ADDRESSID") %>' />
                            </label>
                            <label>
                                Street No:
                        <asp:TextBox ID="STREETNOTextBox" runat="server" Text='<%# Bind("STREETNO") %>' />
                            </label>
                            <label>
                                Postal Code:
                        <asp:TextBox ID="POSTALCODETextBox" runat="server" Text='<%# Bind("POSTALCODE") %>' />
                            </label>
                            <label>
                                Address Type:
                        <asp:TextBox ID="ADDRESSTYPETextBox" runat="server" Text='<%# Bind("ADDRESSTYPE") %>' />
                            </label>
                            <label>
                                City:
                        <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                            </label>
                            <label>
                                Country:
                        <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                            </label>
                            <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-secondary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:LinkButton ID="NewButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>

                <div class="grid-view table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table table-light table-hover table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESSID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" PageSize="5">
                        <Columns>
                            <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="ADDRESSID" HeaderText="ADDRESSID" ReadOnly="True" SortExpression="ADDRESSID" />
                            <asp:BoundField DataField="STREETNO" HeaderText="STREETNO" SortExpression="STREETNO" />
                            <asp:BoundField DataField="POSTALCODE" HeaderText="POSTALCODE" SortExpression="POSTALCODE" />
                            <asp:BoundField DataField="ADDRESSTYPE" HeaderText="ADDRESSTYPE" SortExpression="ADDRESSTYPE" />
                            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                            <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESSID&quot; = :ADDRESSID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESSID&quot;, &quot;STREETNO&quot;, &quot;POSTALCODE&quot;, &quot;ADDRESSTYPE&quot;, &quot;CITY&quot;, &quot;COUNTRY&quot;) VALUES (:ADDRESSID, :STREETNO, :POSTALCODE, :ADDRESSTYPE, :CITY, :COUNTRY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;STREETNO&quot; = :STREETNO, &quot;POSTALCODE&quot; = :POSTALCODE, &quot;ADDRESSTYPE&quot; = :ADDRESSTYPE, &quot;CITY&quot; = :CITY, &quot;COUNTRY&quot; = :COUNTRY WHERE &quot;ADDRESSID&quot; = :ADDRESSID">
                        <DeleteParameters>
                            <asp:Parameter Name="ADDRESSID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ADDRESSID" Type="String" />
                            <asp:Parameter Name="STREETNO" Type="String" />
                            <asp:Parameter Name="POSTALCODE" Type="String" />
                            <asp:Parameter Name="ADDRESSTYPE" Type="String" />
                            <asp:Parameter Name="CITY" Type="String" />
                            <asp:Parameter Name="COUNTRY" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="STREETNO" Type="String" />
                            <asp:Parameter Name="POSTALCODE" Type="String" />
                            <asp:Parameter Name="ADDRESSTYPE" Type="String" />
                            <asp:Parameter Name="CITY" Type="String" />
                            <asp:Parameter Name="COUNTRY" Type="String" />
                            <asp:Parameter Name="ADDRESSID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </form>
        </div>
    </div>
</body>
<script>
    let cancel = document.getElementById('FormView1_InsertCancelButton'),
        modalBG = document.querySelector('.form-bg');

    modalBG.addEventListener('click', () => {
        cancel.click();
    })
</script>
</html>
