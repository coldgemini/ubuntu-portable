#!/bin/bash

LAN_IP=`hostname --all-ip-addresses | awk '{print $1}'`
WAN_IP=`wget http://ipinfo.io/ip -qO -`
SERVER_NAME=`hostname -f`
STARTUP_SUBJECT="[${SERVER_NAME}] - System Startup: "`date`
STARTUP_MESSAGE="$SERVER_NAME @ LAN IP = ${LAN_IP} - WAN IP - ${WAN_IP} Started Successfully: "`date`
SHUTDOWN_SUBJECT="[${SERVER_NAME}] - System Shutdown: "`date`
SHUTDOWN_MESSAGE="$SERVER_NAME @ LAN IP = ${LAN_IP} - WAN IP - ${WAN_IP} Shutting Down: "`date`
EMAIL_ADDRESS="coldgemini@foxmail.com"
SENDER_ADDRESS="xiang@Desktop.com"
SMS_NUMBER="<SMS NUMBER>@vtext.com"  #For a list of email to sms gateways please see http://www.digitaltrends.com/mobile/how-to-send-e-mail-to-sms-text/
RETVAL=0

stop()
{
   echo  $"Sending Shutdown Email "
   echo "${SHUTDOWN_MESSAGE}" |  mail -Ssendwait -Sfrom="${SENDER_ADDRESS}" -s "${SHUTDOWN_SUBJECT}" ${EMAIL_ADDRESS}
   #sleep 10
   echo "${SHUTDOWN_MESSAGE}" | mail -Ssendwait -Sfrom="${SENDER_ADDRESS}" ${SMS_NUMBER}
   #sleep 10
   RETVAL=$?

   return ${RETVAL}
}

start()
{
   echo  $"Sending Startup Email "
   echo "${STARTUP_MESSAGE}" | mail -Ssendwait -Sfrom="${SENDER_ADDRESS}" -s "${STARTUP_SUBJECT}" ${EMAIL_ADDRESS}
   #sleep 10
   echo "${STARTUP_MESSAGE}" | mail -Ssendwait -Sfrom="${SENDER_ADDRESS}" ${SMS_NUMBER}
   #sleep 10
   RETVAL=$?

   return ${RETVAL}

}

case "$1" in
start)
   start
;;
stop)
   stop
;;
status)
   echo "Not applied to service"
;;
restart)
   stop
   start
;;
reload)
   echo "Not applied to service"
;;
probe)
;;
*)
   echo "Usage: SystemEmail{start|stop|status|reload|restart}"
   exit 1
;;

esac
exit ${RETVAL}
