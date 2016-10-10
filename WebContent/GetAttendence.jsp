<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*, javax.servlet.*, java.text.*" %>
<html>
<%
if(session.getAttribute("User")==null) {
%>
<jsp:include page="index.jsp"></jsp:include>
<%
} %>

<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="login.css">
 <link rel="stylesheet" type="text/css" href="css/demo.css" />
<title>login</title>
<style type="text/css">
label.cameraButton {
  display: inline-block;
  margin: 1em 0;

  /* Styles to make it look like a button */
  padding: 0.5em;
  border: 2px solid #666;
  border-color: #EEE #CCC #CCC #EEE;
  background-color: #DDD;
}
label.cameraButton:active {
  border-color: #CCC #EEE #EEE #CCC;
}

/* This is the part that actually hides the 'Choose file' text box for camera inputs */
label.cameraButton input[accept*="camera"] {
  display: none;
}
.topright
{
position: absolute; 
top: 10px; 
right: 20px;  
text-align:right;
}


</style>

<script >

function startTime() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('txt').innerHTML =
    h + ":" + m + ":" + s;
    var t = setTimeout(startTime, 500);
}
function checkTime(i) {
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}

$('.form').find('input, textarea').on('keyup blur focus', function (e) {
	  
	  var $this = $(this),
	      label = $this.prev('label');

		  if (e.type === 'keyup') {
				if ($this.val() === '') {
	          label.removeClass('active highlight');
	        } else {
	          label.addClass('active highlight');
	        }
	    } else if (e.type === 'blur') {
	    	if( $this.val() === '' ) {
	    		label.removeClass('active highlight'); 
				} else {
			    label.removeClass('highlight');   
				}   
	    } else if (e.type === 'focus') {
	      
	      if( $this.val() === '' ) {
	    		label.removeClass('highlight'); 
				} 
	      else if( $this.val() !== '' ) {
			    label.addClass('highlight');
				}
	    }

	});

	$('.tab a').on('click', function (e) {
	  
	  e.preventDefault();
	  
	  $(this).parent().addClass('active');
	  $(this).parent().siblings().removeClass('active');
	  
	  target = $(this).attr('href');

	  $('.tab-content > div').not(target).hide();
	  
	  $(target).fadeIn(600);
	  
	});
</script>
</head>
<body onload="startTime()">
<div class="topright">
<%=session.getAttribute("User")%>
</div>

<div class="form">
      
            
        <div id="login">   
          <h1>Attendence Only in Presence of Supervisor</h1>
          
          <form action="GetAttendenceServlet" id="attendence" method="post">
          
            <div class="field-wrap">
           <table>
           <tr>
           <td>
            <label>
              Supervisor<span class="req">*</span>
            </label>
            </td>
            <td>
            <select class="form-dropdown " style="width:250px" id="input_8" name="q8_yearLevel8">
                <option value="">  </option>
                <option value="1st Year"> Supervisor1 </option>
                <option value="2nd Year"> Supervisor2  </option>
                <option value="3rd Year"> Supervisor3  </option>
                <option value="4th Year"> Supervisor4  </option>
                <option value="5th Year"> Supervisor5  </option>
              </select>
            </td>
            </tr>
            </table>
          </div>
          
          <div class="field-wrap">
           <table>
           <tr>
           <td>
            <label>
              Time <span class="req">*</span>
            </label>
    		</td>
    		<td>
  			<div id="txt" class="field-wrap"></div>
            </div>
            </td>
			</tr>            
          </table>  
            <label class="" id="label_16" for="input_16">
            Biometric ID 
          
         	 <input type="file" name="fileToUpload" id="fileToUpload" class="fileToUpload"/>
    		<div>	
    			<input type="submit" id="submit" value="Submit" name="submit"/>
    		</div>
 		</form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
</body>
</html>