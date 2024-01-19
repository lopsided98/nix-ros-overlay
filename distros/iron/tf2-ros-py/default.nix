
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, sensor-msgs, std-msgs, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-iron-tf2-ros-py";
  version = "0.31.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/iron/tf2_ros_py/0.31.5-1.tar.gz";
    name = "0.31.5-1.tar.gz";
    sha256 = "a376115ecde9f8602860b5da92918569e579c419a8fcadf2ef20f2110fce8252";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest sensor-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy sensor-msgs std-msgs tf2-msgs tf2-py ];

  meta = {
    description = ''This package contains the ROS Python bindings for the tf2 library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
