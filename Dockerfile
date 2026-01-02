FROM python:3.12.2


WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

# Copy rest of the app
COPY . .

# Expose Streamlit port
EXPOSE 8501

# Streamlit config to allow external access
ENV STREAMLIT_SERVER_ADDRESS=0.0.0.0
ENV STREAMLIT_SERVER_PORT=8501

# Ollama to host
ENV OLLAMA_HOST=http://host.docker.internal:11434

CMD ["streamlit", "run", "app.py"]

