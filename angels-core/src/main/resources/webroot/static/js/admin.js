$(document).ready(function()
{
    $(".navbar>ul>li").click(function(e) {
        $(".active").removeClass("active");
        $(this).addClass('active');

        $(".main-panel").fadeOut(100);
        $("." + $(this).attr("id")).delay(100).fadeIn(100);
    });

    $(".announcebox").keyup(function(e) {
        if(e.keyCode == 13)
        {
            var xhr = new XMLHttpRequest();
            var response = JSON.parse(xhr.response);
            xhr.onload = function () {
            if (xhr.status == 200) {
                alert(response.message);
            } else {
                alert("오류가 발생했습니다.");
            }
        }

        xhr.open('POST', '/api/login', true);
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.send(JSON.stringify({id: user_id, password: user_pw}));
    }});

});
