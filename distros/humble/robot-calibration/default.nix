
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, camera-calibration-parsers, ceres-solver, control-msgs, cv-bridge, eigen, geometric-shapes, geometry-msgs, gflags, kdl-parser, launch, launch-ros, launch-testing, moveit-msgs, nav-msgs, orocos-kdl, pluginlib, protobuf, rclcpp, rclcpp-action, robot-calibration-msgs, rosbag2-cpp, sensor-msgs, std-msgs, suitesparse, tf2-geometry-msgs, tf2-ros, tinyxml-2, tinyxml2-vendor, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-robot-calibration";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/humble/robot_calibration/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "1853a7c5b829139c8e0b21125fab069b3d8a16038a8e78c3ba5d11d073792304";
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
