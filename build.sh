/usr/local/cuda/bin/nvcc -std=c++11 -c  src/SpecularHighlightRemoval/*.cu -Iinclude/

g++ -std=c++11 -o test main.cpp src/SpecularHighlightRemoval/*.cpp -Iinclude/ -I/usr/local/cuda-10.0/include -I/usr/include/opencv4/ Clustering.o ColorProcessing.o -march=native -L/usr/local/cuda-10.0/lib64 -lcudart -lopencv_features2d -lopencv_flann -lopencv_ml -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_imgproc -lopencv_core
