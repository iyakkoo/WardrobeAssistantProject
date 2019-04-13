<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="WardrobeStyle.css">
    <link href="https://fonts.googleapis.com/css?family=Lato&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Comfortaa&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC&amp;subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito&amp;subset=latin-ext" rel="stylesheet">
    <script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous"></script>
    <script src="WardrobeScript.js"></script>
    <title>Elektroniczna szafa</title>
   
</head>  

<body onload="changeSlide()">

            <span onclick="toPlaceSlide(1)" style="cursor:pointer;"></span>
            <span onclick="toPlaceSlide(2)" style="cursor:pointer;"></span>
            <span onclick="toPlaceSlide(3)" style="cursor:pointer;"></span>
            
    <div id="container">
        <div id="header">
            <h1 id="title">
                Ubierz się w elektronicznej szafie!
            </h1>
        </div>

        <div id="content">
            Witaj w elektronicznej szafie gdzie będziesz<br/>
            mógł dobrać komplet ubrania do pogody... <br/>
            Albo inaczej: to aplikacja wybiera twój strój. <br/>
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit <br/>
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br/>
            minim veniam, quis nostrud exercitation ullamco<br/>
            Quis autem vel eum iure reprehenderit qui in ea vo<br/>
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit <br/>
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br/>
            minim veniam, quis nostrud exercitation ullamco<br/>
            Quis autem vel eum iure reprehenderit qui in ea vo<br/>
            Quis autem vel eum iure reprehenderit qui in ea vo<br/>
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit <br/>
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br/>
            minim veniam, quis nostrud exercitation ullamco<br/>
            Quis autem vel eum iure reprehenderit qui in ea vo<br/>

            
        </div>
        <div id="img" ></div>
        <div id="login">
            ZALOGUJ SIĘ: <br/>
            <br/>
            LOGIN:
            <label for="logintable"></label><input id="logintable" type="text"/> <br/>
            <p></p>
            HASŁO:
            <input id="paswordtable" type="text>"/> <br/>
            <a href="WardrobePodstrona"><input type="button" value="ZALOGUJ" id="zaloguj"/></a>
        </div>
        <div id="footer">projekt na koniec kursu programowania java sda</div>
        
        
    </div>
</body>
</html>