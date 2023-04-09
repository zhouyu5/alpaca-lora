# llama, gpt-j, gpt-neo
# --lora_target_modules='[q_proj,k_proj,v_proj,out_proj]' \
# gpt-2
# --lora_target_modules='[c_proj]' \
# opt
# --lora_target_modules='[q_proj,k_proj,v_proj,o_proj]' \


# # llama
# python my_finetune.py \
#     --base_model '/home/vmagent/app/data/llama-7b-hf' \
#     --data_path '/home/vmagent/app/data/alpaca-cleaned' \
#     --output_dir '/home/vmagent/app/data/zy_models/lora-alpaca-1' \
#     --batch_size 256 \
#     --num_epochs=1 \
#     --cutoff_len=512 \
#     --group_by_length \
#     --lora_target_modules='[q_proj,k_proj,v_proj,o_proj]' \
#     --lora_r=16 \
#     --micro_batch_size=8


# gpt-j
python my_finetune.py \
    --base_model '/home/vmagent/app/data/gpt-j-6b' \
    --data_path '/home/vmagent/app/data/alpaca-cleaned' \
    --output_dir '/home/vmagent/app/data/zy_models/lora-gptj' \
    --num_epochs=1 \
    --cutoff_len=512 \
    --group_by_length \
    --lora_target_modules='[q_proj,v_proj]' \
    --lora_r=16 \
    --micro_batch_size=8
