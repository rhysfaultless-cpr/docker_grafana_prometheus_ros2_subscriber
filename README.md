# docker_grafana_prometheus_ros2_subscriber

## reference

-   [docker_grafana_prometheus](https://github.com/rhysfaultless-cpr/docker_grafana_prometheus)
-   [https://github.com/DominikN/ros2_docker_examples](https://github.com/DominikN/ros2_docker_examples)
-   [Docker Compose, network_mode](https://docs.docker.com/compose/compose-file/05-services/#network_mode)
-   [Collect Docker metrics with Prometheus](https://docs.docker.com/config/daemon/prometheus/)

## ROS 2 packages used for this development

-   [air_velocity_measurement_fs3000_1015](https://github.com/rhysfaultless-cpr/air_velocity_measurement_fs3000_1015)
-   [prometheus_and_ros2_subscriber](https://github.com/rhysfaultless-cpr/prometheus_and_ros2_subscriber)

> [!NOTE]  
> These 2 packages were added to a ros2_ws, built, and launched per the instructions in the 2 repositories.


## first time use
1.  Install [Docker Engine](https://docs.docker.com/engine/install/) on an Ubuntu 22.04 machine.
2.  Clone this repository.
3.  In terminal, navigate to the local reopsitory directory.
4.  Run:
    ```
    docker compose up
    ```
5.  Start the relevant ROS 2 packages with the typical ROS 2 native build and launch procedure.
    Note that this repository's prometheus.yml has these default configuration settings:
    -   Is targeting to port 8001. This port was chosen to match the repository _prometheus_and_ros2_subscriber's_ line `start_http_server(8001)`.
    -   Is targeting the IP address `192.168.131.1`. This is the default IP address for the main computer for Clearpath Robotics products.

## commands
-   Starting:
    ```
    docker compose up
    ```
-   Starting, detached:
    ```
    docker compose up -d
    ```
-   Shutdown, detached:
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