<%-- 
    Document   : createproblem
    Created on : Jun 4, 2016, 1:22:34 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript" src="../view/assets/plugins/ckeditor/ckeditor.js"></script>  
<body>

    <!-- START HEADER -->
    <header>
        <nav class="top-nav">
            <div class="container">
                <div class="nav-wrapper">
                    <a href="#" data-activates="nav-mobile" class="button-collapse top-nav full hide-on-large-only"><i class="fa fa-align-justify"></i></a>
                    <span class="page-title">Problems Creator</span>
                </div>

            </div>
        </nav>
    </header>
    <!-- //////////////////////////////////////////////////////////////////////////// -->

    <!-- START MAIN -->
    <main>
        <div class="container">

            <div class="row">
                <div class="col m12">
                    <div class="card">
                        <div class="card-content">
                            <span class="card-title">Create problem</span>
                            <form method="post" action="/admin/submitproblem.htm">
                                <div class="row">
                                     <div class="input-field col s6">
                                         <input id="title" type="text"  name="title" class="validate" placeholder="Title of the Problem" required="true">
                                        <label for="title">Title</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <input id="code" type="text" name="code" class="validate" placeholder="Code">
                                        <label for="Code">Code</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <select name="difficulty" id="difficulty">
                                            <option value="" disabled selected>Choose your option</option>
                                            <option value=1>Easy</option>
                                            <option value=2>Medium</option>
                                            <option value=3>Hard</option>
                                        </select>
                                        <label>Difficulty Level</label>
                                    </div>
                                    <div class="input-field col s12">
                                        <textarea class="ckeditor" cols="80" id="question" name="question" rows="10" tabindex="3">
<p>Problem Description...</p>
<h3><strong>Input</strong></h3>
<p>Input description...</p>
<h3><strong>Output</strong></h3>
<p>Output description...</p>
<h3><strong>Example</strong></h3>
<p><strong>Input:</strong><br />
etc.<br />
<strong>Output:</strong><br />
etc.</p> </textarea>
                                    </div>
                                </div>
                                <button class="btn waves-effect waves-light" type="submit" name="action">Submit
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>     
    </main>
    <!-- END MAIN -->


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

    <!-- ck editor -->
    <script>

        // Replace the <textarea id="editor"> with an CKEditor
        // instance, using default configurations.
        CKEDITOR.replace('editor1', {
            uiColor: '#14B8C4',
            toolbar: [
                ['Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink'],
                ['FontSize', 'TextColor', 'BGColor']
            ]
        });

        CKEDITOR.on('instanceReady', function (evt) {
            var editor = evt.editor;
            editor.setData('This editor has it\'s tabIndex set to <strong>' + editor.tabIndex + '</strong>');

            // Apply focus class name.
            editor.on('focus', function () {
                editor.container.addClass('cke_focused');
            });
            editor.on('blur', function () {
                editor.container.removeClass('cke_focused');
            });

            // Put startup focus on the first editor in tab order.
            if (editor.tabIndex == 1)
                editor.focus();
        });

    </script>
</body>

