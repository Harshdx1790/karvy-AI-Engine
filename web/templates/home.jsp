<%-- 
    Document   : home
    Created on : Mar 7, 2017, 5:15:40 PM
    Author     : harshvardhan.solanki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Karvy Image Analytics</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="static/code/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="static/code/css/angular-material.min.css">
        <link rel="stylesheet" type="text/css" href="static/code/css/custom.css">
        <link rel="stylesheet" type="text/css" href="static/code/css/fontAwesome/css/font-awesome.css">
    </head>
    <body>
        <div class="wrapper" style="" >
            <div >  
              <nav>
        <div class="nav-wrapper" style="background-color: #fff;color:#0d47a1 ">
        <a href="#" class="brand-logo right"><img src="static/code/images/logo.jpg" style='width:100%;height:100%'></a>
      <ul id="nav-mobile" class="left hide-on-med-and-down">
        <li><h4>Karvy Image Analytics </h4></li>
       
      </ul>
    </div>
  </nav>
          </div >    
            
            <div >
                <nav>
    <div style="background-color: #1e88e5" class="nav-wrapper">
      
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><div><a href="">About us</a></div></li>
        <li><div><a href="">Solutions</a></div></li>
        <li><div><a href="">Learning</a></div></li>
        <li><div><a href="">Community</a></div></li>
        <li><div><a href="">Support</a></div></li>
        <li><div><a class="waves-effect waves-light modal-trigger" href="#modal1">Sign In</a></div></li>
        <li><div><a class="waves-effect waves-light modal-trigger" href="#modal2">Sign Up</a></div></li>
        
      </ul>
    </div>
  </nav>
            </div>
            
    
          <!--body part--> 
          <div >
              <div style="" class="slider">
                  <ul class="slides" style="height:800px" >
      <li>
        <img style="" src="static/code/images/e.jpg"> <!-- random image -->
        <div class="caption center-align">
<!--          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>-->
        </div>
      </li>
      <li>
        <img src="static/code/images/f.jpg"> <!-- random image -->
        <div class="caption left-align">
<!--          <h3>Left Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>-->
        </div>
      </li>
      <li>
        <img src="static/code/images/d.jpg"> <!-- random image -->
        <div class="caption right-align">
<!--          <h3>Right Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>-->
        </div>
      </li>
      <li>
        <img src="static/code/images/b.jpg"> <!-- random image -->
        <div class="caption center-align">
<!--          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>-->
        </div>
      </li>
      <li>
        <img src="static/code/images/c.jpg"> <!-- random image -->
        <div class="caption center-align">
<!--          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>-->
        </div>
      </li>
      <li>
        <img src="static/code/images/g.jpg"> <!-- random image -->
        <div class="caption center-align">
<!--          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>-->
        </div>
      </li>
      <li>
        <img src="static/code/images/h.jpg"> <!-- random image -->
        <div class="caption center-align">
<!--          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>-->
        </div>
      </li>
    </ul>
  </div>
          </div>    
          <div style="margin-top: 3%;margin-bottom: 10%" align="center">
               <input id="typeTest" type="text" class="validate">
          <label for="typeTest">Type your name here </label>
      <h2> Want to convert your images into meaningful insights?</h2>  
      <a style="margin-top: 2%" class="waves-effect waves-light btn" onclick="redirecttoLanding()">click here</a>
    </div>
          
    
          
<!--          <div>
           <div class="carousel">
    <a class="carousel-item" href="#one!"><img src="static/code/images/a.jpg"></a>
    <a class="carousel-item" href="#two!"><img style="height:  300px;width:300px" src="static/code/images/b.jpg"></a>
    <a class="carousel-item" href="#three!"><img style="height: 300px;width:300px" src="static/code/images/c.jpg"></a>
    <a class="carousel-item" href="#four!"><img  style="height: 300px;width:300px" src="static/code/images/d.jpg"></a>
    <a class="carousel-item" href="#five!"><img style="height:  300px;width:300px" src="static/code/images/e.jpg"></a>
    <a class="carousel-item" href="#five!"><img style="height:  300px;width:300px" src="static/code/images/f.jpg"></a>
    <a class="carousel-item" href="#five!"><img style="height:  300px;width:300px" src="static/code/images/g.jpg"></a>
    <a class="carousel-item" href="#five!"><img style="height:  300px;width:300px" src="static/code/images/h.jpg"></a>
  </div>
          
          <div style="margin-top: 10%" align="center">
      <h2> Want to convert your images into meaningful insights?</h2>  
      <a class="waves-effect waves-light btn">click here</a>
    </div>
    </div>-->
        
          
          <!--end of body part-->
          
          
          <!--login form--> 
      
          <div style="width:500px" align="center" id="modal1" class="modal">
              <div class="modal-content">
                  <h4>Sign In </h4>
                  <p>Please enter your details</p>
                  <div class="row">
                      <div class="col s12">
                          <div class="input-field col s12">
                              <i class="material-icons prefix">account_circle</i>
                              <input id="user_name" type="text" class="validate">
                              <label for="user_name">User Name</label>
                          </div>
                          <div class="input-field col s12">
                              <i class="material-icons prefix">vpn_key</i>
                              <input id="password" type="password" class="validate">
                              <label for="password">Password</label>
                          </div>
                      </div>
                  </div>    
              </div>
              <div class="modal-footer">
                  <a  class=" modal-action modal-close waves-effect waves-green btn-flat" onclick="userDetailsInfo()">Agree</a>
              </div>
          </div>
          
          
          <!--end of login form--> 
          
          <!--registration form-->
          <div style="" align="center" id="modal2" class="modal">
              <div class="modal-content">
                  <h4>Registration Form </h4>
                  <p>Please enter your details</p>
                   <div class="row">
                              <div class="input-field col s12">
                                   <i class="material-icons prefix">account_circle</i>
                                  <input id="uName" type="text" class="validate">
                                  <label for="uName">User Name</label>
                              </div>
                          </div>
                  <div class="row">
                      <form class="col s12">
                          <div class="row">
                              <div class="input-field col s6">
                                  <i class="material-icons prefix">perm_identity</i>
                                  <input  id="first_name" type="text" class="validate">
                                  <label for="first_name">First Name</label>
                              </div>
                              <div class="input-field col s6">
                                  <i class="material-icons prefix">perm_identity</i>
                                  <input id="last_name" type="text" class="validate">
                                  <label for="last_name">Last Name</label>
                              </div>
                          </div>
