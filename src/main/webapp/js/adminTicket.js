/**
 * Created by Administrator on 2017/3/14.
 */
var t=document.getElementById("t");
var i=3;
function tianjia() {
    window.location="adminTicketAdd";

}
function xiugai(m) {
    var upertr=document.getElementById("tr"+m);
    var tds=upertr.cells;
    var tdval=tds[1].innerHTML;
    var tdval1=tds[2].innerHTML;
    var tdval2=tds[3].innerHTML;
    var tdval3=tds[4].innerHTML;
    var tdval4=tds[5].innerHTML;
    var tdval5=tds[6].innerHTML;
    tds[1].innerHTML="<input id='input"+m+"' type='text' value='"+tdval+"'>";
    tds[2].innerHTML="<input id='input"+m+"' type='text' value='"+tdval1+"'>";
    tds[3].innerHTML="<input id='input"+m+"' type='text' value='"+tdval2+"'>";
    tds[4].innerHTML="<input id='input"+m+"' type='text' value='"+tdval3+"'>";
    tds[5].innerHTML="<input id='input"+m+"' type='text' value='"+tdval4+"'>";
    tds[6].innerHTML="<input id='input"+m+"' type='text' value='"+tdval5+"'>";
    tds[7].innerHTML="<input class='btnc' type='button' value='删除' onclick='shanchu("+m+")'><input class='btnc' type='button' value='确认' onclick='queren("+m+")'>"
}
function queren(m) {
    var upertr=document.getElementById("tr"+m);
    var tds=upertr.cells;
    tds[1].innerHTML=document.getElementById("input"+m).value;
    tds[2].innerHTML=document.getElementById("input"+m).value;
    tds[3].innerHTML=document.getElementById("input"+m).value;
    tds[4].innerHTML=document.getElementById("input"+m).value;
    tds[5].innerHTML=document.getElementById("input"+m).value;
    tds[6].innerHTML=document.getElementById("input"+m).value;
    tds[7].innerHTML="<input type='button' class='btnc' value='删除' onclick='shanchu("+m+")'><input class='btnc' type='button' value='修改' onclick='xiugai("+m+")'>";
}
function shanchu(m) {
    var deltrow=document.getElementById("tr"+m);
    t.deleteRow(deltrow.rowIndex);
}