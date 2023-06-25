#
FROM python:3.11 
WORKDIR /gpt4free-main
COPY ./requirements.txt /jobscanai/requirements.txt
RUN pip install -r requirements.txt
COPY ./interference/app.py /gpt4free-main/interference/
CMD ["py", "-m", "interference.app"]