#!/bin/bash
cd "$(dirname "$0")"

# Vérifier que streamlit est installé
if ! python3 -m streamlit --version > /dev/null 2>&1; then
    echo "Installation de Streamlit et python-docx..."
    pip3 install streamlit python-docx --break-system-packages -q
fi

# Lancer l'appli
python3 -m streamlit run app.py
