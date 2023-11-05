FROM ollama/ollama

WORKDIR ./

RUN apt-get update && apt-get install -y ca-certificates
COPY ./scripts/start_runpod.sh /start.sh
EXPOSE 11434
ENV OLLAMA_HOST 0.0.0.0
ENTRYPOINT ["/start.sh"]
CMD [""]
