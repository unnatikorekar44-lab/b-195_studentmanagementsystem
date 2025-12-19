<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: #f4f6f9;
    }
    .card {
        margin-top: 50px;
        border-radius: 10px;
    }
</style>

</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow">
                <div class="card-header bg-success text-white text-center">
                    <h4>Add Student</h4>
                </div>

                <div class="card-body">
                    <form action="saveStudent" method="post">

                        <div class="mb-3">
                            <label>Name</label>
                            <input type="text" name="studentName" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label>Email</label>
                            <input type="email" name="studentEmail" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label>Age</label>
                            <input type="number" name="studentAge" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label>Batch No</label>
                            <input type="text" name="batchNumber" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label>Course</label>
                            <input type="text" name="studentCourse" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label>Batch Mode</label>
                            <select name="batchMode" class="form-control">
                                <option>Online</option>
                                <option>Offline</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label>College</label>
                            <input type="text" name="studentCollegeName" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label>Fees</label>
                            <input type="text" name="feesPaid" class="form-control">
                        </div>

                        <div class="d-grid">
                            <button class="btn btn-success">Save Student</button>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>