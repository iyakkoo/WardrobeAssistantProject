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