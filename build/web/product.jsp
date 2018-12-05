<%-- 
    Document   : product
    Created on : Apr 12, 2018, 9:28:14 PM
    Author     : Yuhao Wu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>Ele Stores</title>
    <jsp:useBean id="ub" class="mbs.myBean" scope="session" />
    <!-- Bootstrap core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap-spinner.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/main.css" />
    <script src="js/jquery.spinner.min.js"></script>
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet">
  </head>
<!-- NAVBAR
================================================== -->
  <body onload="getProduct()" >

    <div class="navbar-wrapper">
      <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="firstPage.html">Ele Stores</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="firstPage.html">Home</a></li>
                
                <li><a href="#deal">Deals</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Products <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a onclick="display_alert();"/>iPhone</li>
                    <li><a onclick="display_alert();">Android</a></li>
                    <li><a onclick="display_alert();">Other</a></li>
                    <script type="text/javascript">
                      function display_alert(){
                        alert("Please Sign in !!!");
                      }
                    </script>
                  </ul>
                  <li><a href="signup.html">Register</a></li>
                </li>
                <li><a href="Admin2.html">Entrance For Manager</a></li>
              </ul>
              <div id="header" >
                  <a class="navbar-form navbar-right">
                      <h5>Welcome
                        <jsp:getProperty name="ub" property="name" />
                      </h5>
                   </a>
                 <%
              //      RequestDispatcher rd = getServletContext().getRequestDispatcher("/Bean.jsp");
              //          rd.include(request,response);
                    %>
              </div>
            </div>
          </div>
        </nav>

      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="images/slide1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>WHY CHOOSE US?</h1>
              <p>Money Back Guarantee</br>Free Worldwide Shipping</br>Member Discount</br> 24/7 Online Support</br></p>
              <p><a class="btn btn-lg btn-primary" href="signup.html" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="images/slide2.png" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              
              <p><a class="btn btn-lg btn-primary" href="#deal" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="images/slide33.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>There's something for everyone with Prime</h1>
              <p>Check out what's included with your Prime membership</p>
              <p><a class="btn btn-lg btn-primary" href="#product" role="button">Browse Product</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row"><a name="product" ></a>
        <div class="col-lg-4">
          <img class="img-circle" src="images/p1.png" alt="Generic placeholder image" width="140" height="140">
          <h2>iPhone</h2>
          <p>Get up to $375 in credit toward the purchase of iPhone X when you trade in your eligible smartphone.</p>
          <p><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1">Learn more</button></p>
        </div><!-- /.col-lg-4 -->
         <!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Get up to $375 in credit toward a new iPhone.</h4>
        </div>
        <div class="modal-body">
        	<p><img src="images/m1.png" alt="Generic placeholder image" width="500" height="200" align="center"></p>
          <h3>iPhone X</h3>
          <p>Our vision has always been to create an iPhone that is entirely screen. One so immersive the device itself disappears into the experience. And so intelligent it can respond to a tap, your voice, and even a glance. With iPhone X, that vision is now a reality. Say hello to the future.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
</div>
        <div class="col-lg-4">
          <img class="img-circle" src="images/p2.png" alt="Generic placeholder image" width="140" height="140">
          <h2>Android</h2>
          <p>Android One is now on more phones than ever,like the Moto.</p>
          <p><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">Learn more</button></p>
        </div><!-- /.col-lg-4 -->
               <!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Android at its best</h4>
        </div>
        <div class="modal-body">
        	<p><img src="images/m2.png" alt="Generic placeholder image" width="500" height="140"></p>
          	<p>This is the purest form of Android.Experience it on Xiaomi's powerful Mi A1.</p>
          	<h3>This is Android, pure and simple</h3>
			<p>
			Android One guarantees you get the best version of Android, right out of the box. So you get the phone you want, just the way you want.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
