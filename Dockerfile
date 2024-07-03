FROM osrf/ros:humble-desktop

SHELL ["/bin/bash", "-c"]

WORKDIR /app

COPY ros2_ws ros2_ws/
RUN cd ros2_ws && \
    source /opt/ros/humble/setup.bash && \
    colcon build

COPY ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]