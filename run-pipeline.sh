echo express >> results-pipeline.txt
node servers/express.js & sleep 5
autocannon -c 1024 -t30 -p 10 -j http://localhost:8090 >> results-pipeline.txt
kill -9 $(lsof -t -i:8090 -sTCP:LISTEN)
sleep 5

echo node >> results-pipeline.txt
node servers/node.js & sleep 5
autocannon -c 1024 -t30 -p 10 -j http://localhost:8000/ >> results-pipeline.txt
kill -9 $(lsof -t -i:8000 -sTCP:LISTEN)
sleep 5

echo marble >> results-pipeline.txt
node servers/marble.js & sleep 5
autocannon -c 1024 -t30 -p 10 -j http://localhost:3030/ >> results-pipeline.txt
kill -9 $(lsof -t -i:3030 -sTCP:LISTEN)
sleep 5

node servers/koa.js & sleep 5
autocannon -c 1024 -t30 -p 10 -j http://localhost:3070 >> results-pipeline.txt
kill -9 $(lsof -t -i:3070 -sTCP:LISTEN)
sleep 5
