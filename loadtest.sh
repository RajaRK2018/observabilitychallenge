for (( ; ; ))
do
   sudo ab -n 100 -c 100 http://{{EC2PublicIP}}:5000/
   sleep 10s
   sudo ab -n 10 -c 100 http://{{EC2PublicIP}}:5000/redirect
   sleep 10s
   sudo ab -n 40 -c 100 http://{{EC2PublicIP}}:5000/bad_request
   sleep 10s
   sudo ab -n 30 -c 100 http://{{EC2PublicIP}}:5000/exception
   sleep 10s
   sudo ab -n 20 -c 100 http://{{EC2PublicIP}}:5000/lorum
   sleep 10s
done
