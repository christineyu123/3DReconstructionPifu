git clone https://github.com/facebookresearch/pifuhd
cd ./pifuhd/
pip install -r requirements.txt
sh ./scripts/download_trained_model.sh
python -m apps.simple_test -r 512 --use_rect -i /valohai/inputs/images
cp -r ./results/pifuhd_final/recon/ /valohai/outputs