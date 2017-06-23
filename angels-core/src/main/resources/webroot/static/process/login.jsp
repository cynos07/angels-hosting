<!--
  Created by IntelliJ IDEA.
  User: production
  Date: 1/9/2017
  Time: 8:17 PM
  To change this template use File | Settings | File Templates.
-->
<!--<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>-->
<!--<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>-->
<!--<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>-->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" import="java.sql.*"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script src="https://www.gstatic.com/firebasejs/3.6.4/firebase.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.6.4/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.6.4/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.6.4/firebase-database.js"></script>
<script src='https://cdn.firebase.com/js/client/2.2.1/firebase.js'></script>
<script src='/js/jquery.js'></script>
<script>
    // Initialize Firebase
    var config = {
        apiKey: "AIzaSyAnKkU415A4Mf5WRI6WF77DbBHZ3A07gik",
        authDomain: "angels-hosting.firebaseapp.com",
        databaseURL: "https://angels-hosting.firebaseio.com",
        storageBucket: "angels-hosting.appspot.com",
        messagingSenderId: "709115678485"
    };
    firebase.initializeApp(config);

    var database = firebase.database();
    var user_id = '<%=user_id%>';
    var user_pw = '<%=user_pw%>';

    var favMovies = new Firebase('https://dsmweb-ba185.firebaseio.com');


    firebase.database().ref('/users/' + user_id).once('value').then(function(snapshot) {
        if (snapshot.val() != null && user_id == snapshot.val().username && user_pw == snapshot.val().password)
        {
            var user_kind = snapshot.val().type;
            location.replace("index.html?user_type="+snapshot.val().type);
        }
        else {
            alert("ID/PW 가 틀립니다. 다시 확인해주세요.");
            location.replace("../login.html");
        }
        // ...
    });
</script>
</body>
</html>
