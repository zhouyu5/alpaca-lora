

python finetune.py \
    --base_model '/home/vmagent/app/data/llama-7b-hf' \
    --data_path '/home/vmagent/app/data/alpaca-cleaned' \
    --output_dir '/home/vmagent/app/data/zy_models/lora-alpaca' \
    --batch_size 256 \
    --num_epochs=1 \
    --cutoff_len=512 \
    --group_by_length \
    --lora_target_modules='[q_proj,k_proj,v_proj,o_proj]' \
    --lora_r=16 \
    --micro_batch_size=8