<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="VotingSystem.Pages.Department" %>

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
                <li class="nav-item">
                    <a class="nav-link" href="Home.aspx">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="Department.aspx">Department</a>
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
                    <a class="nav-link" href="Address.aspx">Address</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="wrapper"> 
        <div class="content-container">
            <form id="form1" runat="server">
                <asp:FormView ID="FormView1" CssClass="form-group" runat="server" DataKeyNames="DEPARTMENTID" DataSourceID="SqlDataSource1">
                    <InsertItemTemplate>
                        <div class="form-bg"></div>
                        <div class="form-modal">
                            <h1>Add Department</h1>
                            <label>
                                Department Id:
                                <asp:TextBox ID="DEPARTMENTIDTextBox" runat="server" Text='<%# Bind("DEPARTMENTID") %>' />
                            </label>
                            <label>
                                Department Name:
                                <asp:TextBox ID="DEPARTMENTNAMETextBox" runat="server" Text='<%# Bind("DEPARTMENTNAME") %>' />
                            </label>
                            <label>
                                Description:
                                <asp:TextBox ID="DESCRIPTIONTextBox" runat="server" Text='<%# Bind("DESCRIPTION") %>' />
                            </label>
                            <label>
                                Location:
                                <asp:TextBox ID="LOCATIONTextBox" runat="server" Text='<%# Bind("LOCATION") %>' />
                            </label>
                            <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-secondary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                    </InsertItemTemplate>

                    <ItemTemplate>
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-primary" aria-pressed="true" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>

                <div class="grid-view table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table table-light table-hover table-bordered" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DEPARTMENTID" DataSourceID="SqlDataSource1" PageSize="5">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action" DeleteImageUrl="~/images/delete.png" EditImageUrl="https://img.icons8.com/sf-regular-filled/256/edit-row.png" />
                            <asp:BoundField DataField="DEPARTMENTID" HeaderText="Departmengt Id" ReadOnly="True" SortExpression="DEPARTMENTID" />
                            <asp:BoundField DataField="DEPARTMENTNAME" HeaderText="Department name" SortExpression="DEPARTMENTNAME" />
                            <asp:BoundField DataField="DESCRIPTION" HeaderText="Description" SortExpression="DESCRIPTION" />
                            <asp:BoundField DataField="LOCATION" HeaderText="Location" SortExpression="LOCATION" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENTID&quot; = :DEPARTMENTID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENTID&quot;, &quot;DEPARTMENTNAME&quot;, &quot;DESCRIPTION&quot;, &quot;LOCATION&quot;) VALUES (:DEPARTMENTID, :DEPARTMENTNAME, :DESCRIPTION, :LOCATION)" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENTNAME&quot; = :DEPARTMENTNAME, &quot;DESCRIPTION&quot; = :DESCRIPTION, &quot;LOCATION&quot; = :LOCATION WHERE &quot;DEPARTMENTID&quot; = :DEPARTMENTID">
                        <DeleteParameters>
                            <asp:Parameter Name="DEPARTMENTID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="DEPARTMENTID" Type="String" />
                            <asp:Parameter Name="DEPARTMENTNAME" Type="String" />
                            <asp:Parameter Name="DESCRIPTION" Type="String" />
                            <asp:Parameter Name="LOCATION" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="DEPARTMENTNAME" Type="String" />
                            <asp:Parameter Name="DESCRIPTION" Type="String" />
                            <asp:Parameter Name="LOCATION" Type="String" />
                            <asp:Parameter Name="DEPARTMENTID" Type="String" />
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
