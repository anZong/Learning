//express_demo2.js 文件
var express = require('express');
var fs = require('fs');
var multer = require('multer')
var bodyParser = require('body-parser');

var app = express();

app.use(express.static('public'));
//创建application/x-www-form-urlencoded 编码解析
app.use(bodyParser.urlencoded({extend:false}))
app.use(multer({dest:`${__dirname}/public/upload/`}).array('image'))

var server = app.listen(8000,()=>{
	var host = server.address().address;
	var port = server.address().port;
	console.log(`应用实例，访问地址为http://${host}:${port}`);
})

// 主页输出“Hello World”
app.get('/',(req,res)=>{
	console.log('主页GET请求');
	res.send('Hello Get!');
})

app.get('/index.html',(req,res)=>{
	res.sendFile(`${__dirname}/templates/index.html`);
})


app.get('/process_get',(req,res)=>{
	var data = {
		"first_name": req.query.first_name,
		"last_name": req.query.last_name
	}
	console.log(data);
	res.end(JSON.stringify(data));
})

app.post('/process_post',(req,res)=>{
	console.log(req);
	var data = {
		'first_name': req.body.first_name,
		'last_name': req.body.last_name
	}
	console.log(data);
	res.end(JSON.stringify(data));
})

app.get('/file_upload',(req,res)=>{
	res.sendFile(`${__dirname}/templates/upload.html`);
})

app.post('/file_upload',(req,res)=>{
	var des_file = `${__dirname}/public/upload/req.files[0].originalname`;
	var data = {}
	fs.readFile(req.files[0].path, (err)=>{
		if(err){
			console.log(err);
		}else{
			data = {
				msg: 'File uploaded successfully!',
				filename: req.files[0].originalname
			}
		}
		console.log(data);
		res.end(JSON.stringify(data));
	});
})

// POST请求
app.post('/',(req,res)=>{
	console.log('主页POST请求');
	res.send('Hello Post!');
})

// /del_user请求
app.get('/del_user',(req,res)=>{
	console.log('响应/del_user请求');
	res.send('删除页面');
})

// /list_user
app.get('/list_user',(req,res)=>{
	console.log('/list_user GET请求');
	res.send('用户列表页面');
})

//响应 /ab*cd GET请求
app.get('/ab*cd',(req,res)=>{
	console.log('/ab*cd GET 请求');
	res.send('正则匹配');
})

