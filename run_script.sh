pip install 'pycocotools'
pip install 'torch==1.6.0+cu101' -f https://download.pytorch.org/whl/torch_stable.html
pip install 'torchvision==0.7.0+cu101' -f https://download.pytorch.org/whl/torch_stable.html
pip install 'pytorch3d==0.2.5'
pip install 'opencv-python'
pip install 'tqdm'
git clone https://github.com/facebookresearch/pifuhd
git clone https://github.com/Daniil-Osokin/lightweight-human-pose-estimation.pytorch.git
cd lightweight-human-pose-estimation.pytorch/
wget --no-verbose https://download.01.org/opencv/openvino_training_extensions/models/human_pose_estimation/checkpoint_iter_370000.pth
cd ../pifuhd/
sh ./scripts/download_trained_model.sh
cd ..
cd lightweight-human-pose-estimation.pytorch/
cp ../preprocess.py ./preprocess.py
python preprocess.py --filename example_image.jpg
cd ../pifuhd/
python -m apps.simple_test -r 256 --use_rect -i ../image_to_process
cp -r ./results/pifuhd_final/recon/ /valohai/outputs