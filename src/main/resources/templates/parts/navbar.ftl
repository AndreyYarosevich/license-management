<#include "security.ftl">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="/">License Management</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/employees">Employees List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/departments">Department List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/softwares">Software List</a>
            </li>
            </#if>
            <li class="nav-item">
                <a class="nav-link" href="/accountings">Accounting List</a>
            </li>
            <#if isAdmin>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                   data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Add
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/employees/add">employee</a>
                    <a class="dropdown-item" href="/departments/add">department</a>
                    <a class="dropdown-item" href="/softwares/add">software</a>
                    <a class="dropdown-item" href="/accountings/add">accountings</a>
                </div>
            </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/users">User List</a>
            </li>
            </#if>
        </ul>
        <div class="navbar-text mr-5"><h1>${name}</h1></div>
        <div class="navbar-text">
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <input class="btn btn-outline-dark my-2 my-sm-0" type="submit" value="Sign Out"/>
            </form>
        </div>
    </div>
</nav>