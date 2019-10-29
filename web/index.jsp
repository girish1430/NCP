<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Social Outreach</title>
<style>
#container {
    width:400px;
    padding:0px;
    /*background:#fefefe;*/
    margin:0 auto;
    border:1px solid #c4cddb;
    border-top-color:#d3dbde;
    border-bottom-color:#bfc9dc;
    box-shadow:0 1px 1px #ccc;
    border-radius:5px;
    position:relative;
}

#container span {
    /*background:#f6f6f6;*/
    padding:3px 5px;
    display:block;
    border-radius:5px;
    margin-top:5px;
}
#container h2 {
	color: #fefefe;
}


#pswd_info {
    position:absolute;
    bottom:-75px;
    bottom: -115px\9; /* IE Specific */
    right:75px;
    width:250px;
    padding:15px;
    background:#fefefe;
    font-size:.875em;
    border-radius:5px;
    box-shadow:0 1px 3px #ccc;
    border:1px solid #ddd;
}

#pswd_info h4 {
    margin:0 0 10px 0;
    padding:0;
    font-weight:normal;
}

#pswd_info::before {
    content: "\25B2";
    position:absolute;
    top:-12px;
    left:45%;
    font-size:14px;
    line-height:14px;
    color:#ddd;
    text-shadow:none;
    display:block;
}
.invalid {
    background:url("css/images/invalid.png") no-repeat 0 50%;
    padding-left:22px;
    line-height:24px;
    color:#ec3f41;
}
.valid {
    background:url("css/images/valid.png") no-repeat 0 50%;
    padding-left:22px;
    line-height:24px;
    color:#3a7d34;
}
#pswd_info {
    display:none;
}




	</style>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/light-box.css">
        <link rel="stylesheet" href="css/templatemo-main.css">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

<body>
    
    
    <div class="sequence">
  
      <div class="seq-preloader">
        <svg width="39" height="16" viewBox="0 0 39 16" xmlns="http://www.w3.org/2000/svg" class="seq-preload-indicator"><g fill="#F96D38"><path class="seq-preload-circle seq-preload-circle-1" d="M3.999 12.012c2.209 0 3.999-1.791 3.999-3.999s-1.79-3.999-3.999-3.999-3.999 1.791-3.999 3.999 1.79 3.999 3.999 3.999z"/><path class="seq-preload-circle seq-preload-circle-2" d="M15.996 13.468c3.018 0 5.465-2.447 5.465-5.466 0-3.018-2.447-5.465-5.465-5.465-3.019 0-5.466 2.447-5.466 5.465 0 3.019 2.447 5.466 5.466 5.466z"/><path class="seq-preload-circle seq-preload-circle-3" d="M31.322 15.334c4.049 0 7.332-3.282 7.332-7.332 0-4.049-3.282-7.332-7.332-7.332s-7.332 3.283-7.332 7.332c0 4.05 3.283 7.332 7.332 7.332z"/></g></svg>
      </div>
      
    </div>
    
  
        <nav>
          <div class="logo">
              <img src="img/desk.png" alt="" style="width:180px; height:70px; ">
          </div>

          <ul>
            <li><a href="#1"><i class="fa fa-home"></i><em>Home</em></a></li>
            <li><a href="#2"><i class="fa fa-user"></i><em>About</em></a></li>
            <li><a href="#3"><i class="fa fa-inr"></i><em>Sponsor</em></a></li>
            <li><a href="#4"><i class="fa fa-flag"></i> <em>Events</em></a></li>
            <li><a href="#5"><i class="fa fa-handshake-o"></i><em>Volunteer</em></a></li>
          </ul>
        </nav>
        
        <div class="slides">
          <div class="slide" id="1">
            <div class="content first-content">
              <div class="container-fluid">
                  <div class="col-md-3">
                      <div class="author-image"><img src="img/logo_image.png" alt=""></div>
                  </div>
                  <div class="col-md-9">
                      <h2>Social Outreach</h2>
                      <p><em>Social Outreach</em> initiatives are a comprehensive set of programs that inspires people to care for themselves and their communities through large-scale, sustainable and culturally appropriate health, education, environment and livelihood projects.</p>
                      <div class="fb-btn"><a href="login.jsp">Admin Login</a></div>
                      <div class="fb-btn"><a href="slogin.jsp">Sponsor Login</a></div>
                  </div>
              </div>
            </div>
          </div>
          <div class="slide" id="2">
            <div class="content second-content">
                <div class="container-fluid">
                    <div class="col-md-6">
                        <div class="left-content">
                            <h2>About Us</h2>
                            <p>Social Outreach is a grassroots social initiative established by our University, which aims to take corrective measures to increase the green cover, restore soil health, improve education, life of perople and manage natural resources appropriately. We have involved in an array of rural and urban greening campaigns across South India, and has over the years partnered with the government, corporates, schools, colleges and NGOs in various environmental initiatives.</p>p>

 
                            <p>Over the past two and a half decades, our projects have generated tremendous public recognition and goodwill from international forums to village-based stakeholders meetings. The success has been possible through the direct participation of over 200,000 volunteers from around India and the globe.</p>
                            
                        
                      </div>
                    </div>
                    <div class="col-md-6">
                        <div class="right-image">
                          <img src="img/about_image.jpg" alt="">
                      </div>
                    </div>
                </div>
            </div>
          </div>
          <div class="slide" id="3">
            <div class="content fifth-content">
                <div class="container-fluid">

                	<br>

                	  <div id="container">
                	  	
                        <form id="contact" action="/jdbc_check_mysql/signup" method="post">
                            <div class="row">
                            	<h2>Sign Up</h2><br>
                                <div class="col-md-12">
                                  <fieldset>
                                    <input name="name" type="text" class="form-control" id="name" placeholder="Sponsor Name..." required="">
                                  </fieldset>
                                </div>
                                 <div class="col-md-12">
                                  <fieldset>
                                    <input name="phone" type="text" class="form-control" id="phone" placeholder="Phone Number..." required="" maxlength="10">
                                  </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="Email Id..." required="">
                                  </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset>
                                    <input name="password" type="password" class="form-control" id="pswd" placeholder="Password..." required="">
                                  </fieldset>
                                    
                                </div>
                                <div class="col-md-12">
                                  <fieldset>
                                    <button type="submit" id="form-submit" class="btn" name="ok">Submit</button>
                                  </fieldset>
                                </div>
                            </div>
                        </form>
                



