
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, backward-ros, ceres-solver, fast-gicp, geodesy, geographic-msgs, geometry-msgs, libg2o, message-filters, nav-msgs, ndt-omp, nmea-msgs, pcl-ros, rclcpp, rclpy, rviz-visual-tools, sensor-msgs, situational-graphs-msgs, situational-graphs-reasoning, situational-graphs-reasoning-msgs, tf2, tf2-eigen, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-lidar-situational-graphs";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lidar_situational_graphs-release/archive/release/humble/lidar_situational_graphs/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "8fe36b178ee1eafe13c5b08bb6994e86a8ee06a66eefe1931128e1b4aaccd565";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake-gtest backward-ros ceres-solver fast-gicp geodesy geographic-msgs geometry-msgs libg2o message-filters nav-msgs ndt-omp nmea-msgs pcl-ros rclcpp rclpy rviz-visual-tools sensor-msgs situational-graphs-msgs situational-graphs-reasoning situational-graphs-reasoning-msgs tf2 tf2-eigen tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "The lidar situational graphs package for generating 3D optimizable scene graphs";
    license = with lib.licenses; [ gpl3Only ];
  };
}
