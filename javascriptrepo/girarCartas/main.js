$().ready(function(){
    $(".cartaBack1").mouseenter(function() {
        $(".cartaBack1").attr("src", "./card-front.png");
    })
    $(".cartaBack2").mouseenter(function() {
        $(".cartaBack2").attr("src", "./card-front.png");
    })
    $(".cartaBack1").mouseout(function() {
        $(".cartaBack1").attr("src", "./card-back.png");
    })
    $(".cartaBack2").mouseout(function() {
        $(".cartaBack2").attr("src", "./card-back.png");
    })
}
);