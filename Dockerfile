# Dockerfile de l'application Flask - à compléter
#
# 1. Partir d'une image Python 3.12 légère       (FROM)
# 2. Se placer dans le dossier /app              (WORKDIR)
# 3. Copier requirements.txt puis installer les dépendances avec pip  (COPY, RUN)
# 4. Copier le code de l'application (main.py)   (COPY)
# 5. Indiquer le port utilisé par l'application : 4000  (EXPOSE)
# 6. Lancer l'application : python main.py       (CMD)


FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py .
EXPOSE 4000
CMD ["python", "main.py"]