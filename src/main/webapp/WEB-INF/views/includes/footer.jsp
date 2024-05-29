<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        #map {
            height: 300px;
            width: 50%;
            float: left;
        }
        #info {
            width: 50%;
            float: right;
            padding: 20px;
        }
    </style>
</head>
<body>

<footer>
    <div id="map"></div>
    <div id="info">
        <h2 style="text-align: left;">ICT</h2>
        <p style="text-align: left;">대구광역시 경상감영길 177 2층</p>
        <p style="text-align: left;">사업자등록번호 111-00-22222</p>
        <p style="text-align: left;">대표번호 02-333-9999</p>
        <p style="text-align: left;">FAX: 02-333-9999</p>
        <p style="text-align: left;">ⓒ ICT Corp.</p>
    </div>
    <div class="link_box" style="text-align: left;">
        <p><a href="/qna/list"> ICT 고객센터&nbsp;|</a><a href="/qna/list">&nbsp;개인정보 처리 방침&nbsp;|</a><a href="/qna/list">&nbsp;청소년 보호정책</a></p>
    </div>
</footer>



<!-- 네이버 지도 API 호출 -->
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=7wi2v66utg"></script>
<script>
    function initMap() {
        var mapOptions = {
            center: new naver.maps.LatLng(35.8722402, 128.5972335), // 대구 위도, 경도
            zoom: 15 // 줌 레벨
        };

        var map = new naver.maps.Map('map', mapOptions);

        // 마커 추가
        var marker = new naver.maps.Marker({
            position: new naver.maps.LatLng(35.8722402, 128.5972335), // 마커의 위도, 경도
            map: map
        });
    }

    // 페이지 로드 후 일정 시간이 지난 후에 지도 초기화
    window.onload = function () {
        setTimeout(initMap, 10); // 1초 후에 initMap 함수 호출
    };
</script>

</body>
</html>

