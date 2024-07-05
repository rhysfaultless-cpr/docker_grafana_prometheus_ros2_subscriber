## archive for docker_grafana_ros2_subscriber

> [!NOTE]  
> I have added my failed development materials into this Archive folder, as I may revisit these Docker problems in the future.

I originally tested two ROS 2 packages in individual containers, but was unsuccessful in getting a functional result.
My issue was related to a ROS 2 package requiring the Python module prometheus-client.
- [Pypi: _prometheus-client_](https://pypi.org/project/prometheus-client/)
- [rosdep: _python3-prometheus-client_](https://github.com/ros/rosdistro/blob/b135fc6522778e7c1d030bebed35d902a89c62ca/rosdep/python.yaml#L7811C1-L7811C26)

This package is installed on a native system with `pip install prometheus-client`.

----

## Tested, without success

1.  Setting up the Dockerfile as a multistage build, where the Python modules are first installed, and then the binaries are copied over to the next stage of the ROS 2 build.
    - reference: https://docs.docker.com/guides/docker-concepts/building-images/multi-stage-builds/#use-multi-stage-builds
    - note the line `COPY --from=builder`, after the second `FROM` line 
2.  Installing using rosdep. This package is supposed to be a supported by rosdep, but I was getting errors.

----

## Not tested but considered

-   Adding a Dockerfile specifially for installing Python packages. 
    This would appear in the Compose file before the ROS 2 container.