</div>
        <div class="col-lg-4">
          <img class="img-circle" src="images/p3.png" alt="Generic placeholder image" width="140" height="140">
          <h2>Other</h2>
          <p>Big on power and performance, with a display to match</p>
          <p><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal3">Learn more</button></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
               <!-- Modal -->
  <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Windows 10 is here for your phone</h4>
        </div>
        <div class="modal-body">
        	<p><img src="images/m3.png" alt="Generic placeholder image" width="500" height="140"></p>
        	<h3>Microsoft Lumia 950 XL</h3>
          <p>With a stunning 5.7” Quad HD display and a powerful octa-core processor, it’s the Lumia you’ve been waiting for. Get the phone that works like your PC and push the limits of what’s possible.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
</div>

      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">
      
      <div class="row featurette" id="productsList">
          <table id='product' class='table table-striped'>
              <tr>
                  <th>ProductName</th>
                  <th>Inventory</th>
                  <th>Price</th>
                  <th>Type</th>
                  <th>Quantity</th>
                  <th>Purchase</th>
                  <th>Add cart</th>
              </tr>
          </table>
      </div>
      <script type="text/javascript">
            $('.spinner').spinner();
       </script>
        
<!--    <div class="input-group spinner" data-trigger="spinner" id="spinner">  
        <input type="text" class="form-control" value="1" data-max="10" data-min="1" data-step="1">  
        <div class="input-group-addon">  
            <a href="javascript:;" class="spin-up" data-spin="up"><i class="icon-sort-up"></i></a>  
            <a href="javascript:;" class="spin-down" data-spin="down"><i class="icon-sort-down"></i></a>  
        </div>  
    </div>-->
     <!--<p><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#cart">+</button></p>-->
    <div class="modal fade" id="cart" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Shopping Cart</h4>
            </div>
            <div class="modal-body">
<!--                    <p><img src="images/m1.png" alt="Generic placeholder image" width="500" height="200" align="center"></p>-->
              <table id='cart' class='table table-striped'><tr>
                      <th>ProductName</th>
                      <th>Price</th>
                      <th>Quantity</th>

                  </tr>
              </table>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
    </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2017 Ele Company.</p>
      </footer>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://www.sucaihuo.com/Public/js/other/jquery.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script type="text/javascript" src="js/jquery.spinner.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="js/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
  <style media="screen">
    *{
        box-sizing: border-box;
    }
    #signin label{
        width: 100px;
        display: inline-block;
    }
    #leftsidebar{
        float: right;
        width: 49%;
        border: 25px solid #9e9e9e;
        padding: 15px;
        margin: auto;
        text-align: center;
    }
    #signup {
        float: right;
        width: 49%;
        border: 25px solid #9e9e9e;
        padding: 15px;
        margin: auto;
        height: 700px;
        text-align: center;
    }
    #signup p label{
        width: 100px;
        display: inline-block;
    }
    #personal label{
        width: 100px;
        display: inline-block;
    }
    #business label{
        width: 100px;
        display: inline-block;
    }
