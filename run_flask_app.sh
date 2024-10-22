#!/bin/bash

# Nama file aplikasi
APP_FILE="app.py"

# Nama lingkungan virtual
VENV_NAME="venv"

# Cek apakah lingkungan virtual sudah ada
if [ ! -d "$VENV_NAME" ]; then
    echo "Membuat lingkungan virtual..."
    python3 -m venv $VENV_NAME
fi

# Aktifkan lingkungan virtual
source $VENV_NAME/bin/activate

# Instal dependensi
echo "Menginstal dependensi..."
pip install -r requirements.txt

# Jalankan aplikasi Flask
echo "Menjalankan aplikasi Flask..."
export FLASK_APP=$APP_FILE
flask run --host=0.0.0.0 --port=5000
