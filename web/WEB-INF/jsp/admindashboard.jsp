<%-- 
    Document   : admindashboard
    Created on : Jun 4, 2016, 12:39:44 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header id="header">
    <nav class="top-nav">
        <div class="container">
            <div class="nav-wrapper">
                <a href="#" data-activates="nav-mobile" class="button-collapse top-nav full hide-on-large-only"><i class="fa fa-align-justify"></i></a>
                <span class="page-title">Dashboard</span>
            </div>

        </div>
    </nav>
</header>
<body>
    <main >
        <div class="container">
            <div class="row">
                <div class="col m4">
                    <div class="card blue-grey darken-1">
                        <div class="card-content white-text center">
                            <span class="card-title">0</span>
                            <p>Number of reports</p>
                        </div>
                    </div>
                </div>
                <div class="col m8">
                    <div class="card grey darken-1">
                        <div class="card-content white-text">
                            <span class="card-title">Card Title</span>
                            <p>I am a very simple card. I am good at containing small bits of information.
                                I am convenient because I require little markup to use effectively.</p>
                        </div>
                    </div>
                </div>
                <div class="col m12">
                    <div class="card">
                        <div class="card-content">
                            <table class="responsive-table">
                                <thead>
                                    <tr>
                                        <th data-field="id">ID</th>
                                        <th data-field="date">Date</th>
                                        <th data-field="Status">Status</th>
                                        <th data-field="Problem">Problem</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>x</td>
                                        <td>xxx</td>
                                        <td>xxx</td>
                                        <td>xxx</td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="card center">
                                <div class="card-content">
                                    <p>No reports found.</p>
                                    <a href="uploadproblem.htm" class="btn">Create a problem</a>
                                    <a href="#" class="btn">Read documentation</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>     
    </main>


    <!-- ================================================
    Scripts
    ================================================ -->
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
    <script type="text/javascript" src="../view/assets/plugins/materialize/js/materialize.min.js"></script>
    <script type="text/javascript" src="../view/assets/admin/js/init.js"></script>
    <!--scrollbar-->
    <script type="text/javascript" src="../view/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>       
</body>
<!-- Toast Notification -->
