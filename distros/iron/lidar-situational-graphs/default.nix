
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, backward-ros, ceres-solver, fast-gicp, geodesy, geographic-msgs, geometry-msgs, libg2o, message-filters, nav-msgs, ndt-omp, nmea-msgs, pcl-ros, rclcpp, rclpy, rviz-visual-tools, sensor-msgs, situational-graphs-msgs, situational-graphs-reasoning, situational-graphs-reasoning-msgs, tf2, tf2-eigen, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-lidar-situational-graphs";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lidar_situational_graphs-release/archive/release/iron/lidar_situational_graphs/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "f93b21058114cf50da030fbd38a6cf2db5f254aea1473f98f977577be214ee78";
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
