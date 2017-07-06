<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Contact Us | Triangle</title>
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="/static/css/prettyPhoto.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/main.css" rel="stylesheet">
    <link href="/static/css/responsive.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.js"></script>
    <script src="/static/js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="/static/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/static/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/static/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/static/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/static/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
<header id="header">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 overflow">
                <div class="social-icons pull-right">
                    <ul class="nav nav-pills">
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
                <ul class="nav navbar-nav navbar-right">
                    <p>            <li><a href="index">Home</a></li>
                <#if context.isLogined>
                    <li class="active"><a href="/dynamic/inform">내 정보</a></li>
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

<section id="page-breadcrumb">
    <div class="vertical-center sun">
        <div class="container">
            <div class="row">
                <div class="action">
                    <div class="col-sm-12">
                        <h1 class="title">호스팅 사용정보</h1>
                        <p>${(context.name)!"unknown"}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/#action-->
<section id="map-section">
    <div class="container">
        <h3>사용정보</h3>
        <div class="w3-padding w3-white notranslate">
            <table class="table">
                <thead>
                <tr>
                    <th>호스팅 ID</th>
                    <th>호스팅 Password</th>
                    <th>사용 포트</th>
                    <th>사용 램</th>
                    <th>만료일</th>
                    <th>충전하기</th>
                </tr>
                </thead>
                <tbody id="useInfo">
                    <#list context.uses as json>
                    <#assign use = json?eval><#setting number_format="###">
                    <tr><td> ${use.hosting_id} </td><td> ${use.hosting_pw} </td><td> ${use.use_port} </td><td> ${use.use_ram} GB</td><td> ${use.deadline} </td><td><a href="https://pf.kakao.com/_nXaxaM#none">충전하기</a></td></tr>
                    </#list>
                </tbody>
            </table>
        </div>
        <a data-toggle="modal" data-target="#price" class="w3-btn w3-margin-top w3-margin-bottom">호스팅 비용 알아보기 »</a>
    </div>
</section> <!--/#map-section-->

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


<script type="text/javascript" src="/static/js/jquery.js"></script>
<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript" src="/static/js/gmaps.js"></script>
<script type="text/javascript" src="/static/js/wow.min.js"></script>
<script src="/static/js/inform.js"></script>
<!--<script type="text/javascript" src="/static/js/main.js"></script>   -->

<div class="modal fade" tabindex="-1" id="price" role="dialog">
    <div class="modal-dialog">
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
