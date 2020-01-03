FROM python:3

ADD ./wait-for-it.sh /wait-for-it.sh
ADD ./test.py /test.py

CMD /wait-for-it.sh x11server:6000 -- python3 /test.py
