<!doctype html>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">

<div class="text-center mb-3" id="concertTime">
    <ul>
        <li th:each="date: ${date}" th:text="|${date.concertDate} , ${date.concertDateTime}|"></li>
    </ul>

    <!-- Page Marker -->

</div>

</html>