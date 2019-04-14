<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="../CSS/WardrobeStyle.css">
    <link href="https://fonts.googleapis.com/css?family=Lato&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Comfortaa&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito&amp;subset=latin-ext" rel="stylesheet">
    <script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous"></script>
    <script src="../JS/WardrobeScript.js"></script>
    <script>
    function countSecound(){
                        var today = new Date();

                        var day = today.getDate();
                        var month = today.getMonth()+1;
                        var year = today.getFullYear();
                        var hour = today.getHours();
                        if(hour < 10) hour = "0" + hour;
                        var minutes = today.getMinutes();
                        if(minutes < 10) minutes = "0" + minutes;
                        var secounds = today.getSeconds();
                        if(secounds < 10) secounds = "0" + secounds;

                        document.getElementById("clock").innerHTML = day + "/" + month + "/" + year + " | " + hour + ":" + minutes + ":" + secounds;
                        setTimeout("countSecound()", 1000);
                    }
    </script>
    <title>Elektroniczna szafa</title>
   
</head>  
<body onload="countSecound()">
   <div id="container">

        <div class="panel">
       
        <a href="WardrobePodstrona"><div id="button1">Wejdź do szafy</div></a>
        <div id="button2">Dodaj ubranie</div>
        <div id="button3">Usuń ubranie</div>
        <a href="WardrobeIndex"><div id="button4">Wyloguj</div></a>

        </div>
        <div id="panel2">
            <div id="clock">
                
            </div>
        
        </div>
   </div>
</body>
</html>