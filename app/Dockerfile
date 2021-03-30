FROM erlang:latest

COPY bin/ ./

RUN apt-get update \
    && apt-get -y --no-install-recommends install libpq-dev git

RUN git clone https://github.com/epgsql/epgsql.git

RUN chmod +x ./main.erl \
    && erlc ./main.erl

CMD ["erl", "-noshell", "-s", "main", "start", "-s", "init", "stop"]
