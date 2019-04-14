<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="WardrobeStyle.css">
    <link href="https://fonts.googleapis.com/css?family=Lato&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito&amp;subset=latin-ext" rel="stylesheet">
    <script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous"></script>
    <script src="WardrobeScript.js"></script>
    
    <title>Elektroniczna szafa</title>
   
</head>  
<body>
   <div id="container">

    <div class="panel">
        <a href="podstrona"><div id="button1">Wyjdź z szafy</div></a>
        <div id="button2">Dodaj ubranie</div>
        <div id="button3">Usuń ubranie</div>
        <a href="WardrobeIndex"><div id="button4">Wyloguj</div></a>
    </div>
    <div id="leftButton" onclick="clickLeftButton()"> 
        <p id="arrowLeft"> < </p> 
    </div>
    <div id="rotator">
        <img src="img/zestawy/zestaw0.jpg" alt=""/>
    </div>
    <div id="rightButton" onclick="clickRightButton()"> 
        <p id="arrowRight">  >  </p>
    </div>


   </div>
</body>
</html>