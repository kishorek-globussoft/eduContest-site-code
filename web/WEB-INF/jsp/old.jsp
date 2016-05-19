<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
        <title>Edumongoose | contest</title>
        <meta charset="utf-8"/>
        <!-- Compiled and minified CSS --> 
        <link rel="stylesheet" href="assets/plugins/materialize/css/materialize.css">
        <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/plugins/codemirror/lib/codemirror.css">
        <script src="assets/plugins/codemirror/lib/codemirror.js"></script>
        <script src="assets/plugins/codemirror/mode/xml/xml.js"></script>
        <script src="assets/plugins/codemirror/addon/selection/active-line.js"></script>
        <style type="text/css">
            .CodeMirror {border-top: 1px solid black; border-bottom: 1px solid black;}
        </style>
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="icon" type="image/png" href="assets/imgs/edu_icon.png">
    </head>
    <body>
        <nav>
            <div class="nav-wrapper">
                <a href="#" class="brand-logo center"><img src="assets/imgs/EduMongoose_1.png"></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="#">Sign In</a></li>
                    <li><a href="#"><i class="fa fa-sign-in fa-fw"></i>Sign In</a></li>
                </ul>
            </div>
        </nav>

        <%--<form:form action="/compiler/compile.htm" method="post">--%>
        <!--            Code</br><textarea name="code" style="width: 700px; height: 200px;" ></textarea></br></br></br>
                    Input</br><textarea name="input" style="width: 700px; height: 50px;" ></textarea></br></br></br>
                    Input<input type="text" name="input"/></br>
                    Output<input type="text" name="output"/></br>
                    Language<input type="text" name="language"/>
                    <div class="input-field col s12" >
                        <select id="language" name="language">
                            <option value="0">Select Language</option>
                            <option value="1">C</option>
                            <option value="2">C++</option>
                            <option value="3">JAVA</option>
                        </select>
                    </div>
                    <input type="submit" value="Submit" id="submitForm"/>-->
        <%--</form:form>--%>

        <div class="container">
            <form method="get" action="/compiler/compile">
                <div class="input-field col s12" >
                    <select id="language" name ="language">
                        <optgroup label="team 1">
                            <option value="0">Select Language</option>
                            <option value="1">C</option>
                            <option value="2">C++</option>
                            <option value="3">JAVA</option>
                        </optgroup>
                    </select>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <textarea id="code" name ="code" class="materialize-textarea"></textarea>
                        <label for="icon_prefix2">Code</label>
                    </div>
                    <div class="input-field col s6">
                        <textarea id="input" name = "input" class="materialize-textarea"></textarea>
                        <label for="icon_prefix2">Input</label>
                    </div>
                    <div class="input-field col s6">
                        <textarea id="output"  name = "output" class="materialize-textarea"></textarea>
                        <label for="icon_prefix2">Output</label>
                    </div>
                    <div class="input-field col s12">
                        <textarea id="error" name  = "error" class="materialize-textarea"></textarea>
                        <label for="icon_prefix2">Error</label>
                    </div>
                </div>
                <!--<input type ="submit" id="submit"/>-->
                <a class="waves-effect waves-light btn" id="run">RUN</a>
            </form>

        </div>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>


        <script type="text/javascript">
            $("#run").click(function () {
                var language = $("#language").val();
                if (language === '0') {
                    
                    alert("Please Select a langauge");
                    return false;
                }
                var to_compile = {
                    "language": language,
                    "code": $("#code").val(),
                    "input": $("#input").val()
                };
//                        $.ajax({
//                            url: "http://rextester.com/rundotnet/api",
//                            type: "POST",
//                            data: to_compile
//                        }).done(function (data) {
//                            var result = JSON.parse((JSON.stringify(data)));
//                            console.log(result);
//                            $("#output").val("\n");
//                            $("#output").val(result.Result);
//                            $("#error").val(result.Errors);
//                        }).fail(function (data, err) {
//                            alert("fail " + JSON.stringify(data) + " " + JSON.stringify(err));
//                        });
                $.ajax({
                    url: "/compiler/compile",
                    type: "POST",
                    data: to_compile
                }).then(function (data) {
                    var result = JSON.parse(JSON.stringify(data));
                    console.log(result);
                    $("#output").val("\n");
                    $("#output").val(result.output);
                    $("#error").val(result.compilerError);
                }).fail(function (data, err) {
                    alert("fail " + JSON.stringify(data) + " " + JSON.stringify(err));
                });
            });

            $(document).ready(function () {
                $('select').material_select();
            });
            $(document).ready(function () {
                $('ul.tabs').tabs('select_tab', 'tab_id');
            });
        </script>
    </body>
</html>
