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
    -v ${HOME}/zed_settings/:/usr/local/zed/settings/ \
    -v ${HOME}/zed_docker_ai/:/usr/local/zed/resources/ \
    zed_ros2_desktop_image:latest \
    ros2 launch zed_wrapper zed_multi_camera.launch.py cam_names:='[cam1,cam2]' cam_models:='[zed2i,zed2i]' cam_serials:='[33890767,30006989]'
