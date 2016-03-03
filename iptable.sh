#!/bin/bash
while [ "1" == "1" ]
do
clear
echo "----------------------menu----------------------"
echo "(1) iptables add"
echo "(2) iptables delete"
echo "(3) iptables ACL list"
echo "(0) exit"
echo "-------------------------------------------------"
echo -n "enter you chose[0-3]:"
read num
if [ ${num} -lt 0 -o ${num} -gt 3 ]
    then
      echo "this is not between 0-3"
else
   if [ "${num}" == "1" ]
#######################################################
       then
          while [ "1" == "1" ]
          do
          clear
          echo "----------------------add ACL----------------------"
          echo "(1) 开内网端口"
          echo "(2) 开外网端口"
          echo "(3) 指定来源IP和访问端口"
          echo "(4) 自定义添加"
          echo "(*) 退回上一级"
          echo "-------------------------------------------------"
          echo -n "enter you chose[0-4]:"
          read aclnum
          if [ "${aclnum}" == "1" ]
             then
             read ip
             iptables -A INPUT -s 192.168.1.0/24 -p tcp --dport ${ip} -j ACCEPT
             iptables -A INPUT -s 192.168.1.0/24 -p udp --dport ${ip} -j ACCEPT                                                                                                                                                               1,1           Top
          elif [ "${aclnum}" == "2" ]
             then
             read ip
             iptables -A INPUT -p tcp --dport ${ip} -j ACCEPT
             iptables -A INPUT -p udp --dport ${ip} -j ACCEPT
          elif [ "${aclnum}" == "3" ]
             then
             read ip port
             iptables -A INPUT -p tcp -s ${ip} --dport ${port} -j ACCEPT
             iptables -A INPUT -p udp -s ${ip} --dport ${port} -j ACCEPT
          elif [ "${aclnum}" == "4" ]
             then
             read addacl
             `${addacl}`
          else
             break
          fi
          echo -n "是否想继续添加: [y/n]:"
          read contine
          if [ "${contine}" == "n" -o "${contine}" == "N" ]
             then
             break
             fi
          done
#######################################################
else
   if [ "${num}" == "2" ]
      then
          while [ "1" == "1" ]
          do
          clear
          echo "---------------------delete ACL----------------------"
          echo "(1) 删除开放的内网端口"
          echo "(2) 删除开放的全网端口"
          echo "(3) 删除指定来源IP和访问端口"
          echo "(4) 自定义删除"
          echo "(*) 退回上一级"
          echo "-------------------------------------------------"
          echo -n "enter you chose[0-5]:"
          read aclnum
          if [ "${aclnum}" == "1" ]
             then
             read ip
             iptables -D INPUT -s 192.168.1.0/24 -p tcp --dport ${ip} -j ACCEPT
             iptables -D INPUT -s 192.168.1.0/24 -p udp --dport ${ip} -j ACCEPT
          elif [ "${aclnum}" == "2" ]
             then
             read port
             iptables -D INPUT -p tcp --dport ${port}  -j ACCEPT
             iptables -D INPUT -p udp --dport ${port}  -j ACCEPT
          elif [ "${aclnum}" == "3" ]
             then
             read ip port
             iptables -D INPUT -p tcp -s ${ip} --dport ${port} -j ACCEPT
             iptables -D INPUT -p udp -s ${ip} --dport ${port} -j ACCEPT
          elif [ "${aclnum}" == "4" ]
             then
             read deleteacl
             `${deleteacl}`
          else
             break
          fi
          echo -n "是否想继续添加: [y/n]:"
          read contine
          if [ "${contine}" == "n" -o "${contine}" == "N" ]
             then
             break
          fi
          done
###################################################################  
else
   if [ "${num}" == "3" ]
   	then
       while [ "1" == "1" ]
       do
       clear
       echo "---------------------list ACL----------------------"
       echo "(1) 查看当前正在使用的规则集"
       echo "(2) 查看每个策略或每条规则、每条链的简单流量统计"
       echo "(3) 查看NAT表"
       echo "(4) 自定义查看"
       echo "(*) 退回上一级"
       echo "-------------------------------------------------"
       echo -n "enter you chose[0-5]:"
       read aclnum
       if [ "${aclnum}" == "1" ]
          then
          iptables -L
       elif [ "${aclnum}" == "2" ]
          then
          iptables -L -n -v
       elif [ "${aclnum}" == "3" ]
          then
          iptables -L -t nat
       elif [ "${aclnum}" == "4" ]
          then
          read listacl
          `${listacl}`
       else
        break
         fi
       echo -n "是否想继续添加: [y/n]:"
          read contine
          if [ "${contine}" == "n" -o "${contine}" == "N" ]
             then
             break
          fi
       done
################################################
else
   exit
fi
  fi
    fi
     fi
echo -n "Do you contine [y/n]:"
read contine
if [ "${contine}" == "n" -o "${contine}" == "N" ]
   then
   exit
fi
done                                                                                                                                                          159,0-1       Bot

                                                    