cd lightweight-human-pose-estimation.pytorch/
wget --no-verbose https://download.01.org/opencv/openvino_training_extensions/models/human_pose_estimation/checkpoint_iter_370000.pth
cd lightweight-human-pose-estimation.pytorch/
cp ../preprocess.py ./preprocess.py
python preprocess.py