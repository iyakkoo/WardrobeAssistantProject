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

    var file = "<img src=\"Images/ubrania/img" + number + ".jpg\"/>";

    document.getElementById("img").innerHTML = file;
    $("#img").fadeIn(500);
    timer1 = setTimeout("changeSlide()", 6000);
    timer2 = setTimeout("toHide()", 5500);
}
/*kod do działania szafy*/

var picture = new Array(4);
picture[0] = "Images/zestawy/zestaw0.jpg";
picture[1] = "Images/zestawy/zestaw1.jpg";
picture[2] = "Images/zestawy/zestaw2.jpg";
picture[3] = "Images/zestawy/zestaw3.jpg";
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
}

/* kod do działania zegara*/



