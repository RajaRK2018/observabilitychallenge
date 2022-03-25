for (( ; ; ))
do
   sudo ab -n 100 -c 10 http://IP:5000/
   sleep 10s
   sudo ab -n 10 -c 1 http://IP:5000/redirect
   sleep 10s
   sudo ab -n 40 -c 4 http://IP:5000/bad_request
   sleep 10s
   sudo ab -n 30 -c 3 http://IP:5000/exception
   sleep 10s
   sudo ab -n 20 -c 2 http://IP:5000/lorum
   sleep 10s
done
