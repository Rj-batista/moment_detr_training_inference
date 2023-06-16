ckpt_path=$1
eval_split_name=$2
eval_path=data/highlight_${eval_split_name}_release.jsonl
PYTHONPATH=$PYTHONPATH:. python moment_detr/inference.py \
--resume ${ckpt_path} \
--eval_split_name ${eval_split_name} \
--eval_path ${eval_path} \
--device 0 \
--eval_id 1 \
${@:3}
