FROM python:3.11-slim

# Instalar Python, pip y dependencias del sistema necesarias
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    gcc \
    libffi-dev \
    libssl-dev \
    build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Crear directorio de trabajo
WORKDIR /app

# Copiar el requirements.txt
COPY requirements.txt .

# Instalar dependencias Python
RUN pip3 install --no-cache-dir -r requirements.txt

# Copiar el resto del código
COPY . .

# Exponer puerto
EXPOSE 5000

# Ejecutar aplicación
CMD ["python3", "app.py"]


