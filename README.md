# docker_grafana_prometheus_ros2_subscriber

## reference
-   [docker_grafana_prometheus](https://github.com/rhysfaultless-cpr/docker_grafana_prometheus)
-   [prometheus_and_ros2_subscriber](https://github.com/rhysfaultless-cpr/prometheus_and_ros2_subscriber)
-   [air_velocity_measurement_fs3000_1015](https://github.com/rhysfaultless-cpr/air_velocity_measurement_fs3000_1015)
-   [https://github.com/DominikN/ros2_docker_examples](https://github.com/DominikN/ros2_docker_examples)

## first time use
1.  Install [Docker Engine](https://docs.docker.com/engine/install/) on an Ubuntu 22.04 machine.
2.  Clone this repository.
3.  In terminal, navigate to the local reopsitory directory.
4.  Run:
    ```
    docker compose up -d
    ```
5.  Build the workspace with `colcon build`
6.  Launch the ROS 2 node with _TODO_

## commands
-   Starting:
    ```
    sudo docker compose up --build
    ```

## archive commands
-   Starting:
    ```
    docker compose up -d
    ```
-   Shutdown:
    ```
    docker compose down
    ```
-   Shutdown, and delete all Prometheus data:
    ```
    docker compose down -v
    ```

## user interfaces
-   Prometheus will be available at [http://localhost:9090/](http://localhost:9090/)
-   Grafana will be available at [http://localhost:3000/](http://localhost:3000/)
    -   username: _administrator_
    -   password: _clearpath_
    -  _note: these can be changed in the file compose.yaml_ 