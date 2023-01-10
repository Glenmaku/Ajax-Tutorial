<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<div class="container-entry">
        <div class="row">
            <div class="col-md-12">

                    <?php
                    if(isset($_SESSION['status']))
                    {
                        ?>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <strong>Bing Chilling!</strong> <?php echo $_SESSION['status']?>

                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>

                        <?php
                        unset($_SESSION['status']);
                    }
                    ?>

                <div class="card-header">  
                    <h4>INSERT DATA INTO DATABASE IN PHP</h4>
                </div>
                <div class="card-body">

                    <!-- form kung san sesend ang input to code.php -->
                    <form action="code.php" method="POST">
                        <div class="form-group">
                            <label for="">First Name</label>
                            <input type="text" name="firstname" class="form-control" placeholder="Enter first name">
                        </div>
                        <div class="form-group">
                            <label for="">Last Name</label>
                            <input type="text" name="lastname" class="form-control" placeholder="Enter last name">
                        </div>
                        <div class="form-group">
                            <label for="">Age</label>
                            <input type="text" name="age" class="form-control" placeholder="Enter Age">
                        </div>
                        <div class="form-group">
                            <label for="">Gender</label>
                            <input type="radio" name="gender" value="Male" >Male
                            <input type="radio" name="gender" value="Female">Female
                        </div>

                        <div class="form-group">
                            <label for="">Address</label>
                            <input type="text" name="address" class="form-control" placeholder="Enter Address">
                        </div> 
                        <!-- div ng submit data button -->
                        <div class="form-group">
                            <button type="submit" name="insert_data" class="btn btn-primary">SAVE DATA</button>
                        </div>
                    </form> 
                    <!-- end ng form -->

                </div>
            </div>
        </div>
    </div>, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>