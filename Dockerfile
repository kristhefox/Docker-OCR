FROM python:3.8
RUN mkdir -p /app/src
COPY ./app app/src
WORKDIR app/src
RUN apt-get update
RUN apt-get -y install tesseract-ocr
RUN apt-get install ffmpeg libsm6 libxext6 -y
RUN pip install -r addOns.txt
CMD [ "python","OCR.py"]