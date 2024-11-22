
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, sensor-msgs, std-msgs, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-ros-py";
  version = "0.39.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_ros_py/0.39.2-1.tar.gz";
    name = "0.39.2-1.tar.gz";
    sha256 = "100c40964b051000646eb83db18eeb33ae4f4eb51dffc77f9fa9426c8de3ffd7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint pythonPackages.pytest sensor-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy sensor-msgs std-msgs tf2-msgs tf2-py ];

  meta = {
    description = "This package contains the ROS Python bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
