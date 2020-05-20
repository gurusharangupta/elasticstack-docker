FROM blacktop/logstash:latest

WORKDIR /usr/share/logstash/config

COPY logstash-sample.conf .

COPY AB_NYC_2019.csv .

CMD ["logstash","-f","/usr/share/logstash/config/logstash-sample.conf"]