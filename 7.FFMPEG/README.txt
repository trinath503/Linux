###Working with videos:
#Cut the part of video:
 ffmpeg -i input1.mp4 -ss 00:04:45 -t 00:00:10 -async 1 part4.mp4
#Cut the frame:
 ffmpeg -i video.webm -vf fps=1 thumb%04d.jpg -hide_banner
#Merge the video:
 ffmpeg -i part1.mp4 -i part2.mp4 -i part3.mp4 -i part4.mp4 -filter_complex '[0:v] [1:v] [2:v] [3:v] concat=n=4:v=1 [v]' -map '[v]' merge_input.mp4

