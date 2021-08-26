<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Insert title here</title> 
<script src="http://code.jquery.com/jquery-latest.js"></script> 

<script> 
function doShow() { 
    if ($('#aa').is(":visible")) { 
        $('#aa').hide(); // id값을 받아서 숨기기 
        $('.bb').hide(); // 클래스값을 받아서 숨기기 
        $('#button1').text('보이기'); 
    } else { 
        $('#aa').show(); // id값을 받아서 보이기 
        $('.bb').show(); // 클래스값을 받아서 보이기 
        $('#button1').text('숨기기'); 
    } 
} 
</script> 
</head> 
   
<body> 
   
<div id="aa">aaaaa</div> 
<div class="bb">bbbb</div> 
<div name="cc">cccc</div> 
<span name="dd">dddd</span> 
   
<p><button id="button1" onclick="javascript:doShow()">숨기기</button></p> 
   
</body> 
</html>