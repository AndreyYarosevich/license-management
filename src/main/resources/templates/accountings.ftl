<#import "parts/header.ftl" as c>

<@c.page>
    <#include "parts/security.ftl">
<div class="container">
    <div>
        <h2>Accountings</h2>
        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>Email</th>
                <th>Software</th>
                <th>license end</th>
                <#if isAdmin>
                <th>Edit</th>
                <th>Delete</th>
                </#if>
            </tr>
             <#list accountings as accounting>
            <tr>
                <td>${accounting.id}</td>
                <td>${accounting.employee.email}</td>
                <td>${accounting.software.name}</td>
                <td>${accounting.licenseEnd}</td>
                <#if isAdmin>
                <td><a href="${'/accountings/edit/' + accounting.id}" class="btn btn-outline-secondary">Edit</a></td>
                <td><a href="${'/accountings/delete/' + accounting.id}" class="btn btn-outline-danger">Delete</a></td>
                </#if>
            </tr>
             </#list>
        </table>
    </div>
</div>
</@c.page>