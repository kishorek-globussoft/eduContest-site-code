<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
    <head>
        <link href="../view/assets/users/css/test.css" type="text/css" rel="stylesheet" media="screen,projection">


        <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->    
        <link href="../view/assets/plugins/perfect-scrollbar/perfect-scrollbar.css" type="text/css" rel="stylesheet" media="screen,projection">
        <link href="../view/assets/plugins/font-awesome/css/font-awesome.css" type="text/css" rel="stylesheet" media="screen,projection">

        <link rel="stylesheet" href="../view/assets/plugins/codemirror/doc/docs.css">

        <link rel="stylesheet" href="../view/assets/plugins/codemirror/lib/codemirror.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/addon/fold/foldgutter.css" />


        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/3024-day.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/3024-night.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/abcdef.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/ambiance.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/base16-dark.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/bespin.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/base16-light.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/blackboard.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/cobalt.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/colorforth.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/dracula.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/eclipse.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/elegant.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/erlang-dark.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/hopscotch.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/icecoder.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/isotope.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/lesser-dark.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/liquibyte.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/material.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/mbo.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/mdn-like.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/midnight.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/monokai.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/neat.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/neo.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/night.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/paraiso-dark.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/paraiso-light.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/pastel-on-dark.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/railscasts.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/rubyblue.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/seti.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/solarized.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/the-matrix.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/tomorrow-night-bright.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/tomorrow-night-eighties.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/ttcn.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/twilight.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/vibrant-ink.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/xq-dark.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/xq-light.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/yeti.css">
        <link rel="stylesheet" href="../view/assets/plugins/codemirror/theme/zenburn.css">

        <script src="../view/assets/plugins/codemirror/lib/codemirror.js"></script>
        <script src="../view/assets/plugins/codemirror/addon/fold/foldcode.js"></script>
        <script src="../view/assets/plugins/codemirror/addon/fold/foldgutter.js"></script>
        <script src="../view/assets/plugins/codemirror/addon/fold/brace-fold.js"></script>
        <script src="../view/assets/plugins/codemirror/addon/fold/xml-fold.js"></script>
        <script src="../view/assets/plugins/codemirror/addon/fold/markdown-fold.js"></script>
        <script src="../view/assets/plugins/codemirror/addon/fold/comment-fold.js"></script>
        <script src="../view/assets/plugins/codemirror/mode/javascript/javascript.js"></script>
        <script src="../view/assets/plugins/codemirror/mode/xml/xml.js"></script>
        <script src="../view/assets/plugins/codemirror/addon/selection/active-line.js"></script>
        <script src="../view/assets/plugins/codemirror/mode/markdown/markdown.js"></script>

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
        <script type="text/javascript">
        </script>
        <style type="text/css">
            .CodeMirror {
                border-top: 1px solid black; 
                border-bottom: 1px solid black;
                height: 500px;
            }
        </style>
        <!-- jQuery Library -->
        <script type="text/javascript" src="../view/assets/plugins/jquery.min.js"></script>    
        <!--materialize js-->
        <script type="text/javascript" src="../view/assets/plugins/materialize/js/materialize.min.js"></script>
        <script type="text/javascript" src="../view/assets/users/js/init.js"></script>
        <!--scrollbar-->
        <script type="text/javascript" src="../view/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>       


    </head>

    <body id="main">


        <main>
            <div class="container">
                <div class="row">
                    <div class="col m12 l12 s12">
                        <div class="row">
                            <div class="col m12 l12 s12">
                                <div class="row">
                                    <ul class="collapsible popout" data-collapsible="accordion">
                                        <li>
                                            <div class="collapsible-header active">${problem.title}</div>
                                            <div class="collapsible-body " id="qus"   style="text-align: justify;margin-left: 10px;margin-right: 10px">
                                                ${problem.question}
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col m12 l12 s12">
                        <article style="max-width: none;">
                            <form id="solution" action ="/compiler/execute.htm" method="get">
                                <input type="hidden" id="problemCode" name="problemCode" value="${problem.code}" />
                                <div class="row">
                                    <div class="col s4">
                                        <h4>CODE</h4>
                                    </div>
                                    <div class="col s5">
                                        <div class="input-field col s12">
                                            <select name="language">
                                                <option value="" disabled selected>Choose your language</option>
                                                <option value="c">C</option>
                                                <option value="c++">C++ (GCC)</option>
                                                <option value="java">JAVA</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col s3">
                                        <div class="input-field col s12">
                                            <select onchange="selectTheme()" id="select">
                                                <option selected>default</option>
                                                <option>blackboard</option>
                                                <option>colorforth</option>
                                                <option>eclipse</option>
                                                <option>icecoder</option>
                                                <option>seti</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>    

                                <div style=" margin-bottom: 1em"><br>
                                    <textarea id="program" name="program"></textarea></div>

                                <div class="row card">
                                    <div class="col s12">
                                        <ul class="tabs">
                                            <li class="tab col s3"><a class="active" href="#input">Provide custom input</a></li>
                                            <li class="tab col s3"><a href="#output">Result</a></li>
                                        </ul>
                                    </div>
                                    <div id="input" class="col s12">
                                        <div class="input-field">
                                            <textarea id="input" name="input" class="materialize-textarea"></textarea>
                                            <label for="input">Input</label>
                                        </div>
                                    </div>
                                    <div id="output" class="col s12">
                                        <div class="input-field">
                                            <textarea id="output" name="output" class="materialize-textarea"></textarea>
                                            <label for="output">Output</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="col m12 center">
                                    <span class="waves-effect waves-light btn" onclick="$('#solution').submit()"><i class="fa fa-cogs fa-fw" aria-hidden="true"></i>run</span>
                                </div>
                            </form>
                        </article>
                    </div>
                </div>
            </div>
        </div>     
    </main>



    <script id="script">
        var editor = CodeMirror.fromTextArea(document.getElementById("program"), {
            lineNumbers: true,
            styleActiveLine: true,
            matchBrackets: true,
            // mode: "text/x-java"
        });
        var input = document.getElementById("select");
        function selectTheme() {
            var theme = input.options[input.selectedIndex].textContent;
            editor.setOption("theme", theme);
            location.hash = "#" + theme;
        }
        var choice = (location.hash && location.hash.slice(1)) ||
                (document.location.search &&
                        decodeURIComponent(document.location.search.slice(1)));
        if (choice) {
            input.value = choice;
            editor.setOption("theme", choice);
        }
        CodeMirror.on(window, "hashchange", function () {
            var theme = location.hash.slice(1);
            if (theme) {
                input.value = theme;
                selectTheme();
            }
        });
        var mac = CodeMirror.keyMap.default == CodeMirror.keyMap.macDefault;
        CodeMirror.keyMap.default[(mac ? "Cmd" : "Ctrl") + "-Space"] = "autocomplete";
    </script>
</script>
<script>
    // var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
    //   lineNumbers: true,
    //   styleActiveLine: true,
    //   matchBrackets: true
    // });
    var input = document.getElementById("select");
    function selectTheme() {
        var theme = input.options[input.selectedIndex].textContent;
        editor.setOption("theme", theme);
        location.hash = "#" + theme;
    }
    var choice = (location.hash && location.hash.slice(1)) ||
            (document.location.search &&
                    decodeURIComponent(document.location.search.slice(1)));
    if (choice) {
        input.value = choice;
        editor.setOption("theme", choice);
    }
    CodeMirror.on(window, "hashchange", function () {
        var theme = location.hash.slice(1);
        if (theme) {
            input.value = theme;
            selectTheme();
        }
    });
</script>
</body>
</html>