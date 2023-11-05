#!/bin/bash
/bin/ollama serve &
sleep 1
/bin/ollama pull llama2
wait