#! /bin/bash

# 用于生成GT版本的JSON文件的预处理脚本
# 这个脚本会生成缺失的GT版本标注文件

segmentor="gt"
version=""
train_iou_thres=0.5
max_obj_num=150

echo "开始生成GT版本的JSON文件..."

echo "生成 obj_align_gt_train.json..."
python preprocess/prepare_objalign_annos.py \
    --segmentor "$segmentor" \
    --version "$version" \
    --train_iou_thres "$train_iou_thres"

echo "生成 nr3d_caption_gt_train.json..."
python preprocess/prepare_nr3dcaption_annos.py \
    --segmentor "$segmentor" \
    --version "$version" \
    --train_iou_thres "$train_iou_thres"

echo "生成 scan2cap_gt_train.json 和 scan2cap_gt_val.json..."
python preprocess/prepare_scan2cap_annos.py \
    --segmentor "$segmentor" \
    --version "$version" \
    --train_iou_thres "$train_iou_thres" \
    --max_obj_num "$max_obj_num"

echo "生成 multi3dref_gt_train.json 和 multi3dref_gt_val.json..."
python preprocess/prepare_multi3dref_annos.py \
    --segmentor "$segmentor" \
    --version "$version" \
    --train_iou_thres "$train_iou_thres"

echo "所有GT版本JSON文件生成完成！"
echo "生成的文件列表："
echo "  - annotations/obj_align_gt_train.json"
echo "  - annotations/nr3d_caption_gt_train.json" 
echo "  - annotations/scan2cap_gt_train.json"
echo "  - annotations/scan2cap_gt_val.json"
echo "  - annotations/multi3dref_gt_train.json"
echo "  - annotations/multi3dref_gt_val.json" 