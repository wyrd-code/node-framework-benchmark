echo express >> results-plain.txt
node servers/express.js & sleep 5
autocannon -c 1024 -t30 -j http://localhost:8090 >> results-plain.txt
kill -9 $(lsof -t -i:8090 -sTCP:LISTEN)
sleep 5

echo node >> results-plain.txt
node servers/node.js & sleep 5
autocannon -c 1024 -t30 -j http://localhost:8000/ >> results-plain.txt
kill -9 $(lsof -t -i:8000 -sTCP:LISTEN)
sleep 5

echo marble >> results-plain.txt
node servers/marble.js & sleep 5
autocannon -c 1024 -t30 -j http://localhost:3030/ >> results-plain.txt
kill -9 $(lsof -t -i:3030 -sTCP:LISTEN)
sleep 5

echo koa >> results-plain.txt
node servers/koa & sleep 5
autocannon -c 1024 -t30 -j http://localhost:3070 >> results-plain.txt
kill -9 $(lsof -t -i:3070 -sTCP:LISTEN)
sleep 5
