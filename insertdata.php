<?php 
session_start();
$con = mysqli_connect("localhost", "root","","lagunahillsdata");

if(isset($_POST['insert_data']))
{
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $age = $_POST['age'];
    $gender = $_POST['gender'];
    $address = $_POST['address'];

    // INSERT INTO TABLENAME
    // PATI KELANGAN SINGLE QUOTES LANG OR ELSE MAG ERROR SYA
    $query = "INSERT INTO homeownerdb3 (firstname,lastname,age,gender,address) VALUES ('$firstname', '$lastname', '$age','$gender','$address') ";

    //connect na sa database. first is connection then yung query statement mo
    $query_run = mysqli_query($con, $query);

    if($query_run) // if connection is successfull. then do what is stated
    {
        $_SESSION['status'] = "You Inserted It Successfully";
        header("location: index.php"); //  
    }
    else
    {
        $_SESSION['status'] = "Data Not Inserted";
        header("location: index.php");
    }
}

// ?>


