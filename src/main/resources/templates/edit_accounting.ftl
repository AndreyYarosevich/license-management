<#import "parts/header.ftl" as c>
<#import "/spring.ftl" as spring/>

<@c.page>
<div class="container">
    <h2>Edit Accountings Details</h2>
    <div>
        <form class="form-horizontal" action="/accountings" method="post">
            <div class="form-group">
            </div>
            <div class="form-group">
                <div class="col-sm-10">
                    <input type="hidden" name="id" value="${accounting.id}">
                </div>
            </div>
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <div class="form-group">
                <label class="control-label col-sm-10">Employee ID:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="employee" value="${accounting.employee.id}">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-10">Software ID:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="software" value="${accounting.software.id}">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-10">License end:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="licenseEnd" value="${accounting.licenseEnd}">
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