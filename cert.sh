#!bin/bash
#should test before use it

get() {

    #challenge
    sudo certbot certonly -d beta-api.ytz.dforcepro.com -d beta-api.x.dforcepro.com -d beta-api.lzw.dforcepro.com
    #Delete dummy certificate
    kubectl delete secret beta-api
    #Deploy new key
    kubectl create secret tls beta-api \
    --cert /etc/letsencrypt/live/beta-api.ytz.dforcepro.com/fullchain.pem \
    --key /etc/letsencrypt/live/beta-api.ytz.dforcepro.com/privkey.pem
    #Restart ingress-nginx
    kubectl delete -f ingress-nginx/
    kubectl apply -f ingress-nginx/
    
}

renew() {

    

}




case $1 in
 get)
      get
      ;;
 renew)
      renew
      ;;
 *)
      echo "Usage: $0 {get|renew} [DNS]"
      exit 1
      ;;
esac

exit $?