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
echo json_encode($query_run);
?>