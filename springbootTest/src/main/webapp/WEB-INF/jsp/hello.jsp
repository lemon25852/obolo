<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>大樂透</title>

<script type="text/javascript">
var arrLotto=new Array(49);
var arrNum=new Array(7);
for (i=0;i<7;i++) { //這個for用在產生七個亂數, range在1~48內而且不會重覆
  isDone=false;
  while (!isDone) {
      num=Math.floor(Math.random()*42+1);
      if (!arrLotto[num]) {
           arrNum[i]=num;
           arrLotto[num]=true;
           isDone=true;
      }
  }
}

function showByOrder() {//將七號號碼做個排序
   for (i=1;i<=48;i++) {
      if ((i!=arrNum[6])&& arrLotto[i]) {
         document.write("<td width=100 height=100 align=center valign=middle style='background-repeat:no-repeat' >");
         document.write("<font style='font-size:45px' face='Arial Black'>"+i+"</font></td>");
      }
   }
   document.write("<td width=100 height=100 align=center valign=middle style='background-repeat:no-repeat' >");
   document.write("<font style='font-size:45px' face='Arial Black' color='red'>"+arrNum[6]+"</font></td>");
   
}
</script>
</head>
<body bgcolor=white>
<center>
<tr>
<caption><font size=+4 color=red>大樂透</font></caption><tr>
</tr>
<br><br>
<tr>
<td class = "asd" >
輸入產生筆數
</td>
<td width ="50%" class = "abc" ><input type = "text" id = "number" value = "" > </td>
</tr>
<br><br>
<form><input type="button" style="background-color:tomato;font-family:標楷體;font-size:32px" value="產出號碼"onClick="location.reload();"></form>
<br>
<table width=780>
<caption><font size=+2 color=red>號碼清單</font></caption><tr>
<script>
showByOrder();


</script>

<table width="420" border="1">

　<tr>
　　<td width="60" height="40" align="center" valign="middle">號碼1</td>
　　<td width="60" height="40" align="center" valign="middle">號碼2</td>
　　<td width="60" height="40" align="center" valign="middle">號碼3</td>
　　<td width="60" height="40" align="center" valign="middle">號碼4</td>
　　<td width="60" height="40" align="center" valign="middle">號碼5</td>
　　<td width="60" height="40" align="center" valign="middle">號碼6</td>
　　<td width="60" height="40" align="center" valign="middle">特別號</td>
　</tr>
　<tr>
　　<td width="60" height="40" align="center" valign="middle"><label for="num02"></label>
　　　　<input name="num01" type="text" id="num01" size="2" maxlength="2" /></td>

　　<td width="60" height="40" align="center" valign="middle">
　　　　<input name="num02" type="text" id="num02" size="2" maxlength="2"/></td>

　　<td width="60" height="40" align="center" valign="middle">
　　　　<input name="num03" type="text" id="num03" size="2" maxlength="2"/></td>

　　<td width="60" height="40" align="center" valign="middle">
　　　　<input name="num04" type="text" id="num04" size="2" maxlength="2"/></td>

　　<td width="60" height="40" align="center" valign="middle">
　　　　<input name="num05" type="text" id="num05" size="2" maxlength="2"/></td>

　　<td width="60" height="40" align="center" valign="middle">
　　　　<input name="num06" type="text" id="num06" size="2" maxlength="2"/></td>

　　<td width="60" height="40" align="center" valign="middle">
　　　　<input name="num07" type="text" id="num07" size="2" maxlength="2"/></td>

　</tr>
　<tr>
　　<td height="40" colspan="7" align="center" valign="middle">
　　　　<input type="submit" name="NumberRender" id="NumberRender" value="產生號碼" onclick="NumRender()"/></td>
　</tr>

</table>
</tr></table>
</body>
</html>