FROM ubuntu
# Update Repository
RUN apt-get update
# Install Build dependencies
RUN apt-get install -qy python3.7
RUN apt-get install -qy python3-pip
RUN apt-get install -qy inkscape x11-apps
# Copy Project to Docker Container
COPY . /Bibata
# Change Work Directory
WORKDIR /Bibata
# Building Source code 
RUN make NAME=Bibata_Classic 
RUN make link NAME=Bibata_Classic
RUN make NAME=Bibata_Oil 
RUN make link NAME=Bibata_Oil
RUN make NAME=Bibata_Ice 
RUN make link NAME=Bibata_Ice
RUN make NAME=Bibata_Amber 
RUN make link NAME=Bibata_Amber
