export CUDA_VISIBLE_DEVICES="7"
# python3 inference_revision.py config=configs/showo_demo.yaml \
# batch_size=1 \
# guidance_scale=1.75 generation_timesteps=16 \
# mode='revision' prompt='A blue sports car with sleek curves and tinted windows, parked on a bustling city street.' question='Is the image real or not?' \
# image_path=./inpainting_validation/bus.jpg inpainting_mask_path=./inpainting_validation/bus_mask.webp
export CUDA_LAUNCH_BLOCKING=1

python3 inference_revision.py config=configs/showo_demo_512x512.yaml \
max_new_tokens=100 \
batch_size=1 \
guidance_scale=5 generation_timesteps=50 \
mode='revision' prompt='A blue sports car with sleek curves and tinted windows, parked on a bustling city street.' question='where is the car located?' \



# python3 inference_mmu.py config=configs/showo_demo_512x512.yaml \
# max_new_tokens=100 \
# mmu_image_root=./mmu_validation question='Please describe this image in detail. *** Do you think the image is unusual or not?'

# python3 inference_t2i.py config=configs/showo_demo_512x512.yaml \
# batch_size=1 validation_prompts_file=validation_prompts/showoprompts.txt \
# guidance_scale=5 generation_timesteps=50 \
# mode='t2i'