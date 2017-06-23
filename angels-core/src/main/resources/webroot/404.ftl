<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>404 Error | Triangle</title>
    <link href="/static//css/bootstrap.min.css" rel="stylesheet">
    <link href="/static//css/font-awesome.min.css" rel="stylesheet">
    <link href="/static//css/main.css" rel="stylesheet">
    <link href="/static//css/responsive.css" rel="stylesheet">

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
    <section id="error-page">
        <div class="error-page-inner">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center">
                            <div class="bg-404">
                                <div class="error-image">                                
                                    <img class="img-responsive" src="/static/images/404.png" alt="">
                                </div>
                            </div>
                            <h2>PAGE NOT FOUND</h2>
                            <p>The page you are looking for might have been removed, had its name changed.</p>
                            ${context.foo}
                            <a href="index" class="btn btn-error">RETURN TO THE HOMEPAGE</a>
                            <div class="social-link">
                                <span><a href="#"><i class="fa fa-facebook"></i></a></span>
                                <span><a href="#"><i class="fa fa-twitter"></i></a></span>
                                <span><a href="#"><i class="fa fa-google-plus"></i></a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    

    <script type="text/javascript" src="/static/js/jquery.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/js/wow.min.js"></script>
    <script type="text/javascript" src="/static/js/main.js"></script>
</body>
</html>