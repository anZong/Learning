//express_demo.js 文件
var express = require('express');
var app = express();

var server = app.listen(8000,()=>{
	var host = server.address().address;
	var port = server.address().port;
	console.log(`应用实例，访问地址为http://${host}:${port}`);
})

app.get('/',(req,res)=>{
	res.send('Hello World!');
})