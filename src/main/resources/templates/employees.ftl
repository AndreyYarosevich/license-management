<#import "parts/header.ftl" as c>

<@c.page>
<div class="container">
    <div>
        <h2>All Employees</h2>
        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Email</th>
                <th>Department</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
             <#list employees as employee>
            <tr>
                <td>${employee.id}</td>
                <td>${employee.firstName}</td>
                <td>${employee.lastName}</td>
                <td>${employee.email}</td>
                <td>${employee.department.name}</td>
                <td><a href="${'/employees/edit/' + employee.id}" class="btn btn-outline-secondary">Edit</a></td>
                <td><a href="${'/employees/delete/' + employee.id}" class="btn btn-outline-danger">Delete</a></td>
            </tr>
             </#list>
        </table>
    </div>
</div>
</@c.page>