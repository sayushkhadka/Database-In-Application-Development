<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Role.aspx.cs" Inherits="VotingSystem.Pages.Role" %>

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
                    <a class="nav-link" href="Job.aspx">Job</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="Role.aspx">Role</a>
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
                <asp:FormView ID="FormView1" CssClass="form-group" runat="server" DataKeyNames="ROLEID" DataSourceID="SqlDataSource1">
                    <InsertItemTemplate>
                        <div class="form-bg"></div>
                        <div class="form-modal">
                            <h1>Add Role</h1>
                            <label>
                                Role Id:
                                <asp:TextBox ID="ROLEIDTextBox" runat="server" Text='<%# Bind("ROLEID") %>' />
                            </label>
                            <label>
                                Job Id:
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="JobDropDown" DataTextField="JOBTITLE" DataValueField="JOBID" SelectedValue='<%# Bind("JOBID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="JobDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;JOBID&quot;, &quot;JOBTITLE&quot; FROM &quot;JOB&quot;"></asp:SqlDataSource>
                            Tittle:
                                <asp:TextBox ID="TITLETextBox" runat="server" Text='<%# Bind("TITLE") %>' />
                            </label>
                            <label>
                                Description:
                                <asp:TextBox ID="DESCRIPTIONTextBox" runat="server" Text='<%# Bind("DESCRIPTION") %>' />
                            </label>
                            <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-secondary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>

                <div class="grid-view table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table table-light table-hover table-bordered" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ROLEID" DataSourceID="SqlDataSource1" PageSize="5">
                        <Columns>
                            <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="ROLEID" HeaderText="ROLEID" ReadOnly="True" SortExpression="ROLEID" />
                            <asp:BoundField DataField="JOBID" HeaderText="JOBID" SortExpression="JOBID" />
                            <asp:TemplateField HeaderText="Job">
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="JobTableData" DataTextField="JOBTITLE" DataValueField="JOBID" Enabled="False" SelectedValue='<%# Bind("JOBID") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="JobTableData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;JOBID&quot;, &quot;JOBTITLE&quot; FROM &quot;JOB&quot;"></asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="TITLE" HeaderText="TITLE" SortExpression="TITLE" />
                            <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLEID&quot; = :ROLEID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLEID&quot;, &quot;JOBID&quot;, &quot;TITLE&quot;, &quot;DESCRIPTION&quot;) VALUES (:ROLEID, :JOBID, :TITLE, :DESCRIPTION)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ROLE&quot;" UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;JOBID&quot; = :JOBID, &quot;TITLE&quot; = :TITLE, &quot;DESCRIPTION&quot; = :DESCRIPTION WHERE &quot;ROLEID&quot; = :ROLEID">
                        <DeleteParameters>
                            <asp:Parameter Name="ROLEID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ROLEID" Type="String" />
                            <asp:Parameter Name="JOBID" Type="String" />
                            <asp:Parameter Name="TITLE" Type="String" />
                            <asp:Parameter Name="DESCRIPTION" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="JOBID" Type="String" />
                            <asp:Parameter Name="TITLE" Type="String" />
                            <asp:Parameter Name="DESCRIPTION" Type="String" />
                            <asp:Parameter Name="ROLEID" Type="String" />
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
