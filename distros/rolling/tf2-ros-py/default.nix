
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, sensor-msgs, std-msgs, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-ros-py";
  version = "0.35.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_ros_py/0.35.1-1.tar.gz";
    name = "0.35.1-1.tar.gz";
    sha256 = "b0d19167314b691d23e8c79ae56ed2c0f1763939240b729582da0ab96029d7e5";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest sensor-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy sensor-msgs std-msgs tf2-msgs tf2-py ];

  meta = {
    description = ''This package contains the ROS Python bindings for the tf2 library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