</style>
    <script>
            $(document).on('click','th',function(){
            var table = $(this).parents('table').eq(0);
            var rows = table.find('tr:gt(0)').toArray().sort(comparer($(this).index()));
            this.asc = !this.asc;
            if (!this.asc){rows = rows.reverse();}
            table.children('tbody').empty().html(rows);
        });
        function comparer(index) {
            return function(a, b) {
                var valA = getCellValue(a, index), valB = getCellValue(b, index);
                return $.isNumeric(valA) && $.isNumeric(valB) ?
                    valA - valB : valA.localeCompare(valB);
            };
        }
        function getCellValue(row, index){
            return $(row).children('td').eq(index).text();
        }
        function addCart(i){
//            var index="product"+i;
            var num=document.getElementById('input'+i).value;
            var name=document.getElementById('name'+i).innerHTML;
            var price=document.getElementById('price'+i).innerHTML;
            var inventory=parseInt(document.getElementById('inventory'+i).innerHTML);
            alert(name);
            alert(price);
//            $("#product td").each(function(){
//                alert($(this).children().eq(1).text());
//            });
            var text=" <table id='cart' class='table table-striped'><tr><th>ProductName</th><th>Price</th><th>Quantity</th></tr>"
            text += "<tr><td>" + name + "</td><td>" + price+ "</td><td >" + num + "</td>"
            text = text + "</table>";
            
            document.getElementById("cart").innerHTML =  text;
            
            var xmlHttp=new XMLHttpRequest();
            
            xmlHttp.onreadystatechange=function(){
                if(xmlHttp.readyState ==4 && xmlHttp.status == 200){
//                    alert(num);
//                    alert(inventory);
                    if( num > inventory){
                        
                        alert("Please change quantity")
                    }else{
                        alert("purchasing success")
                    }
                    getProduct();
                }
            }
            var formData=new FormData();
            formData.append("ProductID",i);
            formData.append("Quantity",num);
            
            xmlHttp.open("POST","http://localhost:8080/LoginServlet/AddCartServlet",true);
//            xmlHttp.setRequestHeader("Content-type", "multipart/form-data");    //large data need this type
            xmlHttp.send(formData);
        }
        function purchase(i){
//            var index="product"+i;
            var num=document.getElementById('input'+i).value;
            var inventory=parseInt(document.getElementById('inventory'+i).innerHTML);
            
//            $("#product td").each(function(){
//                alert($(this).children().eq(1).text());
//            });
            
            
            var xmlHttp=new XMLHttpRequest();
            
            xmlHttp.onreadystatechange=function(){
                if(xmlHttp.readyState ==4 && xmlHttp.status == 200){
//                    alert(num);
//                    alert(inventory);
                    if( num > inventory){
                        
                        alert("Please change quantity")
                    }else{
                        alert("purchasing success")
                    }
                    getProduct();
                }
            }
            var formData=new FormData();
            formData.append("ProductID",i);
            formData.append("Quantity",num);
            
            xmlHttp.open("POST","http://localhost:8080/LoginServlet/PurchaseServlet",true);
//            xmlHttp.setRequestHeader("Content-type", "multipart/form-data");    //large data need this type
            xmlHttp.send(formData);
        }
        function getProduct() {
                    var xmlHttp = new XMLHttpRequest();
                    xmlHttp.onreadystatechange = function() {
                        if (xmlHttp.readyState == 4 && xmlHttp.status == 200){
                            var p = JSON.parse(xmlHttp.responseText);
                            var text ="<table id='product' class='table table-striped'><tr><th>ProductName</th><th>Inventory</th><th>Price</th><th>Type</th><th>Quantity</th><th>Purchase</th><th>Add cart</th></tr>"
//                            if(typeof history === 'string') {
//                                alert("get history fail");
//                            }else{
//                            
//                                alert('get history success');
                                // alert("length: " + history.length);
                                for(var i = 0; i < p.length; i++) {
                                    var text;
                                    text += "<tr><td id='name"+p[i].ID+"'>" + p[i].Name +
                                        "</td><td id='inventory"+p[i].ID+"'>" + p[i].Inventory + "</td><td id='price"+p[i].ID+"'>" +
                                        p[i].Price + "</td><td>" +
                                        p[i].Type + "</td><form id='product"+p[i].ID+"' action='PurchaseServlet' method='get'><td>";
                                        text += "<input id='input"+p[i].ID+"' type='text' class='spinner' /></td>";
                                        text +="<td><input type='button' value='submit' class='btn btn-success' onclick='purchase("+p[i].ID+")' /></td>\n\
                                                <td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#cart' onclick='addCart("+p[i].ID+")'>+</button></td></tr>";
                                }
                                
                            text = text + "</table>";
                            
                            document.getElementById("productsList").innerHTML =  text;
                        }
                    }
//                    var formData = new FormData();
//                    formData.append('customerid' ,params)
                    xmlHttp.open("GET", "http://localhost:8080/LoginServlet/ProductServlet", true);
                    // xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xmlHttp.send();
                
            }
    </script>
</html>

