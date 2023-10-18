//-------JavaScript-------
const btnAzul = document.getElementById("bAzul");
btnAzul.onclick = function () {
    document.getElementById("p").style.color = 'dodgerblue';
    document.getElementById("p2").style.color = 'dodgerblue';
}

//------jQuery-----------
$().ready(function () {
    $(".bRojo").click(function ()  {
        $("#p").css('color', 'crimson');
        $("#p2").css('color', 'crimson');
    })
});