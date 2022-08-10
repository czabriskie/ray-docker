FROM rayproject/ray:latest

COPY ./requirements.txt ./requirements.txt

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY ./src ./src
#ENTRYPOINT ["tail", "-f", "/dev/null"]
CMD  ["python3", "src/ray_hello_world.py"]