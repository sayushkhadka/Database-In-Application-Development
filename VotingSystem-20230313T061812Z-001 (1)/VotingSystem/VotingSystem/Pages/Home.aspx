<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="VotingSystem.Pages.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="/styles/style.css" rel="stylesheet"/>
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
                    <a class="nav-link active" href="Home.aspx">Home</a>
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
                    <a class="nav-link" href="Role.aspx">Role</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Address.aspx">Address</a>
                </li>
            </ul>
        </div>
    </nav>

    <form id="form1" class="px4" runat="server" style="max-width: 1100px; margin: auto;">
        <div class="grid-card" style=""max-width: 900px">
            <div class="card text-white border-dark mb-3" style="max-width: 18rem;">
                <div class="card-body text-primary">
                    <h5 class="card-title">Card Employee</h5>
                    <h5 class="card-title">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EmployeeCount" DataTextField="COUNT(*)" DataValueField="COUNT(*)" Enabled="False">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="EmployeeCount" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM EMPLOYEE"></asp:SqlDataSource>
                    </h5>
                </div>
            </div>
            <div class="card text-white border-dark mb-3" style="max-width: 18rem;">
                <div class="card-body text-primary">
                    <h5 class="card-title">Department</h5>
                    <h5 class="card-title">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DepartmentCount" DataTextField="EXPR1" DataValueField="EXPR1" Enabled="False">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="DepartmentCount" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) AS EXPR1 FROM DEPARTMENT"></asp:SqlDataSource>
                    </h5>
                </div>
            </div>
            <div class="card text-white border-dark mb-3" style="max-width: 18rem;">
                <div class="card-body text-primary">
                    <h5 class="card-title">Job</h5>
                    <h5 class="card-title">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="JobCount" DataTextField="EXPR1" DataValueField="EXPR1" Enabled="False">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="JobCount" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) AS EXPR1 FROM JOB"></asp:SqlDataSource>
                    </h5>
                </div>
            </div>
            <div class="card text-white border-dark mb-3" style="max-width: 18rem;">
                <div class="card-body text-primary">
                    <h5 class="card-title">Role</h5>
                    <h5 class="card-title">
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="RoleCount" DataTextField="EXPR1" DataValueField="EXPR1" Enabled="False">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="RoleCount" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) AS EXPR1 FROM &quot;ROLE&quot;"></asp:SqlDataSource>
                    </h5>
                </div>
            </div>
            <div class="card text-white border-dark mb-3" style="max-width: 18rem;">
                <div class="card-body text-primary">
                    <h5 class="card-title">Record</h5>
                    <h5 class="card-title">
                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="RecordCount" DataTextField="EXPR1" DataValueField="EXPR1" Enabled="False">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="RecordCount" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) AS EXPR1 FROM VOTERECORD"></asp:SqlDataSource>
                    </h5>
                </div>
            </div>
            <div class="card text-white border-dark mb-3" style="max-width: 18rem;">
                <div class="card-body text-primary">
                    <h5 class="card-title">Manager</h5>
                    <h5 class="card-title">
                        <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="managerCount" DataTextField="EXPR1" DataValueField="EXPR1" Enabled="False">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="managerCount" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) AS EXPR1 FROM MANAGER"></asp:SqlDataSource>
                    </h5>
                </div>
            </div>
        </div>


        <ul class="nav nav-tabs mt-5">
          <li class="nav-item">
            <a class="nav-link active" id="ehli" href="#">Employee History</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="erli" href="#">Employee Record</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="emli" href="#">Employee of Month</a>
          </li>
        </ul>

        <div>
            <div class="job-history">
                <asp:Panel ID="Panel1" runat="server">

                    <div class="grid-view table-responsive">
                      <asp:GridView ID="GridView1" CssClass="table table-light table-hover table-bordered" runat="server" DataSourceID="EmployeeJobHistory">
                      </asp:GridView>
                    </div>
                <asp:SqlDataSource ID="EmployeeJobHistory" runat="server"></asp:SqlDataSource>
            

            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" DataSourceID="EmployeeDataDrop" DataTextField="EMPLOYEENAME" DataValueField="EMPLOYEEID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="EmployeeDataDrop" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEEID&quot;, &quot;EMPLOYEENAME&quot; FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
            <div class="grid-view table-responsive">
                <asp:GridView ID="GridView2" CssClass="table table-light table-hover table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="HISTORYID" DataSourceID="JobHistory">
                <Columns>
                    <asp:BoundField DataField="HISTORYID" HeaderText="HISTORYID" ReadOnly="True" SortExpression="HISTORYID" />
                    <asp:BoundField DataField="EMPLOYEEID" HeaderText="EMPLOYEEID" SortExpression="EMPLOYEEID" />
                    <asp:BoundField DataField="EMPLOYEENAME" HeaderText="EMPLOYEENAME" SortExpression="EMPLOYEENAME" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="DEPARTMENTID" HeaderText="DEPARTMENTID" SortExpression="DEPARTMENTID" />
                    <asp:BoundField DataField="DEPARTMENTNAME" HeaderText="DEPARTMENTNAME" SortExpression="DEPARTMENTNAME" />
                    <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
                    <asp:BoundField DataField="ROLEID" HeaderText="ROLEID" SortExpression="ROLEID" />
                    <asp:BoundField DataField="STARTDATE" HeaderText="STARTDATE" SortExpression="STARTDATE" />
                    <asp:BoundField DataField="ENDDATE" HeaderText="ENDDATE" SortExpression="ENDDATE" />
                </Columns>
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="JobHistory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT EH.HISTORYID, EH.EMPLOYEEID, E.EMPLOYEENAME, TO_CHAR(E.DOB, 'MON-dd-YYYY') AS DOB, EH.DEPARTMENTID, D.DEPARTMENTNAME, D.DESCRIPTION, EH.ROLEID, EH.STARTDATE, EH.ENDDATE FROM EMPLOYEEHISTORY EH, EMPLOYEE E, DEPARTMENT D WHERE EH.EMPLOYEEID = E.EMPLOYEEID AND EH.DEPARTMENTID = D.DEPARTMENTID AND (EH.EMPLOYEEID = :EMPLOYEE) AND EH.ENDDATE IS NOT NULL">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList7" Name="EMPLOYEE" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            </asp:Panel>
            </div>

            <div class="vote-record none">
                <asp:Panel ID="Panel2" runat="server">
            <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" DataSourceID="EmployeeDataDrop" DataTextField="EMPLOYEENAME" DataValueField="EMPLOYEEID">
            </asp:DropDownList>
                    <div class="grid-view table-responsive">
                <asp:GridView ID="GridView3" CssClass="table table-light table-hover table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="VOTERECORD">
                    <Columns>
                        <asp:BoundField DataField="RECORDID" HeaderText="RECORDID" SortExpression="RECORDID" />
                        <asp:BoundField DataField="VOTERID" HeaderText="VOTERID" SortExpression="VOTERID" />
                        <asp:BoundField DataField="EMPLOYEENAME" HeaderText="EMPLOYEENAME" SortExpression="EMPLOYEENAME" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                        <asp:BoundField DataField="CANDIDATEID" HeaderText="CANDIDATEID" SortExpression="CANDIDATEID" />
                        <asp:BoundField DataField="CANDIDATENAME" HeaderText="CANDIDATENAME" SortExpression="CANDIDATENAME" />
                        <asp:BoundField DataField="CANDIDATECONTACT" HeaderText="CANDIDATECONTACT" SortExpression="CANDIDATECONTACT" />
                        <asp:BoundField DataField="VOTEYEAR" HeaderText="VOTEYEAR" SortExpression="VOTEYEAR" />
                        <asp:BoundField DataField="VOTEMONTH" HeaderText="VOTEMONTH" SortExpression="VOTEMONTH" />
                    </Columns>
                </asp:GridView>
                        </div>
                <asp:SqlDataSource ID="VOTERECORD" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT VR.RECORDID, VR.VOTERID, E.EMPLOYEENAME, TO_CHAR(E.DOB, 'dd-MON-YYYY') AS DOB, E.CONTACT, VR.CANDIDATEID, C.EMPLOYEENAME AS CANDIDATENAME, C.CONTACT AS CANDIDATECONTACT, TO_CHAR(VR.VOTINGYEAR, 'YYYY') AS VOTEYEAR, TO_CHAR(VR.VOTINGMONTH, 'MON') AS VOTEMONTH
