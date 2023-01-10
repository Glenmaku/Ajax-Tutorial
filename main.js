var pagecounter = 1;
var animalcontainer = document.getElementById("animal-info");
var btn = document.getElementById("btnn");

btn.addEventListener("click", function(){
    var request1 = new XMLHttpRequest();
request1.open('GET', 'https://learnwebcode.github.io/json-example/animals-'+pagecounter+'.json');
// etong code sa taas means punta ka sa link and get the data. establish connection

request1.onload = function(){
    var ourdata = JSON.parse(request1.responseText); 
    renderHTML(ourdata);
};

    request1.send();
    pagecounter++;
    if (pagecounter == 4){
        btn.classList.add("hide-me");
    }
});

function renderHTML(data){
    
    var htmlstring = "<br><p>" + 'this is a string charann!' + '</p><br>';

    for (i = 0; i < data.length; i++){
        htmlstring = htmlstring + "<p> " + data[i].name + ' is a ' + data[i].species + ' likes to eat ' + data[i].favfood + ' .</p)<br>';  
    }

    animalcontainer.insertAdjacentHTML('beforeend', htmlstring);
    //KELANGAN buo itong insertAdjacentHTML wala dapat wrong spell 
    // 
}
