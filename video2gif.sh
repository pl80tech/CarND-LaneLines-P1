# Script to change video to animated gif
#
# How to use:
# $./video2gif.sh arg1 arg2 arg3 arg4 arg5 arg6
# arg1 --> start time
# arg2 --> name of input video (mp4, etc)
# arg3 --> duration (second)
# arg4 --> number of frame per second
# arg5 --> frame size of output animated gif (640x360, etc)
# arg6 --> name of output animated gif (.gif)
ffmpeg -ss $1 -i $2 -t $3 -an -r $4 -s $5 -f gif $6