FROM ghcr.io/ggml-org/llama.cpp:server

# where llama.cpp will cache HF downloads (and router mode can discover models)
ENV LLAMA_CACHE=/models

EXPOSE 8080
ENTRYPOINT ["llama-server"]
CMD ["--host","0.0.0.0","--port","8080","--models-dir","/models","--models-max","1","-t","6","-c","2048"]