FROM VOTERECORD VR, EMPLOYEE E, EMPLOYEE C
WHERE VR.VOTERID = E.EMPLOYEEID AND VR.CANDIDATEID = C.EMPLOYEEID AND VR.VOTERID = :VOTER">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList8" Name="VOTER" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:Panel>
            </div>

            <div class="employee-month none">
                <asp:Panel ID="Panel3" runat="server">
            <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="VOTEYEAR" DataValueField="VOTEYEAR">
            </asp:DropDownList>


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT TO_CHAR(VOTINGYEAR, 'YYYY') AS VOTEYEAR FROM VOTERECORD"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" DataSourceID="VOTEMONTH" DataTextField="VOTEMONTH" DataValueField="VOTEMONTH">
                </asp:DropDownList>
                <asp:SqlDataSource ID="VOTEMONTH" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT TO_CHAR(VOTINGMONTH, 'MON') AS VOTEMONTH FROM VOTERECORD"></asp:SqlDataSource>


            <div class="grid-view table-responsive">
            <asp:GridView ID="GridView4" runat="server" CssClass="table table-light table-hover table-bordered" AutoGenerateColumns="False" DataKeyNames="ADDRESSID" DataSourceID="EmployeeOfMonth">
                <Columns>
                    <%--<asp:BoundField DataField="ADDRESSID" HeaderText="ADDRESSID" ReadOnly="True" SortExpression="ADDRESSID" />
                    <asp:BoundField DataField="STREETNO" HeaderText="STREETNO" SortExpression="STREETNO" />
                    <asp:BoundField DataField="POSTALCODE" HeaderText="POSTALCODE" SortExpression="POSTALCODE" />
                    <asp:BoundField DataField="ADDRESSTYPE" HeaderText="ADDRESSTYPE" SortExpression="ADDRESSTYPE" />
                    <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                    <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />--%>
                </Columns>
            </asp:GridView>
                </div>
                <asp:SqlDataSource ID="EmployeeOfMonth" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;">
                    </asp:SqlDataSource>
            </asp:Panel>
            </div>
        </div>
    </form>
</body>
<script>
    let jh = document.querySelector('.job-history');
    let vr = document.querySelector('.vote-record');
    let em = document.querySelector('.employee-month');
    let ehli = document.getElementById('ehli');
    let erli = document.getElementById('erli');
    let emli = document.getElementById('emli');

    emli.addEventListener('click', () => {
        em.classList.remove('none')
        jh.classList.add('none')
        vr.classList.add('none')

        emli.classList.add('active')
        ehli.classList.remove('active')
        erli.classList.remove('active')
    })

    erli.addEventListener('click', () => {
        vr.classList.remove('none')
        jh.classList.add('none')
        em.classList.add('none')

        emli.classList.remove('active')
        ehli.classList.remove('active')
        erli.classList.add('active')
    })

    ehli.addEventListener('click', () => {
        vr.classList.add('none')
        jh.classList.remove('none')
        em.classList.add('none')

        emli.classList.remove('active')
        ehli.classList.add('active')
        erli.classList.remove('active')
    })
</script>
</html>
