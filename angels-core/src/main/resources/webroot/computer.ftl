<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>About Us | Triangle</title>
    <link href="/static/css/charts/style.min.css" rel="stylesheet">
    <link href="/static/css/charts/retina.min.css" rel="stylesheet">
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/lightbox.css" rel="stylesheet">
    <link href="/static/css/main.css" rel="stylesheet">
    <link href="/static/css/responsive.css" rel="stylesheet">
    <link href="/static/css/jquery.gritter.css" rel="stylesheet">
    <link href="/static/css/charts/charts.css" rel="stylesheet">



    <!-- theme scripts -->

    <script src="/static/js/charts/jquery-2.1.0.min.js"></script>

    <script type="text/javascript">
        window.jQuery || document.write("<script src='js/charts/jquery-2.1.0.min.js'>" + "<" + "/script>");
    </script>

    <script type="text/javascript" src="/static/js/charts/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/js/charts/jquery-ui-1.10.3.custom.min.js"></script>
    <script type="text/javascript" src="/static/js/charts/jquery.knob.modified.min.js"></script>
    <script type="text/javascript" src="/static/js/charts/jquery.flot.min.js"></script>
    <script type="text/javascript" src="/static/js/charts/jquery.flot.pie.min.js"></script>
    <script type="text/javascript" src="/static/js/charts/jquery.flot.stack.min.js"></script>
    <script type="text/javascript" src="/static/js/charts/jquery.flot.resize.min.js"></script>
    <script type="text/javascript" src="/static/js/charts/jquery.flot.time.min.js"></script>
    <script type="text/javascript" src="/static/js/charts/counter.min.js"></script>
    <script type="text/javascript" src="/static/js/charts/core.min.js"></script>
    <script type="text/javascript" src="/static/js/charts/page-infrastructure.js"></script>
    <script type="text/javascript" src="/static/js/computer.js"></script>
</head>
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
                    <p>
                    <li><a href="index">Home</a></li>
                <#if context.isLogined>
                    <li><a href="/dynamic/inform">내 정보</a></li>
                    <li class="active"><a href="/dynamic/computer">서버 사용량</a></li>
                    <li><a href="/api/logout">Logout</a></li>
                <#else>
                    <li><a data-toggle="modal" data-target="#show_login">LOGIN</a></li>
                </#if>
                </ul>
            </div>
        </div>
    </div>
    <div class="modal fade" id="show_login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel">Log in</h4>
                </div> <!-- /.modal-header

                <div class="modal-body">
                    <form role="form">
                        <div class="form-group">
                            <div class="input-group">
                                <input type="text" class="form-control" id="uLogin" placeholder="Login">
                                <label for="uLogin" class="input-group-addon glyphicon glyphicon-user"></label>
                            </div>
                        </div> <!-- /.form-group -->

                <div class="form-group">
                    <div class="input-group">
                        <input type="password" class="form-control" id="uPassword" placeholder="Password">
                        <label for="uPassword" class="input-group-addon glyphicon glyphicon-lock"></label>
                    </div> <!-- /.input-group -->
                </div> <!-- /.form-group -->

                <div class="checkbox">
                    <label>
                        <input type="checkbox"> Remember me
                    </label>
                </div> <!-- /.checkbox -->
                </form>

            </div> <!-- /.modal-body -->

            <div class="modal-footer">
                <button class="form-control btn btn-primary">Ok</button>

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
</header>
<!--/#header-->


<section id="page-breadcrumb">
    <div class="vertical-center sun">
        <div class="container">
            <div class="row">
                <div class="action">
                    <div class="col-sm-12">
                        <h1 class="title">서버 사용량</h1>
                        <p>서버의 cpu사용량을 체크합니다.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/#page-breadcrumb-->

<section id="about-company" class="wow" data-wow-duration="400ms" data-wow-delay="400ms">
    <div class="container">
        <div class="circleStats row hideInIE8">
            <table class="chartsTable">
                <tbody>
                <tr>
                    <td class="charts">
                        <div class="circleStatsItemBox">
                            <div class="header">Disk Space Usage</div>
                            <span class="percent">percent</span>
                            <div class="circleStat">
                                <div style="width:120px;display:inline;">
                                    <canvas width="0" height="0"></canvas>
                                    <input id="diskPercentage" type="text" value="0" class="circleCanvas whiteCircle" readonly="readonly"
                                           style="width: 60px; position: absolute; margin-top: 42.8571px; margin-left: -90px; font-size: 30px; border: none; background: none; font-family: Arial; font-weight: bold; text-align: center; color: rgba(255, 255, 255, 0.901961); padding: 0px; -webkit-appearance: none;">
                                </div>
                                <div class="circleStat">
                                </div>
                            </div>
                            <div class="footer">
							<span class="count">
								<span id="diskUsage" class="number">0</span>
								<span class="unit">MB</span>
							</span>
                                <span class="sep"> / </span>
                                <span class="value">
								<span id="diskTotal" class="number">0</span>
								<span class="unit">MB</span>
							</span>
                            </div>
                        </div>
                    </td>
                    <td class="charts">
                        <div class="circleStatsItemBox">
                            <div class="header">Memory</div>
                            <span class="percent">percent</span>
                            <div class="circleStat">
                                <div style="width:120px;display:inline;">
                                    <canvas width="0" height="0"></canvas>
                                    <input type="text" id="memoryPercentage" value="0" class="whiteCircle" readonly="readonly"
                                           style="width: 60px; position: absolute; margin-top: 42.8571px; margin-left: -90px; font-size: 30px; border: none; background: none; font-family: Arial; font-weight: bold; text-align: center; color: rgba(255, 255, 255, 0.901961); padding: 0px; -webkit-appearance: none;">
                                </div>
                            </div>
                            <div class="footer">
							<span class="count">
								<span id="memoryUsage" class="number">0</span>
								<span class="unit">GB</span>
							</span>
                                <span class="sep"> / </span>
                                <span class="value">
								<span id="memoryTotal" class="number">0</span>
								<span class="unit">GB</span>
							</span>
                            </div>
                        </div>
                    </td>

                    <td class="charts">
                        <div class="circleStatsItemBox">
                            <div class="header">CPU</div>
                            <span class="percent">percent</span>
                            <div class="circleStat">
                                <div style="width:120px;display:inline;">
                                    <canvas width="0" height="0"></canvas>
                                    <input type="text" id="cpuPercentage" value="0" class="whiteCircle" readonly="readonly"
                                           style="width: 60px; position: absolute; margin-top: 42.8571px; margin-left: -90px; font-size: 30px; border: none; background: none; font-family: Arial; font-weight: bold; text-align: center; color: rgba(255, 255, 255, 0.901961); padding: 0px; -webkit-appearance: none;">
                                </div>
                            </div>
                            <div class="footer">
							<span class="count">
								<span id="cpuUsage" class="number">0</span>
								<span class="unit">GHz</span>
							</span>
                                <span class="sep"> / </span>
                                <span class="value">
								<span id="cpuTotal" class="number">4.0</span>
								<span class="unit">GHz</span>
							</span>
                            </div>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</section>
<!--/#about-company-->

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
</body>
</html>
