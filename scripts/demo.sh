# for int8 training, please set this flag
# --load_8bit \    

# python app.py \
#     --share_gradio True \
#     --base_model '/home/vmagent/app/data/gpt-neo-2.7B' \
#     --lora_weights '/home/vmagent/app/data/zy_models/lora-gpt-neo-2.7B-alpaca'

python app.py \
    --share_gradio True \
    --base_model '/home/vmagent/app/data/llama-7b-hf' \
    --lora_weights '/home/vmagent/app/data/alpaca-lora-7b'
