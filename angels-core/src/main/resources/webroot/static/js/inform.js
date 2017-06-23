// /**
//  * Created by production on 2017-06-14.
//  */
// jQuery(function ($) {
//     $(window).load(function () {
//         var table = document.getElementById("useInfo");
//         var xhr = new XMLHttpRequest();
//         xhr.onload = function () {
//             if (xhr.status == 200) {
//                 var response = JSON.parse(xhr.response);
//                 var parsedArr = response.map(function (data) {
//                         return JSON.parse(data);
//                 })
//                 for(var i=0; i<parsedArr.length; i++) {
//                     table.innerHTML += "<tr><td>" + parsedArr[i].hosting_id + "</td><td>" + parsedArr[i].hosting_pw + "</td><td>" + parsedArr[i].use_port + "</td><td>" + parsedArr[i].use_ram + " GB</td><td>" + parsedArr[i].deadline + "</td><td>충전하기</td></tr>";
//                 }
//             }
//         }
//
//         xhr.open('GET', '/api/inform', true);
//         xhr.setRequestHeader("Content-Type", "application/json");
//         xhr.send();
//     });
// });