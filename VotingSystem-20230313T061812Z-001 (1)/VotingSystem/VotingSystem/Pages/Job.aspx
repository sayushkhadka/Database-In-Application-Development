<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="VotingSystem.Pages.Job" %>

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
                    <a class="nav-link" href="Department.aspx">Department</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Employee.aspx">Employee</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link active" href="Job.aspx">Job</a>
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
                <asp:FormView ID="FormView1" CssClass="form-group" runat="server" DataSourceID="SqlDataSource1">
                    <InsertItemTemplate>
                        <div class="form-bg"></div>
                        <div class="form-modal">
                            <h1>Add Department</h1>
                            <label>
                                JOBID:
                        <asp:TextBox ID="JOBIDTextBox" runat="server" Text='<%# Bind("JOBID") %>' />
                            </label>
                            <label>
                                JOBTITLE:
                        <asp:TextBox ID="JOBTITLETextBox" runat="server" Text='<%# Bind("JOBTITLE") %>' />
                            </label>
                            <label>
                                MINSALARY:
                        <asp:TextBox ID="MINSALARYTextBox" runat="server" Text='<%# Bind("MINSALARY") %>' />
                            </label>
                            <label>
                                MAXSALARY:
                        <asp:TextBox ID="MAXSALARYTextBox" runat="server" Text='<%# Bind("MAXSALARY") %>' />
                            </label>
                            <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-secondary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:LinkButton ID="NewButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>

                <div class="grid-view table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table table-light table-hover table-bordered" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="JOBID" DataSourceID="SqlDataSource1" PageSize="5">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action" />
                            <asp:BoundField DataField="JOBID" HeaderText="Job Id" SortExpression="JOBID" />
                            <asp:BoundField DataField="JOBTITLE" HeaderText="Job Title" SortExpression="JOBTITLE" />
                            <asp:BoundField DataField="MINSALARY" HeaderText="Min Salary" SortExpression="MINSALARY" />
                            <asp:BoundField DataField="MAXSALARY" HeaderText="Max Salary" SortExpression="MAXSALARY" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;JOB&quot; WHERE &quot;JOBID&quot; = :JOBID" InsertCommand="INSERT INTO &quot;JOB&quot; (&quot;JOBID&quot;, &quot;JOBTITLE&quot;, &quot;MINSALARY&quot;, &quot;MAXSALARY&quot;) VALUES (:JOBID, :JOBTITLE, :MINSALARY, :MAXSALARY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;JOB&quot;" UpdateCommand="UPDATE &quot;JOB&quot; SET &quot;JOBTITLE&quot; = :JOBTITLE, &quot;MINSALARY&quot; = :MINSALARY, &quot;MAXSALARY&quot; = :MAXSALARY WHERE &quot;JOBID&quot; = :JOBID">
                        <DeleteParameters>
                            <asp:Parameter Name="JOBID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="JOBID" Type="String" />
                            <asp:Parameter Name="JOBTITLE" Type="String" />
                            <asp:Parameter Name="MINSALARY" Type="Decimal" />
                            <asp:Parameter Name="MAXSALARY" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="JOBTITLE" Type="String" />
                            <asp:Parameter Name="MINSALARY" Type="Decimal" />
                            <asp:Parameter Name="MAXSALARY" Type="Decimal" />
                            <asp:Parameter Name="JOBID" Type="String" />
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
