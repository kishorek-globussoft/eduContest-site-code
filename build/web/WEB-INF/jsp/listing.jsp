<!-- START MAIN -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    
</head>
<body >
    <div id ="main">
        <!-- START WRAPPER -->
        <div class="wrapper">

            <!-- START CONTENT -->
            <section id="content">

                <!--start container-->
                <div class="container">
                    <div class="row">
                        <div class="col s12">
                            <ul class="tabs">
                                <li class="tab col s3"><a class="active" href="#easy">Easy</a></li>
                                <li class="tab col s3"><a href="#medium">Medium</a></li>
                                <li class="tab col s3"><a href="#hard">Hard</a></li>
                            </ul>
                        </div>
                        <div id="easy" class="col s12">
                            <div class="container">
                                <table class="highlight responsive-table">
                                    <thead>
                                        <tr>
                                            <th data-field="Title">Title</th>
                                            <th data-field="Code">Code</th>
                                            <th data-field="Points">Points</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <c:forEach items="${problems}" var="problem">     
                                            <c:if test="${problem.difficulty == 1}">
                                                <tr>
                                                    <td><a href="/user/solveproblem.htm?code=${problem.code}">${problem.title}</a></td>
                                                    <td>${problem.code}</td>
                                                    <td>${problem.point}</td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div id="medium" class="col s12">
                            <div class="container">
                                <table class="highlight responsive-table">
                                    <thead>
                                        <tr>
                                            <th data-field="Title">Title</th>
                                            <th data-field="Code">Code</th>
                                            <th data-field="Points">Points</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <c:forEach items="${problems}" var="problem">     
                                            <c:if test="${problem.difficulty == 2}">
                                                <tr>
                                                    <td><a href="/user/solveproblem.htm?code=${problem.code}">${problem.title}</a></td>
                                                    <td>${problem.code}</td>
                                                    <td>${problem.point}</td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div id="hard" class="col s12">
                            <div class="container">
                                <table class="highlight">
                                    <thead>
                                        <tr>
                                            <th data-field="Title">Title</th>
                                            <th data-field="Code">Code</th>
                                            <th data-field="Points">Points</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <c:forEach items="${problems}" var="problem">     
                                            <c:if test="${problem.difficulty == 3}">
                                                <tr>
                                                    <td><a href="/user/solveproblem.htm?code=${problem.code}">${problem.title}</a></td>
                                                    <td>${problem.code}</td>
                                                    <td>${problem.point}</td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!--end container-->


            </section>
        </div>
        <!-- END WRAPPER -->

    </div>
    <!-- END MAIN -->
</body>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-58515856-20', 'auto');
    ga('send', 'pageview');

</script>

<!-- jQuery Library -->
<script type="text/javascript" src="../view/assets/js/jquery-1.11.2.min.js"></script>    
<!--materialize js-->
<script type="text/javascript" src="../view/assets/js/materialize.min.js"></script>
<!--scrollbar-->
<script type="text/javascript" src="../view/assets/js/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

<!--plugins.js - Some Specific JS codes for Plugin Settings-->
<script type="text/javascript" src="../view/assets/js/plugins.js"></script>
<script type="text/javascript" src="../view/assets/plugins/codemirror/lib/codemirror.js"></script> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../view/assets/plugins/lightslider-master/src/js/lightslider.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#lightSlider").lightSlider();
    });
</script>

