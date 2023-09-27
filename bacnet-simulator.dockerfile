FROM python:3
RUN pip install BAC0 pytz
ADD rooms_simulator.py /
CMD [ "python3", "./rooms_simulator.py" ]