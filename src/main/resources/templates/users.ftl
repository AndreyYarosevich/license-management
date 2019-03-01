<#import "parts/header.ftl" as c>

<@c.page>
<div class="container">
    <div>
        <h2>List of users</h2>
        <table class="table table-striped">
            <tr>
                <th>Username</th>
                <th>Role</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/users/${user.id}" class="btn btn-outline-secondary">Edit</a></td>
                <td><a href="/users/delete/${user.id}" class="btn btn-outline-danger">Delete</a></td>
            </tr>
            </#list>
        </table>
    </div>
</div>
</@c.page>