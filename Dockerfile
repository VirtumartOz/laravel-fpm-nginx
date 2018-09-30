FROM bkuhl/fpm-nginx:v7.2.10

RUN apk add --update --no-cache python \

    # allows us to build front-end dependencies
    yarn \
    
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

# Add default virtualhost
# Still needs work
ADD ./default.conf /etc/nginx/conf.d/default.conf
