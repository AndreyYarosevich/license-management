<#import "parts/header.ftl" as c>

<@c.page>
<div class="container">
    <h2>Add software</h2>
    <div>
        <form class="form-horizontal" action="/softwares" method="post">
            <div class="form-group">
            </div>
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <div class="form-group">
                <label class="control-label col-sm-10">Name:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="name">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-2">
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </div>

        </form>
    </div>
</div>
</@c.page>