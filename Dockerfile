#use a node base image
FROM node:7-onbuild

#set a maintainer
LABEL maintainer "alexoachesu@gmail.com"

#set a health check
HEALTHCHECK --interval=5s --timeout=5s --start-period=5s --retries=3 CMD curl -f http://localhost:8000

#tell docker what port to use
EXPOSE 8000