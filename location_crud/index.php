<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Book List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Include the DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">

    <style>
        /* table  td, table th{
        vertical-align:middle;
        text-align:right;
        padding:20px!important;
        } */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        .pagination {
            display: flex;
            list-style: none;
            padding: 0;
        }

    </style>
</head>
<body>
    <div class="container my-4">
        <header class="d-flex justify-content-between my-4">
            <h1>Location List</h1>
            <div>
                <a href="create.php" class="btn btn-primary">Add New Location</a>
            </div>
        </header>
        <?php
        session_start();
        if (isset($_SESSION["create"])) {
        ?>
        <div class="alert alert-success">
            <?php 
            echo $_SESSION["create"];
            ?>
        </div>
        <?php
        unset($_SESSION["create"]);
        }
        ?>
         <?php
        if (isset($_SESSION["update"])) {
        ?>
        <div class="alert alert-success">
            <?php 
            echo $_SESSION["update"];
            ?>
        </div>
        <?php
        unset($_SESSION["update"]);
        }
        ?>
        <?php
        if (isset($_SESSION["delete"])) {
        ?>
        <div class="alert alert-success">
            <?php 
            echo $_SESSION["delete"];
            ?>
        </div>
        <?php
        unset($_SESSION["delete"]);
        }
        ?>
        
        <table class="table table-bordered" id="emp-table">
        <thead>
            <tr>
                <th>#</th>
                <th>asset locations</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody id="tableBody">
        
        <?php
        include('../config.php');
        $sqlSelect = "SELECT * FROM location";
        $result = mysqli_query($conn,$sqlSelect);
        while($data = mysqli_fetch_array($result)){
            ?>
            <tr>
                <td><?php echo $data['loc_id']; ?></td>
                <td><?php echo $data['asset_loc']; ?></td>
                
                <td>
                    <a href="view.php?loc_id=<?php echo $data['loc_id']; ?>" class="btn btn-info">Read More</a>
                    <a href="edit.php?loc_id=<?php echo $data['loc_id']; ?>" class="btn btn-warning">Edit</a>
                    <a href="delete.php?loc_id=<?php echo $data['loc_id']; ?>" class="btn btn-danger">Delete</a>
                </td>
            </tr>
            <?php
        }
        ?>
        </tbody>
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
            <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
            <script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>
            <script>
                $(document).ready(function () {
                    $('#emp-table').DataTable({
                        "paging": true,
                        "lengthChange": false,
                        "searching": true,
                        "ordering": true,
                        "info": true,
                        "autoWidth": false,
                        
                    });

                    // JavaScript for live search with Ajax
                    // $("#searchInput").on("input", function () {
                    //     var searchText = $(this).val();
                    //     $.ajax({
                    //         url: "search.php",
                    //         method: "POST",
                    //         data: { search: searchText },
                    //         success: function (data) {
                    //             $("#tableBody").html(data);
                    //         }
                    //     });
                    // });
                });
            </script>
</body>
</html>