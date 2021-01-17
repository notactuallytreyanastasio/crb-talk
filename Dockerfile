FROM ruby:3.0
LABEL maintainer bobdawg@hey.com
WORKDIR /usr/src/crb
COPY . /usr/src/crb/

CMD ["/bin/bash"]
