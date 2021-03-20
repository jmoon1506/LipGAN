#!/usr/bin/env sh
mkdir -p outputs
python batch_inference.py --checkpoint_path logs/lipgan_residual_mel.h5 \
    --model residual --face inputs/test.jpeg --audio inputs/test.wav \
    --results_dir outputs
ffmpeg -y -i outputs/result_voice.avi outputs/result_voice.mp4