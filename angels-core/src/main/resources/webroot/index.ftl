<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Home | Angels Hosting</title>
<link href="/static/css/bootstrap.min.css" rel="stylesheet">
<link href="/static/css/font-awesome.min.css" rel="stylesheet">
<link href="/static/css/animate.min.css" rel="stylesheet">
<link href="/static/css/lightbox.css" rel="stylesheet">
<link href="/static/css/main.css" rel="stylesheet">
<link href="/static/css/responsive.css" rel="stylesheet">
<link href="/static/css/jquery.gritter.css" rel="stylesheet">
<link rel="shortcut icon" href="/static/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/static/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/static/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/static/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="/static/images/ico/apple-touch-icon-57-precomposed.png">

<script src="/static/js/html5shiv.js"></script>
<script src="/static/js/respond.min.js"></script>
<script type="text/javascript" src="/static/js/jquery.js"></script>
<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/static/js/lightbox.min.js"></script>
<script type="text/javascript" src="/static/js/wow.min.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.6.4/firebase.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.6.4/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.6.4/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.6.4/firebase-database.js"></script>
<script src='https://cdn.firebase.com/js/client/2.2.1/firebase.js'></script>
<script src="/static/js/jquery.js"></script>
<script type="text/javascript" src="/static/js/jquery.gritter.js"></script>
<script type="text/javascript" src="/static/js/gritter-conf.js"></script>


<script type="text/javascript" src="/static/js/main.js"></script>
</head>

<body>
<header id="header">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 overflow">
                <div class="social-icons pull-right">
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar navbar-inverse" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a class="navbar-brand" href="/dynamic/index">
                    <h1><img src="/static/images/home/logo6.png" alt="logo"></h1>
                </a>
            </div>
            <div class="collapse navbar-collapse navbar-right">
                <ul id="menu_list" class="nav navbar-nav navbar-right">
                    <p>
                    <li class="active"><a href="index">Home</a></li>
                <#if context.isLogined>
                    <li><a href="/dynamic/inform">내 정보</a></li>
                    <li><a href="/dynamic/computer">서버 사용량</a></li>
                    <li><a href="/api/logout">Logout</a></li>
                <#else>
                    <li><a data-toggle="modal" data-target="#show_login">LOGIN</a></li>
                </#if>
                </ul>
            </div>
        </div>
    </div>
</header>
<!--/#header-->

<section id="home-slider">
    <div class="container">
        <div class="row">
            <div class="main-slider">
                <div class="slide-text">
                    <h1>커뮤니티형 웹호스팅</h1>
                    <p>엔젤 호스팅은 2014년부터 시작한 커뮤니티형 웹호스팅입니다. 호스팅의 시작은 커뮤니티에서 시작되었음을 알리며, 따라서 호스팅 사용료 또한 타호스팅에 비해 저렴하다는 장점이
                        있습니다. 또한 커뮤니티형 웹호스팅이기 때문에 궁극적인 목표는 금전적인 이득이 아님을 밝힙니다.</p>
                </div>
                <!--<img src="/static/images/home/slider/hill.png" class="slider-hill" alt="slider image">-->
                <!--<img src="/static/images/home/slider/house.png" class="slider-house" alt="slider image">-->
                <!--<img src="/static/images/home/slider/sun.png" class="slider-sun" alt="slider image">-->
                <!--<img src="/static/images/home/slider/birds1.png" class="slider-birds1" alt="slider image">-->
                <!--<img src="/static/images/home/slider/birds2.png" class="slider-birds2" alt="slider image">-->
                <img src="/static/images/home/slider/hosting.png" class="slider-hill" alt="slider image">
            </div>
        </div>
    </div>
    <div class="preloader"><i class="fa fa-sun-o fa-spin"></i></div>
</section>
<!--/#home-slider-->

<section id="services">
    <div class="container">
        <div class="row">
            <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="300ms">
                <div class="single-service">
                    <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="300ms">
                        <img src="/static/images/home/money.png" alt="">
                    </div>
                    <h2>값싼 호스팅비</h2>
                    <p>엔젤 호스팅은 커뮤니티형 호스팅으로 타호스팅에 비해 값싼 호스팅비를 취급합니다.</p>
                </div>
            </div>
            <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
                <div class="single-service">
                    <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="600ms">
                        <img src="/static/images/home/service.png" alt="">
                    </div>
                    <h2>친절한 서비스</h2>
                    <p>커뮤니티형 호스팅이라는 점을 통해 이용자분들의 사소한 부탁 하나하나를 꼼꼼히 챙기는 엔젤호스팅이 되겠습니다.</p>
                </div>
            </div>
            <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="900ms">
                <div class="single-service">
                    <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="900ms">
                        <img src="/static/images/home/speed.png" alt="">
                    </div>
                    <h2>빠른 문의 응답</h2>
                    <p>엔젤 호스팅에서는 카카오톡을 사용하여, 관리자와 소통할 수 있습니다. 즉, 관리자의 빠른 응답시간과 편리한 문의가 가능합니다.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/#services-->

