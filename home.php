<?php
include 'headerboot.php';
?>
<!doctype HTML>
<html>
<head>
  <style>
  .content{background-color: #c4b7a6;
    width:80%;}

  .heading{background-color: #e6e2d3;}
  </style>
</head>

<body>
<div class="container-fluid" align="center">
<br>
   <div class="content">
   <h2 class="division heading ";>WELCOME</h2>
   <br>

    <p>
     <div class="container">
     <img class="mySlides img-thumbnail" src="image1.jpg" alt="quarters" style="width:50%; align:center; height:200px;">
     <img class="mySlides img-thumbnail" src="image2.jpg" alt="quarters"style="width:50%; align:center; height:200px;">
     <img class="mySlides img-thumbnail" src="image3.jpg" alt="quarters"style="width:50%; align:center; height:200px;">
     <img class="mySlides img-thumbnail" src="image4.jpg" alt="quarters"style="width:50%; align:center; height:200px;">
     </div>
   </p>

<p  class="jumbotron text-justify">Quarter allotment portal
</p>

  </div>
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

</body>

</html>
