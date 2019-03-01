<#import "parts/header.ftl" as c>

<@c.page>
<div class="container">
    <h2>Edit Employee Details</h2>
    <div>
        <form class="form-horizontal" action="/employees" method="post">
            <div class="form-group">
            </div>
            <div class="form-group">
                <div class="col-sm-10">
                    <input type="hidden" name="id" value="${employee.id}">
                </div>
            </div>
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <div class="form-group">
                <label class="control-label col-sm-10">First name:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="firstName" value="${employee.firstName}">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-10">Last name:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="lastName" value="${employee.lastName}">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-10">Email:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="email" value="${employee.email}">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-10">Department ID:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="department" value="${employee.department.id}">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-2">
                    <button type="submit" class="btn btn-primary">Edit</button>
                </div>
            </div>
        </form>
    </div>
</div>
</@c.page>