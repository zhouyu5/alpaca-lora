# for int8 training, please set this flag
# --load_8bit \    

python app.py \
    --share_gradio True \
    --base_model '/home/vmagent/app/data/gpt-neo-125m' \
    --lora_weights '/home/vmagent/app/data/zy_models/lora-temp'
