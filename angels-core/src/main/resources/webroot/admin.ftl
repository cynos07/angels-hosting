<!DOCTYPE html>
<!--[if gt IE 8]><!-->
<html lang="ko">
<!--<![endif]-->

<head>

  <!-- Meta Tags -->
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

  <title>Admin : Angles-Hosting</title>

  <meta name="description" content="Admin page for manage angels-hosting" />

  <!-- Mobile Internet Explorer ClearType Technology -->
  <!--[if IEMobile]>  <meta http-equiv="cleartype" content="on">  <![endif]-->


  <script type="text/javascript" src="/static/js/jquery.js"></script>

  <!-- Bootstrap -->
  <link href="/static/css/admin.css" rel="stylesheet">
  <link href="/static/css/font-awesome.min.css" rel="stylesheet">
  <script src="/static/js/admin.js"></script>

</head>


<body>

  <div class="container">
    <div class="navbar">
      <ul>
        <li id="users" class="active"> <i class="fa fa-users"></i></li>
        <li id="desktop"><i class="fa fa-desktop"></i></li>
        <li id="registerCode"><i class="fa fa-qrcode"></i></li>
        <li id="announce"><i class="fa fa-bullhorn"></i></li>
        <li id="settings"><i class="fa fa-gear"></i></li>
      </ul>
    </div>
    <div class="main-panel users">
      <div class="list-group">
        <ul>
          <li class="active">
            <div class="picture"><img src="/static/img/defaultskin.png" />
              <div class="badge green"><i class="fa fa-check"></i></div>
            </div>
            <div class="content">
              <div class="title">Mark Brack</div>
              <div class="description">
                <div class="location"><i class="fa fa-map-marker"></i><span>Paris, France</span></div>
                <div class="tags">
                  <div class="tag orange">System administrator</div>
                  <!--.tag.blue Clerk-->
                  <div class="tag green">Online</div>
                  <!--.tag.red Inactive-->
                </div>
              </div>
            </div>
            <div class="footer">
              <div class="info left"><i class="fa fa-clock-o"></i><span>Last login: online</span></div>
              <div class="info right"><i class="fa fa-calendar"></i><span>Added 3 days ago</span></div>
            </div>
            <div class="functions">
              <!--<div class="func"><i class="fa fa-envelope"></i></div>-->
              <div class="func"><i class="fa fa-trash"></i></div>
            </div>
          </li>
          <li>
            <div class="picture"><img src="/static/img/defaultskin.png" />
              <div class="badge red"><i class="fa fa-times"></i></div>
            </div>
            <div class="content">
              <div class="title">Joe Smith</div>
              <div class="description">
                <div class="location"><i class="fa fa-map-marker"></i><span>Berlin, Germany</span></div>
                <div class="tags">
                  <div class="tag blue">Clerk</div>
                  <div class="tag red">Inactive</div>
                </div>
              </div>
            </div>
            <div class="footer">
              <div class="info left"><i class="fa fa-clock-o"></i><span>Last login: 5 days ago</span></div>
              <div class="info right"><i class="fa fa-calendar"></i><span>Added 2 weeks ago</span></div>
            </div>
            <div class="functions">
              <!--<div class="func"><i class="fa fa-envelope"></i></div>-->
              <div class="func"><i class="fa fa-trash"></i></div>
            </div>
          </li>
          <li>
            <div class="picture"><img src="/static/img/defaultskin.png" />
              <div class="badge orange"><i class="fa fa-star"></i></div>
            </div>
            <div class="content">
              <div class="title">Susan Friedson</div>
              <div class="description">
                <div class="location"><i class="fa fa-map-marker"></i><span>London, UK</span></div>
                <div class="tags">
                  <div class="tag blue">Clerk</div>
                </div>
              </div>
            </div>
            <div class="footer">
              <div class="info left"><i class="fa fa-clock-o"></i><span>Last login: 3 hours ago</span></div>
              <div class="info right"><i class="fa fa-calendar"></i><span>Added 1 week ago</span></div>
            </div>
            <div class="functions">
              <!--<div class="func"><i class="fa fa-envelope"></i></div>-->
              <div class="func"><i class="fa fa-trash"></i></div>
            </div>
          </li>
        </ul>
      </div>
      <div class="content">
        <div class="profile">
          <div class="picture"><img src="/static/img/defaultskin.png" />
            <div class="badge green"><i class="fa fa-check"></i></div>
          </div>
          <div class="details">
            <div class="tags">
              <div class="tag orange">System administrator</div>
              <div class="tag green">Online</div>
            </div>
            <div class="title">Mark Brack</div>
            <div class="titulus">Branch administrator</div>
            <div class="description">
              <!--<div class="info-row"><i class="fa fa-map-marker"></i><span class="caption">Location:</span><span class="value">Paris, France</span></div>-->
              <div class="info-row"><i class="fa fa-clock-o"></i><span class="caption">Last login:</span><span class="value">online</span></div>
              <div class="info-row"><i class="fa fa-calendar"></i><span class="caption">Created:</span><span class="value">3 days ago					</span></div>
            </div>
          </div>
          <div class="functions">
            <div class="func"><i class="fa fa-key"></i></div>
            <!--<div class="func"><i class="fa fa-comments"></i></div>-->
            <!--<div class="func"><i class="fa fa-edit"></i></div>-->
            <div class="func"><i class="fa fa-flag"></i></div>
            <!--<div class="func"><i class="fa fa-share-alt"></i></div>-->
            <div class="func"><i class="fa fa-trash-o"></i></div>
          </div>
          <hr/>
          <!--<div class="further">
            <div class="info-row">
              <div class="info-block"><i class="fa fa-home"></i><span class="value">+2 574 986 224</span></div>
              <div class="info-block"><i class="fa fa-globe"></i><span class="value">https://codepen.io</span></div>
            </div>
            <div class="info-row">
              <div class="info-block"><i class="fa fa-phone"></i><span class="value">+6 865 664 25 69</span></div>
              <div class="info-block"><i class="fa fa-envelope"></i><span class="value">mark.brack@gmail.com</span></div>
            </div>
          </div>
          <div class="further">
            <div class="info-row">
              <div class="info-block"><i class="fa fa-twitter"></i><span class="value">@markbrack</span></div>
              <div class="info-block"><i class="fa fa-google-plus"></i><span class="value">google.com/mark.brack</span></div>
            </div>
            <div class="info-row">
              <div class="info-block"><i class="fa fa-facebook"></i><span class="value">fb.com/mark.brack</span></div>
              <div class="info-block"><i class="fa fa-youtube"></i><span class="value">youtube.com/mark.brack</span></div>
            </div>
          </div>
          <hr/>-->
          <div class="logs">
            <div class="title">Last events</div>
            <table>
              <tr>
                <td>2016-01-06</td>
                <td>Logged in.</td>
              </tr>
              <tr>
                <td>2016-01-05</td>
                <td>Logged out.</td>
              </tr>
              <tr>
                <td>2016-01-05</td>
                <td>
                  New user <a href="#">Susan Friedson</a> added.</td>
              </tr>
              <tr>
                <td>2016-01-05</td>
                <td>Logged in.</td>
              </tr>
              <tr>
                <td>2016-01-04</td>
                <td>Logged out.</td>
              </tr>
              <tr>
                <td>2016-01-05</td>
                <td>
                  Changed status of <a href="#">Joe Smith</a> to inactive.</td>
              </tr>
              <tr>
                <td>2016-01-04</td>
                <td>Logged in.</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
    <div class="main-panel desktop" style="display: none;">
      <div class="list-group">
        <ul>
          <li class="active">
            <div class="picture"><img src="/static/img/defaultskin.png" />
              <div class="badge green"><i class="fa fa-check"></i></div>
            </div>
            <div class="content">
              <div class="title">Mark Brack</div>
              <div class="description">
                <div class="location"><i class="fa fa-map-marker"></i><span>Paris, France</span></div>
                <div class="tags">
                  <div class="tag orange">System administrator</div>
                  <!--.tag.blue Clerk-->
                  <div class="tag green">Online</div>
                  <!--.tag.red Inactive-->
                </div>
              </div>
            </div>
            <div class="footer">
              <div class="info left"><i class="fa fa-clock-o"></i><span>Last login: online</span></div>
              <div class="info right"><i class="fa fa-calendar"></i><span>Added 3 days ago</span></div>
            </div>
            <div class="functions">
              <!--<div class="func"><i class="fa fa-envelope"></i></div>-->
              <div class="func"><i class="fa fa-trash"></i></div>
            </div>
          </li>
          <li>
            <div class="picture"><img src="/static/img/defaultskin.png" />
              <div class="badge red"><i class="fa fa-times"></i></div>
            </div>
            <div class="content">
              <div class="title">Joe Smith</div>
              <div class="description">
                <div class="location"><i class="fa fa-map-marker"></i><span>Berlin, Germany</span></div>
                <div class="tags">
                  <div class="tag blue">Clerk</div>
                  <div class="tag red">Inactive</div>
                </div>
              </div>
            </div>
            <div class="footer">
              <div class="info left"><i class="fa fa-clock-o"></i><span>Last login: 5 days ago</span></div>
              <div class="info right"><i class="fa fa-calendar"></i><span>Added 2 weeks ago</span></div>
            </div>
            <div class="functions">
              <!--<div class="func"><i class="fa fa-envelope"></i></div>-->
              <div class="func"><i class="fa fa-trash"></i></div>
            </div>
          </li>
          <li>
            <div class="picture"><img src="/static/img/defaultskin.png" />
              <div class="badge orange"><i class="fa fa-star"></i></div>
            </div>
            <div class="content">
              <div class="title">Susan Friedson</div>
              <div class="description">
                <div class="location"><i class="fa fa-map-marker"></i><span>London, UK</span></div>
                <div class="tags">
                  <div class="tag blue">Clerk</div>
                </div>
              </div>
            </div>
            <div class="footer">
              <div class="info left"><i class="fa fa-clock-o"></i><span>Last login: 3 hours ago</span></div>
              <div class="info right"><i class="fa fa-calendar"></i><span>Added 1 week ago</span></div>
            </div>
            <div class="functions">
              <!--<div class="func"><i class="fa fa-envelope"></i></div>-->
              <div class="func"><i class="fa fa-trash"></i></div>
            </div>
          </li>
        </ul>
      </div>
      <div class="content">
        <div class="profile">
          <div class="picture"><img src="/static/img/defaultskin.png" />
            <div class="badge green"><i class="fa fa-check"></i></div>
          </div>
          <div class="details">
            <div class="tags">
              <div class="tag orange">System administrator</div>
              <div class="tag green">Online</div>
            </div>
            <div class="title">Mark Brack</div>
            <div class="titulus">Branch administrator</div>
            <div class="description">
              <div class="info-row"><i class="fa fa-map-marker"></i><span class="caption">Location:</span><span class="value">Paris, France</span></div>
              <div class="info-row"><i class="fa fa-clock-o"></i><span class="caption">Last login:</span><span class="value">online</span></div>
              <div class="info-row"><i class="fa fa-calendar"></i><span class="caption">Created:</span><span class="value">3 days ago					</span></div>
            </div>
          </div>
          <div class="functions">
            <div class="func"><i class="fa fa-envelope"></i></div>
            <div class="func"><i class="fa fa-comments"></i></div>
            <div class="func"><i class="fa fa-edit"></i></div>
            <div class="func"><i class="fa fa-flag"></i></div>
            <div class="func"><i class="fa fa-share-alt"></i></div>
            <div class="func"><i class="fa fa-trash"></i></div>
          </div>
          <hr/>
          <div class="further">
            <div class="info-row">
              <div class="info-block"><i class="fa fa-home"></i><span class="value">+2 574 986 224</span></div>
              <div class="info-block"><i class="fa fa-globe"></i><span class="value">https://codepen.io</span></div>
            </div>
            <div class="info-row">
              <div class="info-block"><i class="fa fa-phone"></i><span class="value">+6 865 664 25 69</span></div>
              <!--<div class="info-block"><i class="fa fa-envelope"></i><span class="value">mark.brack@gmail.com</span></div>-->
            </div>
          </div>
          <div class="further">
            <div class="info-row">
              <div class="info-block"><i class="fa fa-twitter"></i><span class="value">@markbrack</span></div>
              <div class="info-block"><i class="fa fa-google-plus"></i><span class="value">google.com/mark.brack</span></div>
            </div>
            <div class="info-row">
              <div class="info-block"><i class="fa fa-facebook"></i><span class="value">fb.com/mark.brack</span></div>
              <div class="info-block"><i class="fa fa-youtube"></i><span class="value">youtube.com/mark.brack</span></div>
            </div>
          </div>
          <hr/>
          <div class="logs">
            <div class="title">Last events</div>
            <table>
              <tr>
                <td>2016-01-06</td>
                <td>Logged in.</td>
              </tr>
              <tr>
                <td>2016-01-05</td>
                <td>Logged out.</td>
              </tr>
              <tr>
                <td>2016-01-05</td>
                <td>
                  New user <a href="#">Susan Friedson</a> added.</td>
              </tr>
              <tr>
                <td>2016-01-05</td>
                <td>Logged in.</td>
              </tr>
              <tr>
                <td>2016-01-04</td>
                <td>Logged out.</td>
              </tr>
              <tr>
                <td>2016-01-05</td>
                <td>
                  Changed status of <a href="#">Joe Smith</a> to inactive.</td>
              </tr>
              <tr>
                <td>2016-01-04</td>
                <td>Logged in.</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
    <div class="main-panel registerCode" style="display: none;">
      <div class="sub-panel">
        <span class="random-number-description">회원가입 코드</span>
        <div class="random-number-container fancybox">
          <span class="random-number">${(context.registerCode)!"unknown"}</span>
        </div>
      </div>
    </div>
    <div class="main-panel announce" style="display: none;">
      <div class="sub-panel">
        <span class="random-number-description">공지사항 메세지</span>
        <div class="random-number-container fancybox">
          <input class="announcebox" />
        </div>
      </div>
    </div>
    <div class="main-panel settings" style="display: none;">
      <div class="sub-panel">
        <span class="random-number-description">준비중</span>
        <div class="random-number-container fancybox">
          <span class="random-number">다른 서비스 정보(호스팅비, 유저권한 등) 설정</span>
        </div>
      </div>
    </div>
  </div>
</body>