<section id="action" class="responsive">
    <div class="vertical-center">
        <div class="container">
            <div class="row">
                <div class="action take-tour">
                    <div class="col-sm-7 wow fadeInLeft" data-wow-duration="500ms" data-wow-delay="300ms">
                        <h1 class="title">호스팅 가격 알아보기</h1>
                        <p>호스팅 가격을 알아보세요! &amp; 오른쪽 버튼을 클릭하세요.</p>
                    </div>
                    <div class="col-sm-5 text-center wow fadeInRight" data-wow-duration="500ms" data-wow-delay="300ms">
                        <div class="tour-button">
                            <a data-toggle="modal" data-target="#price" class="btn btn-common">사용비 알아보기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/#action-->

<section id="features">
    <div class="container">
        <div class="row">
            <div class="single-features">
                <div class="col-sm-5 wow fadeInLeft" data-wow-duration="500ms" data-wow-delay="300ms">
                    <img src="/static/images/home/kakao2.jpg" class="img-responsive" alt="">
                </div>
                <div class="col-sm-6 wow fadeInRight" data-wow-duration="500ms" data-wow-delay="300ms">
                    <h2>호스팅 문의는 카카오톡</h2>
                    <P>호스팅 문의는 가급적 카카오톡을 이용해주세요.<br> 카카오톡: @엔젤호스팅 친구추가 후 문의바랍니다.</P>
                </div>
            </div>
            <div class="single-features">
                <div class="col-sm-6 col-sm-offset-1 align-right wow fadeInLeft" data-wow-duration="500ms"
                     data-wow-delay="300ms">
                    <h2>호스팅 용도</h2>
                    <P>호스팅의 용도는 오로지 마인크래프트 서버 구동입니다. 이외의 불법 게임서버는 취급하지 않습니다.</P>
                </div>
                <div class="col-sm-5 wow fadeInRight" data-wow-duration="500ms" data-wow-delay="300ms">
                    <img src="/static/images/home/judgement2.jpg" class="img-responsive" alt="">
                </div>
            </div>
            <br><br><br>
            <div class="single-features">
                <div class="col-sm-5 wow fadeInLeft" data-wow-duration="500ms" data-wow-delay="300ms">
                    <img src="/static/images/home/promotion.jpg" class="img-responsive" alt="">
                </div>
                <div class="col-sm-6 wow fadeInRight" data-wow-duration="500ms" data-wow-delay="300ms">
                    <h2>공개적인 홍보를 하지 않습니다.</h2>
                    <P>엔젤호스팅은 커뮤니티형 호스팅으로, 공개적으로 홍보하지 않습니다.</P>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/#features-->

<section id="clients">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="clients text-center wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
                    <p><img src="/static/images/home/clients.png" class="img-responsive" alt=""></p>
                    <h1 class="title">감사합니다</h1>
                    <p>잦은 점검에도 묵묵히 지켜주시던 사용자분들께 <br> 감사하다는 말을 전합니다. </p>
                </div>
                <!--<div class="clients-logo wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">-->
                <!--<div class="col-xs-3 col-sm-2">-->
                <!--<a href="#"><img src="/static/images/home/client1.png" class="img-responsive" alt=""></a>-->
                <!--</div>-->
                <!--<div class="col-xs-3 col-sm-2">-->
                <!--<a href="#"><img src="/static/images/home/client2.png" class="img-responsive" alt=""></a>-->
                <!--</div>-->
                <!--<div class="col-xs-3 col-sm-2">-->
                <!--<a href="#"><img src="/static/images/home/client3.png" class="img-responsive" alt=""></a>-->
                <!--</div>-->
                <!--<div class="col-xs-3 col-sm-2">-->
                <!--<a href="#"><img src="/static/images/home/client4.png" class="img-responsive" alt=""></a>-->
                <!--</div>-->
                <!--<div class="col-xs-3 col-sm-2">-->
                <!--<a href="#"><img src="/static/images/home/client5.png" class="img-responsive" alt=""></a>-->
                <!--</div>-->
                <!--<div class="col-xs-3 col-sm-2">-->
                <!--<a href="#"><img src="/static/images/home/client6.png" class="img-responsive" alt=""></a>-->
                <!--</div>-->
                <!--</div>-->
            </div>
        </div>
    </div>
