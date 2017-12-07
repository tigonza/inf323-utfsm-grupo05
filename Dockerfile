 FROM python:3
 ENV PYTHONUNBUFFERED 1
 RUN mkdir /code
 WORKDIR /code
 ADD requirements.txt /code/
 EXPOSE 5555:5555
 RUN pip install -r requirements.txt
 ADD . /code/
 RUN django-admin.py startproject djangotest
 CMD ["/code/runscript.sh"]
