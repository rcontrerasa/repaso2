echo "FROM python" > Dockerfile
echo "RUN apt-get update -y" >> Dockerfile
echo "RUN apt-get install python3-pip -y" >> Dockerfile
echo "RUN pip install flask" >> Dockerfile
echo "COPY index.html /home/myapp/templates/ " >> Dockerfile
echo "COPY server.py /home/myapp/ " >> Dockerfile
echo "EXPOSE 8000 " >> Dockerfile
echo "CMD ["python3", "/home/myapp/server.py"]" >> Dockerfile

docker build -t webflask .
docker run -d -p 8000:8000 webflask webflask