</section>
<!--/#clients-->

<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center bottom-separator">
                <img src="/static/images/home/under.png" class="img-responsive inline" alt="">
                <div class="col-md-12">
                    <div class="contact-info center">
                        <h2>Contacts</h2>
                        <address>
                            E-mail: <a href="mailto:someone@example.com">jkh6100@naver.com</a> <br>
                            Phone: +1 (010) 7723 0494 <br>
                        </address>

                        <h2>Contact</h2>
                        <address>
                            KAKAO : @엔젤호스팅 <br>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--/#footer-->
<div class="modal fade" id="show_login" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content login-modal">

            <div id="login_modal" class="modal-header">
                <a href="#" class="col-xs-6 active" id="login-form-link">Login</a>
                <a href="#" class="col-xs-6" id="register-form-link">Register</a>
            </div> <!-- /.modal-header -->

            <div id="login-form" class="modal-body">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control" id="login-id" placeholder="아이디" autofocus>
                        <label for="id" class="input-group-addon glyphicon glyphicon-user"></label>
                    </div>
                </div> <!-- /.form-group -->

                <div class="form-group">
                    <div class="input-group">
                        <input type="password" class="form-control" id="login-password" placeholder="비밀번호">
                        <label for="password" class="input-group-addon glyphicon glyphicon-lock"></label>
                    </div> <!-- /.input-group -->
                </div> <!-- /.form-group -->
            </div> <!-- /.modal-body -->

            <div id="register-form" class="modal-body" style="display: none;">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control" id="register-id" placeholder="아이디" autofocus>
                        <label for="id" class="input-group-addon glyphicon glyphicon-user"></label>
                    </div>
                </div> <!-- /.form-group -->

                <div class="form-group">
                    <div class="input-group">
                        <input type="password" class="form-control" id="register-password" placeholder="비밀번호"">
                        <label for="password" class="input-group-addon glyphicon glyphicon-lock"></label>
                    </div> <!-- /.input-group -->
                </div> <!-- /.form-group -->

                <div class="form-group">
                    <div class="input-group">
                        <input type="password" class="form-control" id="register-rePassword" placeholder="비밀번호 재확인"">
                        <label for="password" class="input-group-addon glyphicon glyphicon-lock"></label>
                    </div> <!-- /.input-group -->
                </div> <!-- /.form-group -->

                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control" id="register-registerCode" placeholder="인증코드">
                        <label for="password" class="input-group-addon glyphicon glyphicon-qrcode"></label>
                    </div> <!-- /.input-group -->
                </div> <!-- /.form-group -->

            </div> <!-- /.modal-body -->

            <div class="modal-footer">
                <button id="login-button" class="form-control btn btn-primary">Ok</button>
                <button id="register-button" class="form-control btn btn-primary" style="display: none;">Ok</button>

                <div class="progress">
                    <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="1"
                         aria-valuemin="1" aria-valuemax="100" style="width: 0%;">
                        <span class="sr-only">progress</span>
                    </div>
                </div>
            </div> <!-- /.modal-footer -->
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="modal fade" tabindex="-1" id="price" role="dialog">
    <div class="modal-dialog price-modal">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-right">
                    <div class="single-price price-one">
                        <div class="table-heading">
                            <p class="plan-name">Standard</p>
                            <p class="plan-price"><span class="price">28,000</span><span
                                    class="dollar-sign">원</span><span class="month">/ 월</span></p>
                        </div>
                        <ul>
                            <li>Intel® Core™ i7-4790K Processor <span></span></li>
                            <li>Ram 4G <span></span></li>
                            <li>SSD 20GB <span></span></li>
                            <li>KT 1 Gigabit Network <span></span></li>
                            <li>Windows RDP 원격 지원 <span></span></li>
                            <li>Ram 1GB 추가당 7000원 추가 <span></span></li>
                        </ul>
                        <a href="#" class="btn btn-buynow">KaKaoTalk: @엔젤호스팅</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

