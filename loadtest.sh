for (( ; ; ))
do
   sudo ab -n 500 -c 100 http://{{EC2PublicIP}}:5000/
   sleep 10s
   sudo ab -n 200 -c 100 http://{{EC2PublicIP}}:5000/redirect
   sleep 10s
   sudo ab -n 300 -c 100 http://{{EC2PublicIP}}:5000/bad_request
   sleep 10s
   sudo ab -n 300 -c 100 http://{{EC2PublicIP}}:5000/exception
   sleep 10s
   sudo ab -n 200 -c 100 http://{{EC2PublicIP}}:5000/lorum
   sleep 10s
done
