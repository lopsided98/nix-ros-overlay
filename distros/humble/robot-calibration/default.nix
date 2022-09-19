
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, camera-calibration-parsers, ceres-solver, control-msgs, cv-bridge, eigen, geometric-shapes, geometry-msgs, gflags, kdl-parser, launch, launch-ros, launch-testing, libyamlcpp, moveit-msgs, nav-msgs, orocos-kdl, pluginlib, protobuf, rclcpp, rclcpp-action, robot-calibration-msgs, rosbag2-cpp, sensor-msgs, std-msgs, suitesparse, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-robot-calibration";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/humble/robot_calibration/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "61615283317eda03d7dd8cb7955576b5ff1904f58617c476c82610acfa70822d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost eigen ];
  checkInputs = [ ament-cmake-gtest launch launch-ros launch-testing ];
  propagatedBuildInputs = [ camera-calibration-parsers ceres-solver control-msgs cv-bridge geometric-shapes geometry-msgs gflags kdl-parser libyamlcpp moveit-msgs nav-msgs orocos-kdl pluginlib protobuf rclcpp rclcpp-action robot-calibration-msgs rosbag2-cpp sensor-msgs std-msgs suitesparse tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Calibrate a Robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
