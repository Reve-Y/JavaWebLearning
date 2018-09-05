//使用一个函数提供获取xmlhttprequest对象
function getXmlHttpRequest(){
	var xhr;
	if( window.XMLHttpRequest ){
		//判断成立说明用户用的是ie7+ ,其他的浏览器
		xhr = new XMLHttpRequest();
	}else{
		//说明用户使用的ie7以下的版本
		xhr=new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xhr;
}	
