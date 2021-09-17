var http = require("http");

let n = parseInt(process.env.MW || '1', 10);
console.log('********************************');
console.log(`  ${n} endpoints - Node.js`);

http.createServer(function(request, response) {
	response.end('Hello World!');
}).listen(8000);
