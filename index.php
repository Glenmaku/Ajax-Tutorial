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
            <button type="submit" id="btn btn-primary">Search</button>         
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
                    
    

                </tbody>
            </table>
        </div>

    </div>


    <div class="container">
        <div class="text">
            <h1>WASSUP MGA PRE!</h1>
            <br>
            <h1>JSON and AJAX</h1>
            <button id="btnn">Fetch Info for 3 New Animals</button>
        </div>
    </div>
    <div id="animal-info"></div>


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

    var btn = document.getElementById("#btn");

        

btn.addEventListener("click", function(){
    var request = new XMLHttpRequest();
request.open('GET', 'https://learnwebcode.github.io/json-example/animals-'+pagecounter+'.json');
// etong code sa taas means punta ka sa link and get the data. establish connection

request.onload = function(){
    var ourdata = JSON.parse(request.responseText); 
    renderHTML(ourdata);
};

    request.send();
    pagecounter++;
    if (pagecounter == 4){
        btn.classList.add("hide-me");
    }
});

function renderHTML(data){
    
    var htmlstring = "<br><p>" + 'this is a string charann!' + '</p><br>';

    for (i = 0; i < data.length; i++){
        htmlstring = htmlstring + "<p> a" + data[i].name + ' is a ' + data[i].species + ' likes to eat ' + data[i].favfood + ' .</p)<br>';  
    }

    animalcontainer.insertAdjacentHTML('beforeend', htmlstring);
    //KELANGAN buo itong insertAdjacentHTML wala dapat wrong spell 
    // 
}



    </script>
</body>
</html>