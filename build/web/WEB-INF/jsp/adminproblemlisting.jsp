<%-- 
    Document   : problemlisting
    Created on : Jun 7, 2016, 6:43:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <main>
        <!--<div class="container">-->
        <div class="row">
            <div class="col m12 s12 l12">
                <div class="card">
                    <div class="card-content">
                        <div class="row">
                            <div class="col s12">
                                <ul class="tabs">
                                    <li class="tab col s3"><a class="active" href="#Allchallenges">All challenges</a></li>
                                    <li class="tab col s3"><a href="#Mychallenges">Mychallenges</a></li>
                                    <li class="tab col s3"><a href="#Sharedchallenges">Shared challenges</a></li>
                                </ul>
                            </div>
                            <div id="Allchallenges" class="col s12">
                                <table class="responsive-table">
                                    <thead>
                                        <tr  style="text-align: center">
                                            <th data-field="Name">Name</th>
                                            <th data-field="Code">Code</th>
                                            <th data-field="Created">Created</th>
                                            <th data-field="Difficulty">Difficulty</th>
                                            <th data-field="Author">Author</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>

                                    <tbody id="problems">
                                        <c:forEach items="${problems}" var="problem">     
                                            <tr>
                                                <td>${problem.title}</td>
                                                <td>${problem.code}</td>
                                                <td>${problem.date}</td>
                                                <c:if test="${problem.difficulty == 1}">
                                                    <td>Easy</td>            
                                                </c:if>
                                                <c:if test="${problem.difficulty == 2}">
                                                    <td>Medium</td>            
                                                </c:if>
                                                <c:if test="${problem.difficulty == 3}">
                                                    <td>Hard</td>            
                                                </c:if>
                                                <td>${problem.author}</td>
                                                <td><a href="#"><i class="fa fa-files-o fa-fw"></i>clone</a></td>
                                                <td><a href="#"><i class="fa fa-cogs fa-fw"></i>edit</a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div id="Mychallenges" class="col s12">
                                <table class="responsive-table">
                                    <thead>
                                        <tr>
                                            <th data-field="Name">Name</th>
                                            <th data-field="Code">Code</th>
                                            <th data-field="Created">Created</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>

                                    <tbody id="problems">
                                    </tbody>
                                </table>
                            </div>
                            <div id="Sharedchallenges" class="col s12">
                                <table class="responsive-table">
                                    <thead>
                                        <tr>
                                            <th data-field="Name">Name</th>
                                            <th data-field="Code">Code</th>
                                            <th data-field="Created">Created</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td>problem_1 <span class="shared_badge">Shared problem</span></td>
                                            <td>HTML5</td>
                                            <td>22/04/2015</td>
                                            <td><a href="#"><i class="fa fa-files-o fa-fw"></i>clone</a></td>
                                            <td><a href="#"><i class="fa fa-cogs fa-fw"></i>edit</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!--</div>-->     


        <div class="fixed-action-btn horizontal" style="bottom: 45px; right: 24px;">
            <a class="btn-floating btn-large red">
                <i class="fa fa-edit"></i>
            </a>
            <ul>
                <li><a class="btn-floating red"><i class="fa fa-file-archive-o"></i></a></li>
                <li><a class="btn-floating blue"><i class="fa fa-link"></i></a></li>
            </ul>
        </div>
    </main>
    <!-- END MAIN -->

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
            m.parentNode.insertBefore(a, m);
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-58515856-20', 'auto');
        ga('send', 'pageview');</script>

    <!-- jQuery Library -->
    <script type="text/javascript" src="../view/assets/plugins/jquery.min.js"></script>    
    <!--materialize js-->
    <script type="text/javascript" src="../view/assets/plugins/materialize/js/materialize.min.js"></script>
    <script type="text/javascript" src="../view/assets/admin/js/init.js"></script>
    <!--scrollbar-->
    <script type="text/javascript" src="../view/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>   

</html>
