FROM ubuntu:18.04
RUN apt update && apt install -y python3 python3-pip && rm -rf /var/lib/apt/lists/* && pip3 install -U pip
RUN pip3 install spacy && python3 -m spacy download en_core_web_lg
RUN pip3 install nltk && python3 -c 'import nltk; nltk.download("wordnet")'
