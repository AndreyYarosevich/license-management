<#import "parts/header.ftl" as c>

<@c.page>
<div class="container">
    <h2>Edit User Details</h2>
    <div>
        <form class="form-horizontal" action="/users" method="post">
            <div class="form-group">
                <label class="control-label col-sm-10">Username:</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" name="username" value="${user.username}">
                </div>
            </div>
    <#list roles as role>
    <div>
        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>
            <input type="hidden" value="${user.id}" name="userId">
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <button type="submit">Save</button>
        </form>
    </div>
</div>
</@c.page>