<div id="pswd_info">
    <h4>Requirements</h4>
    <ul>
        <li id="letter" class="invalid">At least <strong>one letter</strong></li>
        <li id="capital" class="invalid">At least <strong>one capital letter</strong></li>
        <li id="number" class="invalid">At least <strong>one number</strong></li>
        <li id="length" class="invalid">Be at least <strong>8 characters</strong></li>
    </ul>
</div>
</div>
                 
                </div>
            </div>
             </div>
          
            <div class="slide" id="4">
            <div class="content second-content">
                <div class="container-fluid">
                    <iframe src="eventJsp.jsp" height="600px" width="1100px" style="border:2px solid blue;"></iframe>
                    
                </div>
            </div>
                 <sql:setDataSource var = "sel" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost/social" user = "root"  password = ""/>
        <sql:query dataSource = "${sel}" var = "result">SELECT DISTINCT Event from addevents; </sql:query>
        </div>
          <div class="slide" id="5">
              
            <div class="content fifth-content">
                <div class="container-fluid">
                    <div class="col-md-6">
                        <div id="map">

	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7835.530887594305!2d76.898847124318!3d10.905422368936161!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba85c95d3e828eb%3A0x2785cb4510629029!2sAmrita+Vishwa+Vidyapeetham+University!5e0!3m2!1sen!2sin!4v1563818453085!5m2!1sen!2sin" width="100%" height="500px" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <form id="contact" action="/jdbc_check_mysql/volunteer" method="post">
                            <div class="row">
                                <div class="col-md-12">
                                  <fieldset>
                                    <input name="name1" type="text" class="form-control" id="name" placeholder="Your name..." required="">
                                  </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset>
                                    <input name="email1" type="email" class="form-control" id="email" placeholder="Your email..." required="">
                                  </fieldset>
                                </div>
                                 <div class="col-md-12">
                                  <fieldset>
                                    <!--<input name="event1" type="text" class="form-control" id="subject" placeholder="Event Name..." required="">-->
                                    <select name="event1" class="form-control" id="subject" required>
                                        <option>--Select Event Name--</option>
                                    <c:forEach var = "row" items = "${result.rows}">
                                        <option value="${row.Event}">${row.Event}</option>
                                        </c:forEach>
                                    </select>
                                    <br>
                                  </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset>
                                    <textarea name="message1" rows="6" class="form-control" id="message" placeholder="Your message..." required=""></textarea>
                                  </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset>  
                                 
                                       <button type="submit" id="form-submit" class="btn">Volunteer Now</button>
                                  </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
          </div>
        </div>

        <div class="footer">
          <div class="content">
              <p>Copyright &copy; 2019 Social Outreach</p>
          </div>
        </div>

    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>
    
    <script src="js/datepicker.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {

    	$("input[type=text]").focusout(function() {
    if($(this).val()=='') {   
                    $(this).css('border', 'solid 2px red');
                } 
                else { 
                    $(this).css('border', 'solid 2px green');
                }
            }).trigger('focusout');
            
            
            	$("textarea").focusout(function() {
    if($(this).val()=='') {   
                    $(this).css('border', 'solid 2px red');
                } 
                else { 
                    $(this).css('border', 'solid 2px green');
                }
            }).trigger('focusout');

    	$("input[type=password]").focusout(function() {
    if($(this).val()=='') {   
                    $(this).css('border', 'solid 2px red');
                } 
                else { 
                    $(this).css('border', 'solid 2px green');
                }
            }).trigger('focusout');
        
        $("input[type=email]").focusout(function() {
    if($(this).val()=='') {   
                    $(this).css('border', 'solid 2px red');
                } 
                else { 
                    $(this).css('border', 'solid 2px green');
                }
            }).trigger('focusout');

        $('input[type=password]').keyup(function() {
    // keyup code here
    var pswd = $(this).val();
    if ( pswd.length < 8 ) {
    $('#length').removeClass('valid').addClass('invalid');
} else {
    $('#length').removeClass('invalid').addClass('valid');
}
//validate letter
if ( pswd.match(/[A-z]/) ) {
    $('#letter').removeClass('invalid').addClass('valid');
} else {
    $('#letter').removeClass('valid').addClass('invalid');
}

//validate capital letter
if ( pswd.match(/[A-Z]/) ) {
    $('#capital').removeClass('invalid').addClass('valid');
} else {
    $('#capital').removeClass('valid').addClass('invalid');
}

//validate number
if ( pswd.match(/\d/) ) {
    $('#number').removeClass('invalid').addClass('valid');
} else {
    $('#number').removeClass('valid').addClass('invalid');
}
}).focus(function() {
    $('#pswd_info').show();
}).blur(function() {
    $('#pswd_info').hide();
});
        



        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });



    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 0;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
    <script src="https://code.jquery.com/jquery-1.7.min.js"></script>
</body>
</html>