//express_cookie.js 文件
var express = require('express');
var cookieParser = require('cookie-parser');
var util = require('util');

var app = express();

app.use(cookieParser());

app.get('/',(req,res)=>{
	console.log(req);
	res.end(`Cookies:${util.inspect(req.cookies)}`)
})

app.listen(8001,()=>{
	console.log('start Server localhost:8001');
});