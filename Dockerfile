FROM jwilder/nginx-proxy

RUN { \
      echo 'client_max_body_size 100m;'; \    
    } > /etc/nginx/conf.d/max_body_size.conf

RUN { \
      echo 'add_header "Access-Control-Allow-Origin" "*";'; \
      echo 'add_header "Access-Control-Allow-Credentials" "true";'; \
      echo 'add_header "Access-Control-Allow-Methods" "GET, POST, OPTIONS, PUT, DELETE";'; \
      echo 'add_header "Access-Control-Allow-Headers" "Authorization,Content-Type,Accept,Origin,User-Agent,DNT,Cache-Control,X-Mx-ReqToken,Keep-Alive,X-Requested-With,If-Modified-Since";'; \
      echo 'add_header "Access-Control-Max-Age" 1728000;'; \
    } > /etc/nginx/conf.d/cors.conf
