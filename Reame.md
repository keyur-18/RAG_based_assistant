# How to use this RAG assistant
## Step 1:Gather Videos
Move all your videos to videos folder in video_audio folder

## Step 2:Convert to mp3
convert all video files to audio by running process_videos.py

## Step 3:Convert mp3 to json
convert audio files to json by running video_to_json.ipynb
for free gpu use kaggle(you need to create dataset on kaggle to use audio files)

## Step 4: Convert json to vector & llm response
use embeddings.ipnb to convert json to vector

## Step 5: imporve output
to improve output we merged chunks 
for this run merge_chunks ans last section of embeddings.ipynb 


