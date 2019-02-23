# Script to change video to animated gif
ffmpeg -ss $1 -i $2 -t $3 -an -r $4 -s $5 -f gif $6