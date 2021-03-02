
# Base image: Linux Alpine (3.12)
FROM alpine:3.12

# Cpp build essentials
RUN apk add build-base cmake git 

# Python
RUN apk add py3-pip python3-dev

# Numpy and dlib
RUN pip3 install wheel
RUN pip3 install numpy dlib

# Required dependencies
RUN apk add \
    ffmpeg-dev \
    gtk+2.0-dev \
    libdc1394-dev \
    gst-plugins-base-dev

# Optional dependencies
RUN apk add \ 
    libpng-dev \
    libjpeg-turbo-dev \ 
    openexr-dev \
    tiff-dev \
    libwebp-dev \
    eigen-dev

# Clone repository and setup build environment
RUN git clone --depth 1 --branch 4.5.1 https://github.com/opencv/opencv.git
RUN mkdir /opencv/build
WORKDIR /opencv/build

# Build and install OpenCV
RUN cmake -D WITH_EIGEN=ON ../
RUN make
RUN make install

# Add cv2 to the python path
RUN mv /usr/local/lib/python3.8/site-packages/cv2 /usr/lib/python3.8/site-packages/
