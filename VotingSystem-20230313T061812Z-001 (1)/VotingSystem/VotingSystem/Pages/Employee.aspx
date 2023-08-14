<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="VotingSystem.Pages.Employee" %>

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
                    <a class="nav-link active" href="Employee.aspx">Employee</a>
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
                <asp:FormView ID="FormView1" CssClass="form-group" runat="server" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource1">
                    <InsertItemTemplate>
                        <div class="form-bg"></div>
                        <div class="form-modal">
                            <h1>Add Department</h1>
                            <label>
                                Employee Id:
                                    <asp:TextBox ID="EMPLOYEEIDTextBox" runat="server" Text='<%# Bind("EMPLOYEEID") %>' />
                            </label>
                            <label>
                                Employee Name:
                                    <asp:TextBox ID="EMPLOYEENAMETextBox" runat="server" Text='<%# Bind("EMPLOYEENAME") %>' />
                            </label>
                            <label>
                                DOB:
                                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                            </label>
                            <label>
                                Contact:
                                    <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                            </label>
                            <label>
                                Department:
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DEPARTMENTNAME" DataValueField="DEPARTMENTID" SelectedValue='<%# Bind("DEPARTMENTID") %>'>
                                    </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENTID&quot;, &quot;DEPARTMENTNAME&quot; FROM &quot;DEPARTMENT&quot;"></asp:SqlDataSource>
                            </label>
                            <label>
                                Role:
                                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="RoleDropDown" DataTextField="TITLE" DataValueField="ROLEID" SelectedValue='<%# Bind("ROLEID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="RoleDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLEID&quot;, &quot;TITLE&quot; FROM &quot;ROLE&quot;"></asp:SqlDataSource>
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
                    <asp:GridView ID="GridView1" CssClass="table table-light table-hover table-bordered"  runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource1" PageSize="5">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" DeleteImageUrl="~/images/delete.png" EditImageUrl="~/images/update.png" HeaderText="Action" />
                            <asp:BoundField DataField="EMPLOYEEID" HeaderText="EMPLOYEEID" ReadOnly="True" SortExpression="EMPLOYEEID" />
                            <asp:BoundField DataField="EMPLOYEENAME" HeaderText="EMPLOYEENAME" SortExpression="EMPLOYEENAME" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                            <asp:BoundField DataField="DEPARTMENTID" HeaderText="DEPARTMENTID" SortExpression="DEPARTMENTID" />
                            <asp:TemplateField HeaderText="Department Name">
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DepartmentNameDataSource" DataTextField="DEPARTMENTNAME" DataValueField="DEPARTMENTID" Enabled="False" SelectedValue='<%# Bind("DEPARTMENTID") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="DepartmentNameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENTID&quot;, &quot;DEPARTMENTNAME&quot; FROM &quot;DEPARTMENT&quot;"></asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ROLEID" HeaderText="ROLEID" SortExpression="ROLEID" />
                            <asp:TemplateField HeaderText="Role">
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="RoleNameData" DataTextField="TITLE" DataValueField="ROLEID" Enabled="False" SelectedValue='<%# Bind("ROLEID") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="RoleNameData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLEID&quot;, &quot;TITLE&quot; FROM &quot;ROLE&quot;"></asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;EMPLOYEE&quot; WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID" InsertCommand="INSERT INTO &quot;EMPLOYEE&quot; (&quot;EMPLOYEEID&quot;, &quot;EMPLOYEENAME&quot;, &quot;DOB&quot;, &quot;CONTACT&quot;, &quot;DEPARTMENTID&quot;, &quot;ROLEID&quot;) VALUES (:EMPLOYEEID, :EMPLOYEENAME, :DOB, :CONTACT, :DEPARTMENTID, :ROLEID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEEID&quot;, &quot;EMPLOYEENAME&quot;, &quot;DOB&quot;, &quot;CONTACT&quot;, &quot;DEPARTMENTID&quot;, &quot;ROLEID&quot; FROM &quot;EMPLOYEE&quot;" UpdateCommand="UPDATE &quot;EMPLOYEE&quot; SET &quot;EMPLOYEENAME&quot; = :EMPLOYEENAME, &quot;DOB&quot; = :DOB, &quot;CONTACT&quot; = :CONTACT, &quot;DEPARTMENTID&quot; = :DEPARTMENTID, &quot;ROLEID&quot; = :ROLEID WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID">
                        <DeleteParameters>
                            <asp:Parameter Name="EMPLOYEEID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="EMPLOYEEID" Type="String" />
                            <asp:Parameter Name="EMPLOYEENAME" Type="String" />
                            <asp:Parameter Name="DOB" Type="DateTime" />
                            <asp:Parameter Name="CONTACT" Type="String" />
                            <asp:Parameter Name="DEPARTMENTID" Type="String" />
                            <asp:Parameter Name="ROLEID" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="EMPLOYEENAME" Type="String" />
                            <asp:Parameter Name="DOB" Type="DateTime" />
                            <asp:Parameter Name="CONTACT" Type="String" />
                            <asp:Parameter Name="DEPARTMENTID" Type="String" />
                            <asp:Parameter Name="ROLEID" Type="String" />
                            <asp:Parameter Name="EMPLOYEEID" Type="String" />
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
