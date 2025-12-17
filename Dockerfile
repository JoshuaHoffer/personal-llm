FROM ghcr.io/ggml-org/llama.cpp:server

# optional: keep downloaded HF models in a persistent path
ENV LLAMA_CACHE=/models

EXPOSE 8080

# -hf lets the server download/cache a GGUF from Hugging Face automatically
# example format is documented by llama-server (repo + optional quant)
CMD ["--host","0.0.0.0","--port","8080","--hf-repo","unsloth/Llama-3.2-1B-Instruct-GGUF:Q4_K_M","-t","6","-c","2048"]
