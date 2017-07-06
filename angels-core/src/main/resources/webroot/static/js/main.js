jQuery(function ($) {
    'use strict';

    $('#login-form-link').click(function (e) {
        $("#login-form").delay(100).fadeIn(100);
        $("#login-button").delay(100).fadeIn(100);
        $("#register-form").fadeOut(100);
        $("#register-button").fadeOut(100);
        $('#register-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#register-form-link').click(function (e) {
        $("#register-form").delay(100).fadeIn(100);
        $("#register-button").delay(100).fadeIn(100);
        $("#login-form").fadeOut(100);
        $("#login-button").fadeOut(100);
        $('#login-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });

    //Responsive Nav
    $('li.dropdown').find('.fa-angle-down').each(function () {
        $(this).on('click', function () {
            if ($(window).width() < 768) {
                $(this).parent().next().slideToggle();
            }
            return false;
        });
    });

    //Fit Vids
    if ($('#video-container').length) {
        $("#video-container").fitVids();
    }

    //Initiat WOW JS
    new WOW().init();

    // portfolio filter
    $(window).load(function () {


        $('.main-slider').addClass('animate-in');
        $('.preloader').remove();
        //End Preloader

        if ($('.masonery_area').length) {
            $('.masonery_area').masonry();//Masonry
        }

        var $portfolio_selectors = $('.portfolio-filter >li>a');

        if ($portfolio_selectors.length) {

            var $portfolio = $('.portfolio-items');
            $portfolio.isotope({
                itemSelector: '.portfolio-item',
                layoutMode: 'fitRows'
            });

            $portfolio_selectors.on('click', function () {
                $portfolio_selectors.removeClass('active');
                $(this).addClass('active');
                var selector = $(this).attr('data-filter');
                $portfolio.isotope({filter: selector});
                return false;
            });
        }

    });


    $('.timer').each(count);
    function count(options) {
        var $this = $(this);
        options = $.extend({}, options || {}, $this.data('countToOptions') || {});
        $this.countTo(options);
    }

    // Search
    $('.fa-search').on('click', function () {
        $('.field-toggle').fadeToggle(200);
    });

    // Contact form
    var form = $('#main-contact-form');
    form.submit(function (event) {
        event.preventDefault();
        var form_status = $('<div class="form_status"></div>');
        $.ajax({
            url: $(this).attr('action'),
            beforeSend: function () {
                form.prepend(form_status.html('<p><i class="fa fa-spinner fa-spin"></i> Email is sending...</p>').fadeIn());
            }
        }).done(function (data) {
            form_status.html('<p class="text-success">Thank you for contact us. As early as possible  we will contact you</p>').delay(3000).fadeOut();
        });
    });

    // Progress Bar
    $.each($('div.progress-bar'), function () {
        $(this).css('width', $(this).attr('data-transition') + '%');
    });

    if ($('#gmap').length) {
        var map;

        map = new GMaps({
            el: '#gmap',
            lat: 43.04446,
            lng: -76.130791,
            scrollwheel: false,
            zoom: 16,
            zoomControl: false,
            panControl: false,
            streetViewControl: false,
            mapTypeControl: false,
            overviewMapControl: false,
            clickable: false
        });

        map.addMarker({
            lat: 43.04446,
            lng: -76.130791,
            animation: google.maps.Animation.DROP,
            verticalAlign: 'bottom',
            horizontalAlign: 'center',
            backgroundColor: '#3e8bff',
        });
    }

    $('#show_login').on('shown.bs.modal', function () {
        $("#id").focus();
    });

    $('#show_login').keyup(function (e) {
        if (e.keyCode == 13) {
            $(".modal-footer button").click();
        }
    });

    $('.modal-footer #register-button').click(function () {
        var title = $('.modal-title');
        var id = document.getElementById("register-id").value;
        var password = document.getElementById("register-password").value;
        var rePassword = document.getElementById("register-rePassword").value;
        var registerCode = document.getElementById("register-registerCode").value;

        var button = $(this);
        var progress = $('.progress');
        var progressBar = $('.progress-bar');
        progressBar.removeAttr('style');

        button.hide();
        progress.show();

        progressBar.animate({width: "100%"}, 100);

        progress.delay(500)
            .fadeOut(600);

        if (password == rePassword) {
            var xhr = new XMLHttpRequest();
            xhr.onload = function () {
                var response = JSON.parse(xhr.response);
                button.delay(1000).fadeIn(300);
                alert(response.message);
            }

            xhr.open('POST', '/api/register', true);
            xhr.setRequestHeader("Content-Type", "application/json");
            xhr.send(JSON.stringify({
                id: id,
                password: password,
                rePassword: rePassword,
                registerCode: registerCode
            }));
        } else {
            alert("비밀번호와 비밀번호 재확인이 다릅니다.")
            button.delay(1000).fadeIn(300);
        }
    });

    $('.modal-footer #login-button').click(function () {
        var title = $('.modal-title');
        var user_id = document.getElementById("login-id").value;
        var user_pw = document.getElementById("login-password").value;

        var button = $(this);
        var progress = $('.progress');
        var progressBar = $('.progress-bar');
        progressBar.removeAttr('style');

        button.hide();
        progress.show();

        progressBar.animate({width: "100%"}, 100);

        progress.delay(500)
            .fadeOut(600);

        console.log('xhr');

        var xhr = new XMLHttpRequest();
        xhr.onload = function () {
            if (xhr.status == 200) {
                console.log(xhr.response);
                var response = JSON.parse(xhr.response);
                location.replace("/dynamic/index");
            } else {
                button.delay(1000).fadeIn(300);
                alert("ID/PW 가 틀립니다.");
            }
        }

        xhr.open('POST', '/api/login', true);
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.send(JSON.stringify({id: user_id, password: user_pw}));
    });

    $('#myModal').on('hidden.bs.modal', function (e) {
        var inputs = $('form input');
        var title = $('.modal-title');
        var progressBar = $('.progress-bar');
        var button = $('.modal-footer button');

        inputs.removeAttr("disabled");

        title.text("Log in");

        progressBar.css({"width": "0%"});

        button.removeClass("btn-success")
            .addClass("btn-primary")
            .text("Ok")
            .removeAttr("data-dismiss");

    });

    var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: '안녕하세요. 엔젤호스팅입니다!',
        // (string | mandatory) the text inside the notification
        text: '오늘의 공지가 없습니다.',
        // (string | optional) the image to display on the left
        image: '/static/images/gritter/ui-sma2.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 2000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: '',
        position: 'top-left'
    });

});