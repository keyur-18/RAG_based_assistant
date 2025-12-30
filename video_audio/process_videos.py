import os
import subprocess
files = os.listdir("videos")
for file in files:
    print(file)
    tutorial_number = file.split("-")[1].split(".")[0]
    # Corrected input path for ffmpeg
    subprocess.run(["ffmpeg", "-i", f"videos/{file}", f"audios/{tutorial_number}.mp3"])