var express  = require('express')
var fs = require('fs')
var bodyParser = require('body-parser');

var app = express();
//创建application/x-www-form-urlencoded 编码解析
app.use(bodyParser.urlencoded({extend:false}))

var server = app.listen(8081,()=>{
	var host = server.address().address;
	var port = server.address().port;
	console.log(`服务器启动，地址：http://${host}:${port}`)
})

app.get('/listUsers',(req,res)=>{
	fs.readFile(`${__dirname}/public/data/users.json`,(err,data)=>{
		console.log(data);
		res.end(data);
	});
})

app.get('/addUser',(req,res)=>{
	res.sendFile(`${__dirname}/templates/user.html`)
})

app.post('/addUser',(req,res)=>{
	var user_path = `${__dirname}/public/data/users.json`
	fs.readFile(user_path,(err,data)=>{
		var rawUsers = JSON.parse(data);
		var len = Object.keys(rawUsers).length;
		var id = len + 1;
		var newUser = {
			id:id,
			name: req.body.name,
			password: req.body.password,
			profession: req.body.profession
		}
		rawUsers[`user${id}`] = newUser;
		fs.writeFile(user_path,JSON.stringify(rawUsers),(err,data)=>{
			console.log(newUser)
			res.end(JSON.stringify(newUser,'utf8'))
		});
	});
})

app.get('/delUser',(req,res)=>{
	let id = req.query.id;
	var user_path = `${__dirname}/public/data/users.json`
	fs.readFile(user_path,'utf8',(err,data)=>{
		var rawUsers = JSON.parse(data);
		var user = null;
		Object.keys(rawUsers).forEach((v)=>{
			if(rawUsers[v].id == id){
				user = rawUsers[v]
				delete rawUsers[v]
			}
		})
		fs.writeFile(user_path,JSON.stringify(rawUsers),(err,data)=>{
			console.log(user)
			res.end(JSON.stringify(user))
		})
	})
})

app.get('/user/:id',(req,res)=>{
	let id = req.params.id;
	var user_path = `${__dirname}/public/data/users.json`
	fs.readFile(user_path,'utf8',(err,data)=>{
		var rawUsers = JSON.parse(data);
		var user = null;
		Object.keys(rawUsers).forEach((v)=>{
			if(rawUsers[v].id == id){
				user = rawUsers[v]
				console.log(user)
				res.end(JSON.stringify(user))
			}
		})
	})
})