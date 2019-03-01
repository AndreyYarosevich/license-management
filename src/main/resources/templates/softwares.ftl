<#import "parts/header.ftl" as c>

<@c.page>
<div class="container">
    <div>
        <h2>Softwares</h2>
        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <#list softwares as software>
            <tr>
                <td>${software.id}</td>
                <td>${software.name}</td>
                <td><a href="/softwares/edit/${software.id}" class="btn btn-outline-secondary">Edit</a></td>
                <td><a href="/softwares/delete/${software.id}" class="btn btn-outline-danger">Delete</a></td>
            </tr>
            </#list>
        </table>
    </div>
</div>
</@c.page>