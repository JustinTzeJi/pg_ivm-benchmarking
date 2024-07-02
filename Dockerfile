FROM postgres:16.3

RUN apt -y update 
RUN apt -y install git-all libpq-dev postgresql-server-dev-16 build-essential
RUN git clone https://github.com/sraoss/pg_ivm.git
WORKDIR "/pg_ivm"
RUN make install
