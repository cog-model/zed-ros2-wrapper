docker run -it --rm \
    --runtime nvidia \
    --privileged \
    --name zed2i_camera_node_ros2 \
    --ipc=host \
    --pid=host \
    -e NVIDIA_DRIVER_CAPABILITIES=all \
    -e DISPLAY \
    -v /dev:/dev \
    -v /tmp/.X11-unix/:/tmp/.X11-unix \
    -v ${HOME}/zed_docker_ai/:/usr/local/zed/resources/ \
    zed_ros2_desktop_image:latest \
    ros2 launch zed_wrapper zed_camera.launch.py camera_model:=zed2i
