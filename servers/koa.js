const Koa = require('koa');
const app = new Koa();

const n = parseInt(process.env.MW || '1', 10);
console.log('********************************');
console.log(`  ${n} endpoints - Koa.js`)

app.use(async ctx => {
    ctx.body = 'Hello World';
});
  
app.listen(3070);