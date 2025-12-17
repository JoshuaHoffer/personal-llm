FROM ghcr.io/ggml-org/llama.cpp:server

# Where llama.cpp caches downloaded GGUFs (router mode will discover from here)
ENV LLAMA_CACHE=/models

# Ensure the directory exists (prevents "/models does not exist" crashes)
RUN mkdir -p /models

EXPOSE 8080

ENTRYPOINT ["llama-server"]
CMD ["--host","0.0.0.0","--port","8080","--models-dir","/models","--models-max","1","-t","6","-c","2048"]
