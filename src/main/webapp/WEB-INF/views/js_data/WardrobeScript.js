/*kod do slajdu*/
var number = Math.floor(Math.random()*3)+1;
var timer1 = 0;
var timer2 = 0;


function toPlaceSlide(nrSlajd){
    clearTimeout(timer1);
    clearTimeout(timer2);
    number = nrSlajd - 1;
    toHide();
    setTimeout("changeSlide", 500);

}

function toHide(){
    $("#img").fadeOut(500);
}


function changeSlide(){

    number++;if (number>3) {number=1;}

    var file = "<img src=\"img/ubrania/img" + number + ".jpg\"/>";

    document.getElementById("img").innerHTML = file;
    $("#img").fadeIn(500);
    timer1 = setTimeout("changeSlide()", 6000);
    timer2 = setTimeout("toHide()", 5500);
}
/*kod do działania szafy bluzki*/
var pictureBluzki = new Array(4);
pictureBluzki[0] = "img/zestawy/bluzki/img1.jpg";
pictureBluzki[1] = "img/zestawy/bluzki/img2.jpeg";
pictureBluzki[2] = "img/zestawy/bluzki/img3.jpg";
pictureBluzki[3] = "img/zestawy/bluzki/img4.jpg";

var i = 0;
function clickRightButton(){
    i = (i + 1)%pictureBluzki.length ;
    document.getElementById("bluzki").innerHTML = '<img src="' + pictureBluzki[i] + '" alt=""/>'
}
function clickLeftButton(){
    if(i == 0)
        i = pictureBluzki.length-1;
    else
        i = (i - 1)%pictureBluzki.length;
    document.getElementById("bluzki").innerHTML = '<img src="' + pictureBluzki[i] + '" alt=""/>'
}
/*kod do działania szafy spodnie*/
var pictureSpodnie = new Array(4);
pictureSpodnie[0] = "img/zestawy/spodnie/img1.jpg";
pictureSpodnie[1] = "img/zestawy/spodnie/img2.jpg";
pictureSpodnie[2] = "img/zestawy/spodnie/img3.jpg";
pictureSpodnie[3] = "img/zestawy/spodnie/img4.jpg";

function clickRightButtonSpodnie(){
    i = (i + 1)%pictureSpodnie.length ;
    document.getElementById("spodnie").innerHTML = '<img src="' + pictureSpodnie[i] + '" alt=""/>'
}
function clickLeftButtonSpodnie(){
    if(i == 0)
        i = pictureSpodnie.length-1;
    else
        i = (i - 1)%pictureSpodnie.length;
    document.getElementById("spodnie").innerHTML = '<img src="' + pictureSpodnie[i] + '" alt=""/>'
}

/*var picture = new Array(4);
picture[0] = "img/zestawy/zestaw0.jpg";
picture[1] = "img/zestawy/zestaw1.jpg";
picture[2] = "img/zestawy/zestaw2.jpg";
picture[3] = "img/zestawy/zestaw3.jpg";
var i = 0;

function clickRightButton(){
    i = (i + 1)%picture.length ;
    document.getElementById("rotator").innerHTML = '<img src="' + picture[i] + '" alt=""/>'
}

function clickLeftButton(){
    if(i == 0)
        i = picture.length-1;
    else
        i = (i - 1)%picture.length;
    document.getElementById("rotator").innerHTML = '<img src="' + picture[i] + '" alt=""/>'
}*/

/* kod do działania zegara*/
