<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}" />

    <title>Users List</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

    <title>Simple Login System in Laravel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
</head>

<body class="antialiased">
    <div class="container">
        <h1>User List</h1>
        <table class="table table-bordered data-table">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Email</th>
                    <th width="100px">Action</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</body>
<script type="text/javascript">
    $(function() {

        var table = $('.data-table').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('users.list') }}",
            columns: [{
                    data: 'id',
                    name: 'id'
                },
                {
                    data: 'email',
                    name: 'email'
                },
                {
                    data: 'action',
                    name: 'action',
                    orderable: false,
                    searchable: false
                },
            ],
            columnDefs: [
                { width: '50px', targets: 0 }, //step 2, column 1 out of 4
                { width: '300px', targets: 1 }, //step 2, column 2 out of 4
                { width: '200px', targets: 2 }  //step 2, column 3 out of 4
            ]
        });

    });

    function sendLink(id) {
        console.log(id);
        var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            /* the route pointing to the post function */
            url: 'api/send/link',
            type: 'POST',
            /* send the csrf-token and the input to the controller */
            data: {
                _token: CSRF_TOKEN,
                id: id
            },
            success: function(data) {
                if (data.status == 1) {
                    alert("Link send successfully");
                }
            }
        });
    }

    function signout(id) {
        console.log(id);
        var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            /* the route pointing to the post function */
            url: 'signout',
            type: 'POST',
            /* send the csrf-token and the input to the controller */
            data: {
                _token: CSRF_TOKEN,
                id: id
            },
            success: function(data) {
                if (data.status == 1) {
                    alert("User link expired successfully...");
                }
            }
        });
    }
</script>

</html>
