npm install hapi@16
npm install express@4
npm install restify@4
npm install koa@2
npm install total.js@2

echo express >> results.txt ;
node expressserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f expressserver ;
sleep 5

echo hapi >> results.txt ;
node hapiserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f hapiserver ;
sleep 5

echo node >> results.txt ;
node rawnodeserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f rawnodeserver ;
sleep 5

echo restify >> results.txt ;
node restifyserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f restifyserver ;
sleep 5

echo koa >> results.txt ;
node koaserver.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f koaserver ;
sleep 5

echo total.js >> results.txt ;
node totalserver/total.js & sleep 5 ; ab -k -n 50000 -c 100 -t 20 http://127.0.0.1:8000/ | grep "Requests per second:" >> results.txt ;
pkill -f total ;
sleep 5
