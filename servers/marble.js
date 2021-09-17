const http = require('http');
const { mapTo } = require('rxjs/operators');
const { bindTo, createContext, createServer, httpListener, r, registerAll, ServerClientToken } = require('@marblejs/core');

const n = parseInt(process.env.MW || '1', 10);
console.log('********************************');
console.log(`  ${n} endpoints - Marble.js`)

const middlewares = [];
const effects = [];

for (let i = 0; i < n-1; i++) {
  effects.push(
    r.pipe(
      r.matchPath(`/test-${i}`),
      r.matchType('GET'),
      r.useEffect(r$ => r$.pipe(
        mapTo({ body: 'Hello World' }),
      )),
    ),
  );
}

effects.push(
  r.pipe(
    r.matchPath(`/`),
    r.matchType('GET'),
    r.useEffect(r$ => r$.pipe(
      mapTo({ body: 'Hello World' }),
    )),
  ),
);

const app = httpListener({ middlewares, effects });

const server = createServer({
  port: 3030,
  listener: httpListener({ middlewares, effects }),
});

const main = async () =>
  await (await server)();

main();