<br>
<p align="center"><img src="https://raw.githubusercontent.com/Kolos65/python-opencv-dlib/main/pod.png" width="400”  alt="" /></p>
                                                                                                                      
# python-opencv-dlib
A linux alpine based docker image with Python, OpenCV and dlib installed, supporting armv7 and amd64 architectures.

## Description
OpenCV was built from source, following the official <a href="https://docs.opencv.org/master/dd/dd5/tutorial_py_setup_in_fedora.html">documentation</a>, configured to use a library called Eigen for optimized mathematical operations.

- <b>Base image:</b>
    -  <a href="https://hub.docker.com/_/alpine"><b>Linux Alpine (3.12):</b></a> a security-oriented, lightweight Linux distribution based on musl libc and busybox. 
- <b>Contains:</b>
    -  <a href="https://opencv.org/releases/"><b>OpenCV (4.5.1):</b></a> an open-source library that includes several hundreds of computer vision algorithms.
    - <a href="http://dlib.net"><b>dlib:</b></a> a modern C++ toolkit containing machine learning algorithms
    - <a href="https://www.python.org"><b>python (3.8)</b></a>: your favourite programming language

## Architectures
Built for <b>amd64</b> and <b>armv7</b> so you can run it on your intel based <b>mac</b> or on a <b>Raspberry Pi</b> with arm processor.

For more info, see the <a href="https://hub.docker.com/r/kolos65/python-opencv-dlib">image</a> on Dockerhub.
