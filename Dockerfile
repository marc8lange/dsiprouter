FROM debian:stretch
RUN apt-get update
RUN apt-get install -y git curl python3 python3-pip python3-dev 
RUN git clone https://github.com/dOpensource/dsiprouter.git
WORKDIR dsiprouter
EXPOSE 5060
EXPOSE 10000-30000
EXPOSE 5000
RUN ["./dsiprouter.sh", "install"]
ENTRYPOINT ["./dsiprouter.sh"]
CMD ["start"]

