<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Navbar.aspx.cs" Inherits="VotingSystem.Component.Navbar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-3 px-5">
        <a class="navbar-brand" href="#">Navbar </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarText">
            <ul class="navbar-nav mr-auto d-inline-flex">
                <li class="nav-item active">
                    <a class="nav-link" href="Home.aspx">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Employee.aspx">Employee</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Department.aspx">Department</a>
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
</body>
</html>
