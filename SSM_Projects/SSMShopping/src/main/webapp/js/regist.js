//  校验注册信息是否合法

var flag1 = false;
var flag2 = false;
var flag3 = false;
var flag4 = false;
var flag5 = false;

$(function () {
    //  添加错误信息

    var emailerr = document.createElement("span");
    var nameerr = document.createElement("span");
    var passworderr = document.createElement("span");
    var pass2err = document.createElement("span");
    document.getElementById("email").parentNode.appendChild(emailerr);
    document.getElementById("nickName").parentNode.appendChild(nameerr);
    document.getElementById("pwd").parentNode.appendChild(passworderr);
    document.getElementById("repwd").parentNode.appendChild(pass2err);

    $("#email").blur(function () {
        //  符合qq邮箱要求 ： 数字7~12位 @qq.com结束 数字不以0开头
        var regex = /[1-9][0-9]{6,11}@qq\.com/;
        var email = $("#email").val();
        if(!regex.test(email)) {
            emailerr.innerHTML = "您的邮箱地址未正确填写";
            emailerr.style.fontSize = "10px";
            emailerr.style.color="red";
            flag1 =  false;
        }else {
            emailerr.innerHTML="";
            flag1 =  true;
        }
    })

    $("#nickName").blur(function () {
        //  用户名3-15位及以上字符，且以字母开头
        var regex = /[a-zA-Z]\w{2,14}/;
        var nickname = $("#nickName").val();
        if(!regex.test(nickname)){
            nameerr.innerHTML = "您的昵称格式不正确";
            nameerr.style.fontSize = "10px";
            nameerr.style.color="red";
            // alert("昵称格式不正确：请输入6位及以上字符，且以字母开头");
            flag2 = false;
        }
        else {
            nameerr.innerHTML="";
            flag2 = true;
        }
    })

    $("#pwd").blur(function () {
        //  密码6-15位,由数字和字母组成，且由字母开头
        var regex = /[a-zA-Z][a-zA-Z0-9]{5,14}/;
        var password = $("#pwd").val();
        if(!regex.test(password)){
            passworderr.innerHTML = "您的密码格式不正确";
            passworderr.style.fontSize = "10px";
            passworderr.style.color="red";
            flag3 = false;
        }
        else {
            passworderr.innerHTML="";
            flag3 = true;
        }
    })

    $("#repwd").blur(function () {
        //  验证密码是否跟第一次输入的一样
        var repwd = $("#repwd").val();
        var password = $("#pwd").val();
        if(repwd!=password){
            pass2err.innerHTML = "密码与上面不一致";
            pass2err.style.fontSize = "10px";
            pass2err.style.color="red";
            flag4 = false;
        }else {
            pass2err.innerHTML="";
            flag4 = true;
        }
    })

    $("#checkcode").blur(function () {
        var check = $("#checkcode");
        // 使用ajax获取验证码的值
        var xmlhttp= getXmlHttpRequest();
        //  跳转至servlet处理，异步加载
        xmlhttp.open("get","/getcheckcode",true);
        xmlhttp.send();
        xmlhttp.onreadystatechange = function () {
            if(xmlhttp.readyState==4 && xmlhttp.status==200){
                if(check.val()+""==xmlhttp.responseText+""){
                    flag5 = true;
                }else {
                    alert("验证码不对");
                    flag5 = false;
                }
            }
        }
    })
})

function checkForm() {
    var flag = flag1 && flag2 && flag3 && flag4 && flag5;
    if(!flag)
        alert("验证码错误或者信息填写不正确");
    return flag;
}


