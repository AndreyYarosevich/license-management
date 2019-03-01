<#import "parts/header.ftl" as c>

<@c.page>
<div class="container">
    <div>
        <h2>Departments</h2>

        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <#list departments as department>
            <tr>
                <td>${department.id}</td>
                <td>${department.name}</td>
                <td><a href="/departments/edit/${department.id}" class="btn btn-outline-secondary">Edit</a></td>
                <td><a href="/departments/delete/${department.id}" class="btn btn-outline-danger">Delete</a></td>
            </tr>
            </#list>
        </table>

    </div>
</div>
</@c.page>