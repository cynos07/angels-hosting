<!DOCTYPE html>
<!--[if gt IE 8]><!-->
<html lang="ko">
<!--<![endif]-->

<head>

    <!-- Meta Tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <title>Admin : Angles-Hosting</title>

    <meta name="description" content="Admin page for manage angels-hosting"/>

    <!-- Mobile Internet Explorer ClearType Technology -->
    <!--[if IEMobile]>
    <meta http-equiv="cleartype" content="on">  <![endif]-->


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
            <li id="users" class="active"><i class="fa fa-users"></i></li>
            <li id="desktop"><i class="fa fa-desktop"></i></li>
            <li id="registerCode"><i class="fa fa-qrcode"></i></li>
            <li id="announce"><i class="fa fa-bullhorn"></i></li>
            <li id="settings"><i class="fa fa-gear"></i></li>
        </ul>
    </div>
    <div class="main-panel users">
        <div class="list-group">
            <ul>

            <#list context.users as json>
                <#assign user=json?eval>
                <#setting number_format="###">
                <#if json?index==0>
                <li id="${user.id}" class="active">
                <#else>
                <li id="${user.id}">
                </#if>
                <div class="picture"><img src="/static/images/defaultskin.png"/>
                    <div class="badge green"><i class="fa fa-check"></i></div>
                </div>
                <div class="content">
                    <div class="title">${user.id}</div>
                    <div class="description">
                        <div class="location"><i class="fa fa-map-marker"></i><span>Paris, France</span></div>
                        <div class="tags">
                            <div class="tag orange">${user.type}</div>
                            <!--.tag.blue Clerk-->
                            <div class="tag green">${(user.money)!"0원"}</div>
                            <!--.tag.red Inactive-->
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <#setting datetime_format="yyyy-MM-dd">
                    <div class="info left"><i
                            class="fa fa-clock-o"></i><span>Last login: ${((user.lastlogin.$date)?number?number_to_datetime)!"unknown"}</span>
                    </div>
                    <div class="info right"><i
                            class="fa fa-calendar"></i><span>Registered: ${((user.register_date.$date)?number?number_to_datetime)!"unknown"}</span>
                    </div>
                </div>
                <div class="functions">
                    <!--<div class="func"><i class="fa fa-envelope"></i></div>-->
                    <div class="func"><i class="fa fa-trash"></i></div>
                </div>
            </li>
            </#list>
            </ul>
        </div>

    <#list context.users as json>
        <#assign user=json?eval>
        <#setting number_format="###">
        <#if json?index==0>
        <div class="content ${user.id}" style="display: inline-block;">
        <#else>
        <div class="content ${user.id}" style="display: none;">
        </#if>
        <div class="profile">
            <div class="picture"><img src="/static/images/defaultskin.png"/>
                <div class="badge green"><i class="fa fa-check"></i></div>
            </div>
            <div class="details">
                <div class="tags">
                    <div class="tag orange">${user.type}</div>
                    <div class="tag green">${(user.money)!"0원"}</div>
                </div>
                <div class="title">${user.id}</div>
            <#-- <div class="titulus">Branch administrator</div> -->
                <div class="description">

                    <#setting datetime_format="yyyy-MM-dd. hh:MM:SS">
                    <!--<div class="info-row"><i class="fa fa-map-marker"></i><span class="caption">Location:</span><span class="value">Paris, France</span></div>-->
                    <div class="info-row"><i class="fa fa-clock-o"></i><span class="caption">Last login:</span><span
                            class="value">${((user.lastlogin.$date)?number?number_to_datetime)!"lastLogin"}</span></div>
                    <div class="info-row"><i class="fa fa-calendar"></i><span class="caption">Created:</span><span
                            class="value">${((user.register_date.$date)?number?number_to_datetime)!"created_date"}</span>
                    </div>
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
                    <#list context.events as json>
                        <#assign event=json?eval>
                        <#setting datetime_format="yyyy-MM-dd. hh:MM">
                        <#if event.id==user.id>
                            <#if json?index <=12>
                                <tr>
                                    <td>${(event.date.$date)?number?number_to_datetime}</td>
                                    <td>${(event.log)!"log"}</td>
                                </tr>
                            </#if>
                        </#if>
                    </#list>
                </table>
            </div>
        </div>
    </div>
    </#list>
    </div>
        <div class="main-panel desktop" style="display: none;">
            <div class="list-group">
                <ul>

                <#list context.users as json>
                    <#assign user=json?eval>
                    <#setting number_format="###">
                    <#if json?index==0>
                    <li id="${user.id}" class="active">
                    <#else>
                    <li id="${user.id}">
                    </#if>
                    <div class="picture"><img src="/static/images/defaultskin.png"/>
                        <div class="badge green"><i class="fa fa-check"></i></div>
                    </div>
                    <div class="content">
                        <div class="title">${user.id}</div>
                        <div class="description">
                            <div class="location"><i class="fa fa-map-marker"></i><span>Paris, France</span></div>
                            <div class="tags">
                                <div class="tag orange">${user.type}</div>
                                <!--.tag.blue Clerk-->
                                <div class="tag green">${(user.id)!"unknown"}</div>
                                <!--.tag.red Inactive-->
                            </div>
                        </div>
                    </div>
                    <div class="footer">
                        <#setting datetime_format="yyyy-MM-dd">
                        <div class="info left"><i
                                class="fa fa-clock-o"></i><span>Last login: ${((user.lastlogin.$date)?number?number_to_datetime)!"unknown"}</span>
                        </div>
                        <div class="info right"><i
                                class="fa fa-calendar"></i><span>Registered: ${((user.register_date.$date)?number?number_to_datetime)!"unknown"}</span>
                        </div>
                    </div>
                </li>
                </#list>
                </ul>
            </div>

        <#list context.users as json>
            <#assign user=json?eval>
            <#setting number_format="###">
            <#if json?index==0>
            <div class="content ${user.id}" style="display: inline-block;">
            <#else>
            <div class="content ${user.id}" style="display: none;">
            </#if>
        <div class="profile">
            <div class="picture"><img src="/static/images/defaultskin.png"/>
                <div class="badge green"><i class="fa fa-check"></i></div>
            </div>
        <div class="details">
            <div class="tags">
                <div class="tag orange">${user.type}</div>
                <div class="tag green">${(user.status)!"상태"}</div>
            </div>
            <div class="title">${user.id}</div>
        <#-- <div class="titulus">Branch administrator</div> -->


            <div class="description">

                <#setting datetime_format="yyyy-MM-dd. hh:MM:SS">
                <!--<div class="info-row"><i class="fa fa-map-marker"></i><span class="caption">Location:</span><span class="value">Paris, France</span></div>-->
                <div class="info-row"><i class="fa fa-clock-o"></i><span class="caption">Last login:</span><span
                        class="value">${((user.lastlogin.$date)?number?number_to_datetime)!"lastLogin"}</span></div>
                <div class="info-row"><i class="fa fa-calendar"></i><span class="caption">Created:</span><span
                        class="value">${((user.register_date.$date)?number?number_to_datetime)!"created_date"}</span>
                </div>
            </div>
            <hr/>
            <#list context.computers as json>
                <#assign computer=json?eval>
                <#setting number_format="###">
                <#if computer.id==user.id>
                    <div class="computer">
                        <div class="picture"><img src="/static/images/gritter/ui-sma2.jpg"/>
                            <div class="badge green"><i class="fa fa-check"></i></div>
                        </div>
                        <div class="details">
                            <div class="tags">
                                <div class="tag orange">${computer.use_ram} GB</div>
                            </div>
                            <div class="title">${computer.hosting_id}</div>
                        <#-- <div class="titulus">Branch administrator</div> -->


                            <div class="description">

                                <#setting datetime_format="yyyy-MM-dd">
                                <!--<div class="info-row"><i class="fa fa-map-marker"></i><span class="caption">Location:</span><span class="value">Paris, France</span></div>-->
                                <div class="info-row"><i class="fa fa-clock-o"></i><span
                                        class="caption">Using Port:</span><span
                                        class="value">${computer.use_port}</span></div>
                                <div class="info-row"><i class="fa fa-calendar"></i><span
                                        class="caption">Deadline:</span><span
                                        class="value">${((computer.deadline.$date)?number?number_to_datetime)!"created_date"}</span>
                                </div>
                            </div>
                        </div>
                        <div class="functions">
                            <div id="change-password" class="func"><i class="fa fa-key" data-toggle="modal" data-target="#modal-change-password"></i></div>
                            <!--<div class="func"><i class="fa fa-comments"></i></div>-->
                            <!--<div class="func"><i class="fa fa-edit"></i></div>-->
                            <div id="charge-deadline" class="func"><i class="fa fa-flag" data-toggle="modal" data-target="#modal-charge-deadline"></i></div>
                            <!--<div class="func"><i class="fa fa-share-alt"></i></div>-->
                            <div id="remove-computer" class="func"><i class="fa fa-trash-o" data-toggle="modal" data-target="#modal-delete"></i></div>
                        </div>
                    </div>
                    </hr>
                </#if>
            </#list>
        </#list>

        </div>
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
                    <input class="announcebox"/>
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

<#list context.computers as json>
    <#assign computer=json?eval>
    <div class="modal fade" id="modal-change-password-${computer.hosting_id}" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">사용자 비밀번호 변경</h4>
                </div>
                <div class="modal-body">
                    <p>비밀번호를 변경합니다.</p>
                    <input type="text" class="form-control" id="modal-change-password-value" placeholder="비밀번호" autofocus>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal-charge-deadline-${computer.hosting_id}" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">사용자 마감일 연장</h4>
                </div>
                <div class="modal-body">
                    <p>마감일을 연장합니다! 일 단위로 입력해주세요.</p>
                    <input type="text" class="form-control" id="modal-change-password-value" placeholder="30" autofocus>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</#list>

</body>