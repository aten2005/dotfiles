FROM fedora:41
RUN useradd -m aten
#USER 1000
WORKDIR /home/aten
RUN mkdir dotfiles
COPY ./* /home/aten/dotfiles/
CMD ["sh", "/home/aten/dotfiles/install.sh"]

