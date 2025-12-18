FROM ollama/ollama

# Ollama defaults to 127.0.0.1:11434; for other containers to reach it, bind to 0.0.0.0
ENV OLLAMA_HOST=0.0.0.0:11434

# Optional: keep RAM low by unloading models immediately after requests
# (0 = no keep alive; default is 5 minutes)
ENV OLLAMA_KEEP_ALIVE=0

EXPOSE 11434

ENTRYPOINT ["ollama"]
CMD ["serve"]
