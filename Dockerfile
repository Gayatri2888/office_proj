FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /office_emp_proj
ADD . ./office_emp_proj
COPY requirements.txt ./requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
COPY . ./office_emp_proj
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
