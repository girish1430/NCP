
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Admin</title>
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       

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


span > i {
    color: white;
}
span > input {
    background: none;
    color: white;
    padding: 0;
    border: 0;
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

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

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
            <li><a href="#1"><i class="fa fa-home"></i><em>&nbsp;&nbsp;Admin&nbsp;&nbsp;</em></a></li>
            <li><a href="#2"><i class="fa fa-flag"></i><em>&nbsp;Events&nbsp;&nbsp;</em></a></li>
            <li><a href="#3"><i class="fa fa-calendar"></i><em>Add Event</em></a></li>
            <li><a href="#4"><i class="fa fa-user"></i><em>&nbsp;Account&nbsp;</em></a></li>
          </ul>
            <form action="/jdbc_check_mysql/logout">
                <span class="btn btn-danger"> <i class="fa fa-power-off"></i> <input type="submit" value="Sign Out" /></span>
          </form>
            
         
            
        </nav>
        <jsp:useBean id="amt" class="bean.homeBean">
            <jsp:setProperty name="amt" property="*" />
        </jsp:useBean>
    
       <div class="slides">
          <div class="slide" id="1">
            <div class="content first-content">
              <div class="container-fluid">
                  <div class="col-md-3">
                      <div class="author-image"><img src="img/logo_image.png" alt=""></div>
                  </div>
                  <div class="col-md-9">
                      <h2>Welcome Admin!</h2>
                      <br>
                      <h3 style="color:white">Recieved Amount : Rs <% amt.setSum(0); %> <jsp:getProperty name="amt" property="sum" /></h3>
                      <h3 style="color:white">No of Volunteers :<%amt.setVol(0); %> <jsp:getProperty name="amt" property="vol" /> </h3>
                      <br>
                      <br>
                      <div class="fb-btn"><a href="volunteer.jsp?a=1">View Volunteers</a></div>
                      <div class="fb-btn"><a href="viewfeed.jsp?a=1">View Sponsor Feedback</a></div>
                  </div>
              </div>
            </div>
          </div>
           <div class="slide" id="2">
            <div class="content second-content">
                <div class="container-fluid">
                  <iframe src="eventJsp.jsp?a=1" height="600" width="1100" style="border:2px solid blue;"></iframe>
<!--                  <div class="alert alert-success" role="alert">
                        <h2 align="center">List of Events</h2>
                    </div>
            <sql:setDataSource var = "acc" driver = "com.mysql.jdbc.Driver"
            url = "jdbc:mysql://localhost/social" user = "root"  password = ""/>
            <sql:query dataSource = "${acc}" var = "result">SELECT  * from addevents; </sql:query>
            <% int i=1;%>
            <form action="/jdbc_check_mysql/del" method="GET">
            <table class="table table-hover" style="border:2px solid blue;">
            <tr>
                <th>#</th>
                <th>Event name</th>
                <th>Venue</th>
                <th>Date</th>
                <%out.println("<th>Delete</th>");%>
            </tr>
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
                <td><% out.print(i); i++; %></td>
                <% //String a1=(String)pageContext.getAttribute("row.Event"); %>
               <td><c:out value = "${row.Event}"/></td>
               <td><c:out value = "${row.Venue}"/></td>
               <td><c:out value = "${row.Date}"/></td>
               <td><input type='hidden' value="${row.Event}" name="rows"></td>
               <% // out.print("<td>"); out.print("<input type='submit' class='btn btn-danger' value='Delete'> <input type='hidden' value='"+i+"' name='row'>"); out.print("</td>"); %>
               <td><button type="button" class="btn btn-danger" onclick=" val()">Delete</button></td>
            </tr>
         </c:forEach>
      </table>-->
        <!--</form>-->
                </div>
            </div>
          </div>
        
          <div class="slide" id="3">
            <div class="content fifth-content">
                <div class="container-fluid">

                	<br>

                	  <div id="container">
                	  	
                        <form id="contact" action="/jdbc_check_mysql/eventAdd" method="post">
                            <div class="row">
                                  <div class="col-md-12">
                                      	<h2>Add Event</h2><br>
                                  </div>
                            
                                <div class="col-md-12">
                                    
                                  <fieldset>
                                    <input name="ename" type="text" class="form-control" id="ename" placeholder="Event Name..." required="">
                                  </fieldset>
                                </div>
                                <div class="col-md-12">
                                  <fieldset>
                                    <input name="place" type="text" class="form-control" id="place" placeholder="Venue..." required="">
                                  </fieldset>
                                </div>
                                 <div class="col-md-12">
                                  <fieldset>
                                    <input name="date" type="date" class="form-control" id="place" required=''>
                                  </fieldset>
                                </div>
                                <br>
                            
                               
                                <div class="col-md-12">
                                  <fieldset>
                                    <button type="submit" id="form-submit" class="btn">Submit</button>
                                  </fieldset>
                                </div>
                            </div>
                        </form>
                




</div>
                 
                </div>
            </div>
             </div>
           
           
            <div class="slide" id="4">
            <div class="content second-content">
                <div class="container-fluid">
                    <iframe src="accStmt.jsp" height="600" width="1100" style="border:2px solid blue;"></iframe>
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

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {

$("textarea").focusout(function() {
    if($(this).val()=='') {   
                    $(this).css('border', 'solid 2px red');
                } 
                else { 
                    $(this).css('border', 'solid 2px green');
                }
            }).trigger('focusout');


    	$("input[type=text]").focusout(function() {
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

          $("input[type=date]").focusout(function() {
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