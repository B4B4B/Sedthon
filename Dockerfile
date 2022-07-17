FROM User/User:slim-buster

#clonning repo 
RUN git clone https://github.com/B4B4B/User.git /root/sbb_b
#working directory 
WORKDIR /root/User

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/User/bin:$PATH"

CMD ["python3","-m","User"]
