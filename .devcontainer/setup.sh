#!/usr/bin/env bash
set -e

# Actualiza pip y crea/activa venv (opcional pero recomendado)
python -m pip install --upgrade pip
python -m venv .venv
echo 'source .venv/bin/activate' >> ~/.bashrc
source .venv/bin/activate

# Instala dependencias si existe requirements.txt
if [ -f "requirements.txt" ]; then
  pip install -r requirements.txt
fi

# Paquetes base útiles para tus clases
pip install -U numpy pandas matplotlib scipy scikit-learn jupyter jupyterlab ipykernel

# Kernel de Jupyter con nombre del repo
python -m ipykernel install --user --name "$(basename "$PWD")-kernel"

echo "✅ Entorno listo."
