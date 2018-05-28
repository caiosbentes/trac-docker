FROM debian:stable 

MAINTAINER Caio Bentes 

# Install wget and install/updates certificates 
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    trac \





VOLUME ["/trac"]
EXPOSE 80 443 ENTRYPOINT ["/usr/bin/tracd"]
CMD ["-p", "80", "-e", "/trac/projects", "--basic-auth=*,/trac/.htpasswd,Restricted"]
