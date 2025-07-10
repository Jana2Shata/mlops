FROM python:3.13-slim-bullseye

WORKDIR /mlops
# as long as it's not a reserved linux-file name

COPY main.py /mlops 

# COPY requirements.txt /mlops
# RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "main.py"]

# he says having notebooks here will need to install additional libraries,
# so keep them .py for the moment

# docker compose enable us to run as many services as needed, as the previous 
# approach runs one container (service) only