FROM scratch
MAINTAINER sandeep.mendiratta@Target.com
ENV PORT 80
EXPOSE $PORT
ADD hello /
CMD ["/hello"]
