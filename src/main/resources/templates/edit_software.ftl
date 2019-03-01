<#import "parts/header.ftl" as c>

<@c.page>
<div class="container">
    <h2>Edit Software Details</h2>
    <div>
        <form class="form-horizontal" action="/softwares" method="post">
            <div class="form-group">
            </div>
            <div class="form-group">
                <div class="col-sm-10">
                    <input type="hidden" name="id" value="${software.id}">
                </div>
            </div>
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <div class="form-group">
                <label class="control-label col-sm-10">Name:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="name" value="${software.name}">
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