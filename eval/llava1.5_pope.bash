model_cache= '/home/bc3194/Desktop/huggingface_cache'
dataset_name='coco' # 'aokvqa' 'gqa'
# for seed in 1 2 3
for seed in 1
do
for type in 'random' 'popular' 'adversarial'
do
python run_llava.py \
--question-file ../data/POPE/${dataset_name}/${dataset_name}_pope_${type}.json \
--model-path ${model_cache}/liuhaotian/llava-v1.5-7b \
--image-folder '../../data/coco/val2014' \
--answers-file ../output/llava_${dataset_name}_pope_${type}_answers_agla_seed${seed}.jsonl \
--alpha 2.0 \
--beta 0.5 \
--seed $seed
done
done


# --use_agla \