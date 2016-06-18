<%-- 
    Document   : register
    Created on : Jun 17, 2016, 5:50:59 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <body>
  <div> 
     <div class="row">
        <div class="col offset-s4 s4 offset-m4 m4">
          <div class="card">
            <div class="card-content">
              <h5 class="card-title center grey-text">Register</h5>
                  <div class="row">
                    <form class="col s12">
                      <div class="row">
                        <div class="input-field col s6">
                          <input id="first_name"  type="text" class="validate">
                          <label for="first_name">First Name</label>
                        </div>
                        <div class="input-field col s6">
                          <input  id="last_name" type="text" class="validate">
                          <label for="last_name">Last Name</label>
                        </div>
                      </div>
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
                      <div class="row">
                        <div class="input-field col s12">
                          <input id="Cpassword" type="password" class="validate">
                          <label for="Cpassword">Re-Type Password</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                            <input id="Contact No" type="tel" class="validate">
                          <label for="Contact No" data-error="wrong" data-success="right">Contact No</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                          <select>
                            <option value="" disabled selected>Choose your option</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                          </select>
                          <label>Materialize Select</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                          <select>
                            <option value="" disabled selected>Choose your option</option>
                            <option value="1">Option 11</option>
                            <option value="2">Option 12</option>
                            <option value="3">Option 13</option>
                          </select>
                          <label>Materialize Select</label>
                        </div>
                      </div>
                    </form>
                  </div>
            </div>
            <div class="card-action center">
              <a href="#">Register</a>
              <a href="#">Sign In</a>
            </div>
          </div>
        </div>

     
      </div>
            



  </div>
  <!-- closed container-fliud -->


<!-- ================================================
Scripts
================================================ -->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

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
</html>
