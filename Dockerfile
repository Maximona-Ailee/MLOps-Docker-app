FROM python:3.11-slim 
  
WORKDIR /App 
ENV PYTHONPATH=/App 
  
COPY Frontend/requirements.txt ./requirements.txt 
RUN pip install --no-cache-dir -r requirements.txt 
  
COPY . . 
  
EXPOSE 8501 
  
CMD ["streamlit", "run", "Frontend/streamlit_app.py",  "--server.address=0.0.0.0", "--server.port=8501"] 