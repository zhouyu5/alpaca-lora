# gpt-j, gpt-neo, opt
# --lora_target_modules='[q_proj,k_proj,v_proj,out_proj]' \
# gpt-2
# --lora_target_modules='[c_proj]' \
# llama
# --lora_target_modules='[q_proj,k_proj,v_proj,o_proj]' \


# # llama-7b, gpu
# python my_finetune.py \
#     --base_model '/home/vmagent/app/data/llama-7b-hf' \
#     --data_path '/home/vmagent/app/data/alpaca-cleaned' \
#     --output_dir '/home/vmagent/app/data/zy_models/lora-alpaca-1' \
#     --batch_size 128 \
#     --num_epochs=1 \
#     --cutoff_len=512 \
#     --group_by_length \
#     --lora_target_modules='[q_proj,k_proj,v_proj,o_proj]' \
#     --lora_r=16 \
#     --micro_batch_size=8 \
#     --fp16_train True


# gpt-j, gpu, fp16
python my_finetune.py \
    --base_model '/home/vmagent/app/data/gpt-j-6b' \
    --data_path '/home/vmagent/app/data/alpaca-cleaned' \
    --output_dir '/home/vmagent/app/data/zy_models/lora-temp' \
    --batch_size 128 \
    --num_epochs=0.0025 \
    --cutoff_len=512 \
    --group_by_length \
    --lora_target_modules='[q_proj,v_proj]' \
    --lora_r=16 \
    --micro_batch_size=8


# # gpt2, gpu, fp16
# python my_finetune.py \
#     --base_model '/home/vmagent/app/data/gpt2' \
#     --data_path '/home/vmagent/app/data/alpaca-cleaned' \
#     --output_dir '/home/vmagent/app/data/zy_models/lora-temp' \
#     --batch_size 128 \
#     --num_epochs=1 \
#     --cutoff_len=512 \
#     --group_by_length \
#     --lora_target_modules='[c_proj]' \
#     --lora_r=16 \
#     --micro_batch_size=8


# # gpt-neo, gpu, fp16
# python my_finetune.py \
#     --base_model '/home/vmagent/app/data/gpt-neo-125m' \
#     --data_path '/home/vmagent/app/data/alpaca-cleaned' \
#     --output_dir '/home/vmagent/app/data/zy_models/lora-temp' \
#     --batch_size 128 \
#     --num_epochs=0.03 \
#     --cutoff_len=512 \
#     --group_by_length \
#     --lora_target_modules='[q_proj,v_proj]' \
#     --lora_r=16 \
#     --micro_batch_size=8
