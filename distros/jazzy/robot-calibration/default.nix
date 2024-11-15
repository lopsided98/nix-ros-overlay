
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, camera-calibration-parsers, ceres-solver, control-msgs, cv-bridge, eigen, geometric-shapes, geometry-msgs, gflags, kdl-parser, launch, launch-ros, launch-testing, moveit-msgs, nav-msgs, orocos-kdl, pluginlib, protobuf, rclcpp, rclcpp-action, robot-calibration-msgs, rosbag2-cpp, sensor-msgs, std-msgs, suitesparse, tf2-geometry-msgs, tf2-ros, tinyxml-2, tinyxml2-vendor, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-robot-calibration";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/jazzy/robot_calibration/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "af67b1c65fefb524590622275bd1e11c1446c631b50886f48a7f47e97067b765";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost eigen ];
  checkInputs = [ ament-cmake-gtest launch launch-ros launch-testing ];
  propagatedBuildInputs = [ camera-calibration-parsers ceres-solver control-msgs cv-bridge geometric-shapes geometry-msgs gflags kdl-parser moveit-msgs nav-msgs orocos-kdl pluginlib protobuf rclcpp rclcpp-action robot-calibration-msgs rosbag2-cpp sensor-msgs std-msgs suitesparse tf2-geometry-msgs tf2-ros tinyxml-2 tinyxml2-vendor visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Calibrate a Robot";
    license = with lib.licenses; [ asl20 ];
  };
}
