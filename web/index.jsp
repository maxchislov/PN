<!-- Description of the web page and elements -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <title>Prime Number Checker</title>
</head>

<body>

<h2 style="color:gainsboro; font-family: 'Comic Sans MS'; position: absolute; bottom: 180px; right: 440px;">
  Enter any natural number to check if it is prime
</h2>


<!--  "Check here" animation -->
<link rel="stylesheet" href="amimation.css">   <!--  link to the animation description  -->
<div class="text1">
<h1 style="position: absolute; bottom: 300px; right: 600px;">
  <span>C</span>
  <span>h</span>
  <span>e</span>
  <span>c</span>
  <span>k</span>
  <br>
  <span style='padding-left:20px;'>h</span>
  <span>e</span>
  <span>r</span>
  <span>e</span>
</h1>
</div>


<form action="/PN_war_exploded/check" name=form1 method=POST>

  <!--  Entry field element -->
  <div class="input1">
    <input id="number_input" name="Yournumber" type="number"
           style="height:45px; width: 300px; font-size: 30px;
           position: absolute; bottom: 495px; right: 580px;"/>
  </div>

  <br>

  <!--  Button element -->
  <div class="button1">
    <input id="button" type="submit" name="button1"value="CHECK"
           style="height:45px; width: 300px; background: dodgerblue; color: white; font-size: 13pt;
           position: absolute; bottom: 425px; right: 580px;"/>
  </div>

</form>


<!-- Message falseMsg style -->
<div class="falseMsg">
<p style="color: crimson; font-family: 'Comic Sans MS'; font-size: 30px;
position: absolute; bottom: 465px; right: 160px;
   filter: blur(0.55px);
   text-shadow:
   0 0 50px #ff4d52,
   0 0 150px #ff9d9d,
   0 0 300px #fff1e5;"
> ${falseMsg}</p>
</div>


<!-- Message trueMsg style -->
<div class="trueMsg">
<p style="color:white; font-family: 'Comic Sans MS'; font-size: 30px;
position: absolute; bottom: 465px; right: 215px;
filter: blur(0.55px);
        text-shadow:
        0 0 50px #00b3ff,
        0 0 150px #a2c5ff,
        0 0 300px #f4ffff;"
>${trueMsg}</p>
</div>

<!-- Message ZEROMsg style -->
<div class="ZEROMsg">
<p style="color:#12dc95; font-family: 'Comic Sans MS'; font-size: 30px;
position: absolute; bottom: 465px; right: 180px;
filter: blur(0.55px);
        text-shadow:
        0 0 50px #50ffcc,
        0 0 150px #bfffd7,
        0 0 300px #f4ffff;"
>${ZEROMsg}</p>
</div>

<!-- Message NullMsg style -->
<div class="NullMsg">
<p style="color:#fff505; font-family: 'Comic Sans MS'; font-size: 30px;
position: absolute; bottom: 465px; right: 330px;
filter: blur(0.55px);
        text-shadow:
        0 0 50px #fffc6d,
        0 0 150px #ffd7a4,
        0 0 300px #fffede;"
>${NullMsg}</p>
</div>


</body>
</html>
