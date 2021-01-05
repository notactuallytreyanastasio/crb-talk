FROM ruby:3.0
MAINTAINER bobdawg@hey.com
RUN apt-get -y update
RUN apt-get install -y git vim
RUN mkdir /app
COPY main.rb /app/main.rb
COPY .vimrc /.vimrc
COPY README.md /app/README.md

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# So, theres the default vundle ~/.vimrc file you need to run vundle at a basic level
# at /.vimrc, but I have not yet figured out hot to get it properly to be in the right
# directory for vim, so I am abandoning that problem for now but here is a solution:

# once you build the container, you will have a shell, run the following
# mv /.vimrc ~/.vimrc
# this seems to work

# if someone wants to tell me why, please and thank you, I am mediocre at best with docker
# I get it to work if theres a gun to my head and slim the build when machines collapse

# I should probably read a book, but, you know, we dont need it at work so whatever for now lol

# and now we actually fuck with ractals...
CMD ["/bin/sh"]
