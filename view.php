<?php 
    include_once("config.php");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Include your existing CSS -->
    <link rel="stylesheet" href="css_final.css">

    <!-- Include only the necessary Bootstrap styles for pagination -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Include the DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">

    <title>Asset View</title>

    <style>
        /* Add your existing styles here */
        input[type="text"] {
            margin: 20px;
            position: absolute;
            right: 0;
        }

        /* Responsive styles using media query */
        @media only screen and (max-width: 600px) {
            input[type="text"] {
                width: 100%;
                position: center;
                margin: 20px 0;
            }
        }

        .search {
            width: 250px;
            height: 20px;
            border-radius: 3%;
        }
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

        /* .pagination li {
            margin-right: 5px;
            cursor: pointer;
            padding: 5px;
            border: 1px solid #ccc;
        } */
    </style>
</head>

<body>
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
    <div class="heading">
        <h1>CCET Assets</h1>
        <!-- <input type="text" placeholder="Search Here" id="searchInput" class="search"> -->
    </div>
    <div class="outer-wrapper">
        <div class="table-wrapper">
            <table id="emp-table">
            <thead>
                    <th col-index=1>id</th>
                    <th col-index=2>Asset ID
                        <!-- <select class="table-filter" onchange="filter_rows()">
                            <option value="all"></option>
                        </select> -->
                    </th>

                    <th col-index=3>Asset Location
                        <!-- <select class="table-filter" onchange="filter_rows()">
                            <option value="all"></option>
                        </select> -->
                    </th>
                    <th col-index=4>Date of Purchase
                        <!-- <select class="table-filter" onchange="filter_rows()">
                            <option value="all"></option>
                        </select> -->
                    </th>
                    <th col-index=5>Remarks
                        <!-- <select class="table-filter" onchange="filter_rows()">
                            <option value="all"></option>
                        </select> -->
                    </th>
                    <th>Action</th>

                </thead>
                <tbody id="tableBody">
                    <?php
                    $query = "SELECT * FROM asset_entry";
                    $result = mysqli_query($conn, $query);

                    // Close the database connection when done
                    mysqli_close($conn);
                    $serialNumber = 1;
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr>";
                        echo "<td>" . $row['id'] . "</td>";
                        echo "<td>" . $row['asset_name'] . "</td>";
                        echo "<td>" . $row['asset_loc'] . "</td>";
                        echo "<td>" . $row['dop'] . "</td>";
                        echo "<td>" . $row['remarks'] . "</td>";
                        echo "<td>
                        <a href='delete.php?id=" . $row['id'] . "' class='btn btn-danger'>Delete</a>
                      </td>";
                        echo "</tr>";

                        $serialNumber++;
                    }
                    ?>

                </tbody>
            </table>
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
            <script>
   

    // Add the serial numbers dynamically
    

</script>
        </div>
    </div>
</body>

</html>
