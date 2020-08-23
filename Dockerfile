FROM ubuntu:18.04
RUN apt update && apt upgrade -y && apt install -y git python python-setuptools python-dev gcc
RUN git clone https://github.com/by-student-2017/cif2cell-informal.git
RUN cd cif2cell-informal && tar zxvf PyCifRW-3.3.tar.gz
RUN cd cif2cell-informal/PyCifRW-3.3 && python setup.py install
RUN cd cif2cell-informal && python setup.py install

# CMD [ "ls", "/opt/cifs/*"]
# CMD [ "cif2cell", "-p", "pwscf", "-f", "/opt/cifs/sd_1704411.cif" ]