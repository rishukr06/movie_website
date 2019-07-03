function focus1(x) {
	x.style.background="#fff";
}


function remove(x) {
	x.style.background="#555";
}




$(document).ready(function() {
$(window).keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });
$("#submit").click(function() {
var name = $("#search_option").val();

if (name == '') {
alert("search box is empty!!");
} 
else 
{
$.post("search_result.php", {
movie_name:name,
}, function(html) {
$('.movie-box').html(html);
$('#title').text("Showing results for: " + name);
$('#searchbar')[0].reset(); 
});
}
});
});

function check1() {
      //body...
      document.getElementById("rate_us").value = "1";
      document.getElementById('checked1').innerHTML = '&#x2605';
      document.getElementById('checked2').innerHTML = '&#x2606';
      document.getElementById('checked3').innerHTML = '&#x2606';
      document.getElementById('checked4').innerHTML = '&#x2606';
      document.getElementById('checked5').innerHTML = '&#x2606';
      //rating color
      document.getElementById('checked1').style.color="red";
      document.getElementById('checked2').style.color="red";
      document.getElementById('checked3').style.color="red";
      document.getElementById('checked4').style.color="red";
      document.getElementById('checked5').style.color="red";
    }
    function check2() {
      // body...
      document.getElementById("rate_us").value = "2";
      document.getElementById('checked1').innerHTML = '&#x2605';
      document.getElementById('checked2').innerHTML = '&#x2605';
      document.getElementById('checked3').innerHTML = '&#x2606';
      document.getElementById('checked4').innerHTML = '&#x2606';
      document.getElementById('checked5').innerHTML = '&#x2606';
      //rating color
      document.getElementById('checked1').style.color="red";
      document.getElementById('checked2').style.color="red";
      document.getElementById('checked3').style.color="red";
      document.getElementById('checked4').style.color="red";
      document.getElementById('checked5').style.color="red";
    }
    function check3() {
      // body...
      document.getElementById("rate_us").value = "3";
      document.getElementById('checked1').innerHTML = '&#x2605';
      document.getElementById('checked2').innerHTML = '&#x2605';
      document.getElementById('checked3').innerHTML = '&#x2605';
      document.getElementById('checked4').innerHTML = '&#x2606';
      document.getElementById('checked5').innerHTML = '&#x2606';
      //rating color
      document.getElementById('checked1').style.color="yellow";
      document.getElementById('checked2').style.color="yellow";
      document.getElementById('checked3').style.color="yellow";
      document.getElementById('checked4').style.color="yellow";
      document.getElementById('checked5').style.color="yellow";
    }
    function check4() {
      // body...
      document.getElementById("rate_us").value = "4";
      document.getElementById('checked1').innerHTML = '&#x2605';
      document.getElementById('checked2').innerHTML = '&#x2605';
      document.getElementById('checked3').innerHTML = '&#x2605';
      document.getElementById('checked4').innerHTML = '&#x2605';
      document.getElementById('checked5').innerHTML = '&#x2606';
      //rating color
      document.getElementById('checked1').style.color="yellow";
      document.getElementById('checked2').style.color="yellow";
      document.getElementById('checked3').style.color="yellow";
      document.getElementById('checked4').style.color="yellow";
      document.getElementById('checked5').style.color="yellow";
    }
    function check5() {
      // body...
      document.getElementById("rate_us").value = "5";
      document.getElementById('checked1').innerHTML = '&#x2605';
      document.getElementById('checked2').innerHTML = '&#x2605';
      document.getElementById('checked3').innerHTML = '&#x2605';
      document.getElementById('checked4').innerHTML = '&#x2605';
      document.getElementById('checked5').innerHTML = '&#x2605';
      //rating color
      document.getElementById('checked1').style.color="yellow";
      document.getElementById('checked2').style.color="yellow";
      document.getElementById('checked3').style.color="yellow";
      document.getElementById('checked4').style.color="yellow";
      document.getElementById('checked5').style.color="yellow";
    }

    function myFocus() {
    document.getElementById('emailbox').style.border = "1px solid #286090";
  }
   function myfocusout() {
    document.getElementById('emailbox').style.border = "1px solid #282828";
  }
function formSubmit() {
   var chk_data =  document.getElementById('email').value;
   if(chk_data=="")
   {
   	document.getElementById('jsvalidation').innerHTML="*Please enter email";
   }
   else{
   	alert("under-development");
   		document.getElementById('jsvalidation').innerHTML="";
   }
}