<!--                          <div class="row">
                              <div class="input-field col s12">
                                  <input disabled value="I am not editable" id="disabled" type="text" class="validate">
                                  <label for="disabled">Disabled</label>
                              </div>
                          </div>-->
                          <div class="row">
                              <div class="input-field col s12">
                                   <i class="material-icons prefix">vpn_key</i>
                                  <input id="pwd" type="password" class="validate">
                                  <label for="pwd">Password</label>
                              </div>
                          </div>
                         
                          <div class="row">
                              <div class="input-field col s6">
                                  <i class="material-icons prefix">email</i>
                                  <input id="email" type="email" class="validate">
                                  <label for="email">Email</label>
                              </div>
                          
                              <div class="input-field col s6">
                                  <i class="material-icons prefix">phone</i>
                                  <input id="icon_telephone" type="tel" class="validate">
                                  <label for="icon_telephone">Telephone</label> 
                              </div>
                          </div>
                      </form>
                  </div>
              </div>
              <div class="modal-footer">
                  <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
              </div>
          </div>     
          <!--end of registration form--> 
          
          
          <!--alert box--> 
          
          <div id="modal3" class="modal">
              <div class="modal-content">
                  <h4>Modal Header</h4>
                  <p>A bunch of text</p>
              </div>
              <div class="modal-footer">
                  <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
              </div>
          </div>
          <!--end of alert box-->
          
            <div>
                <footer class="page-footer" style="background-color: #0d47a1">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Karvy Analytics </h5>
                <p style="margin:0;font-style: italic;font-family: -webkit-body;" class="grey-text text-lighten-4">Plot No.31,</p>
                <p style="margin:0;font-style: italic;font-family: -webkit-body;" class="grey-text text-lighten-4">Financial District,</p>
                <p style="margin:0;font-style: italic;font-family: -webkit-body;" class="grey-text text-lighten-4">Gachibowli,</p>
                <p style="margin:0;font-style: italic;font-family: -webkit-body;" class="grey-text text-lighten-4">Hyderabad - 500 032,</p>
                <p style="margin:0;font-style: italic;font-family: -webkit-body;" class="grey-text text-lighten-4">India.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!"><i class="fa fa-facebook-official" aria-hidden="true"></i>  Facebook </a></li>
                  <li><a class="grey-text text-lighten-3" href="#!"><i class="fa fa-linkedin-square" aria-hidden="true"></i> LinkedIn</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!"><i class="fa fa-youtube-square" aria-hidden="true"></i> YouTube</a></li>
                  
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
              <div align="center" style="font-size: small;" class="container">
            Contact Us .  Site Map .  Terms & Conditions . Privacy Policy . <i class="fa fa-copyright" aria-hidden="true"></i> 2016 Powered by @ Karvy Analytics .
            <a class="grey-text text-lighten-4 right" href="#!"></a>
            </div>
          </div>
        </footer>
                
            </div>
            
            
            
            
        </div>
        <script>var myContextPath = "${pageContext.request.contextPath}"</script>
        <script type="text/javascript" src="static/code/JS/angular/angular.min.js"></script>
        <script type="text/javascript" src="static/code/JS/angular/angular-route.min.js"></script>
        <script type="text/javascript" src="static/code/JS/angular/angular-animate.min.js"></script>
        <script type="text/javascript" src="static/code/JS/angular/angular-aria.min.js"></script>
        <script type="text/javascript" src="static/code/JS/angular/angular-messages.min.js"></script>
        <script type="text/javascript" src="static/code/JS/angular/angular-material.min.js"></script>
        <script type="text/javascript" src="static/code/JS/jquery.min.js"></script>
        <script type="text/javascript" src="static/code/JS/materialize.min.js"></script>
        <script type="text/javascript" src="static/code/scripts/process.js"></script>  
        <script type="text/javascript">
//            $('.carousel').carousel();
  
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
     $('.modal-trigger').leanModal();
 $('.slider').slider();

            </script>
    </body>
</html>

