<%-- 
    Document   : signin
    Created on : Jun 17, 2016, 5:50:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body>
    <!-- START container-fliud -->
    <div> 
        <div class="row">
            <div class="col offset-s4 s4 offset-m4 m4">
                <div class="card">
                    <div class="card-content">
                        <h5 class="card-title center grey-text">Sign In</h5>
                        <div class="row">
                            <form class="col s12">
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input id="uname" type="text" class="validate">
                                        <label for="uname">UserName</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input id="email" type="email" class="validate">
                                        <label for="email">Email</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input id="password" type="password" class="validate">
                                        <label for="password">Password</label>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="card-action center">
                        <a href="#">Sign In</a>
                        <a href="#">Register</a>
                    </div>
                </div>
            </div>


        </div>
    </div>

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
    <script type="text/javascript" src="../view/assets/plugins/jquery.min.js"></script>    
    <!--materialize js-->
    <script type="text/javascript" src="../view/assets/plugins/materialize/js/materialize.js"></script>
    <script type="text/javascript" src="../view/assets/frontend/js/init.js"></script>

    <script type="text/javascript">
        $('.parallax').parallax();
    </script>  


</body>
