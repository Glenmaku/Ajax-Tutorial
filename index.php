<?php session_start(); ?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" conte nt="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="header-text">
            <h1>PHP SAERCH FILTER</h1>

            <form action="" method="GET">
            <div class="input-group mb-3">
            <input type="text" name="search" value="<?php if(isset($_GET['search'])) {echo $_GET['search']; } ?>" class="form-control" placeholder="Search Data">
            <button type="submit" class="btn btn-primary">Search</button>         
            </div>
            </form>
        </div>

        <div class="container-table">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>FIRST NAME</th>
                        <th>LAST NAME</th>
                        <th>AGE</th>
                        <th>GENDER</th>
                        <th>ADDRESS</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $con = mysqli_connect("localhost","root","", "lagunahillsdata");

                    if(isset($_GET['search']))
                    {
                        $filtervalues = $_GET['search'];
                        $query = "SELECT * FROM homeownerdb3 WHERE CONCAT(firstname,lastname,age,gender,address) LIKE '%$filtervalues%' ";
                        $query_run = mysqli_query($con, $query);

                        if(mysqli_num_rows($query_run) > 0)
                        {
                            foreach($query_run as $items)
                            {
                                 ?>
                                 <tr>
                                    <td> <?=$items['id']  ?> </td>
                                    <td> <?=$items['firstname']  ?> </td>
                                    <td> <?=$items['lastname']  ?> </td>
                                    <td> <?=$items['age']  ?> </td>
                                    <td> <?=$items['gender']  ?> </td>
                                    <td> <?=$items['address']  ?> </td>
                                 </tr> 
            
                                 <?php
                            }
                        }
                        else
                        {
                            ?>
                                <tr>
                                   <td colspan="6">No Record Found</td>
                                </tr>   
                            <?php
                        }
                    }

                    ?>

                    
    <div class="container">
        <div class="text">
            <h1>WASSUP MGA PRE!</h1>
            <br>
            <h1>JSON and AJAX</h1>
            <button id="btn">Fetch Info for 3 New Animals</button>
        </div>
    </div>
    <div id="animal-info"></div>
    </header>
    <script src="main.js"></script>

                </tbody>
            </table>
        </div>

    </div>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <script src="main.js">

        var request = new XMLHttpRequest();
        var method = "GET";
        var url = "code.php";
        var asynchronous = true;

        request.open(method, url, asynchronous);
        //send req

        request.send();

        // receieve response
        request.onreadystatechange = function(){
            if (this.readyState == 4 && this.status == 200)
            {
                alert(this.responseText);
                
            }
        }





    </script>
</body>
</html>