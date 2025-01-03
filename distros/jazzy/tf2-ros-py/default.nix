
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, geometry-msgs, python3Packages, rclpy, sensor-msgs, std-msgs, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-jazzy-tf2-ros-py";
  version = "0.36.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/jazzy/tf2_ros_py/0.36.7-1.tar.gz";
    name = "0.36.7-1.tar.gz";
    sha256 = "09792b2c03a9c7a2f975959b76ed0c7e58fe6329ddb081c19743182ce0f6865d";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest sensor-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy sensor-msgs std-msgs tf2-msgs tf2-py ];

  meta = {
    description = "This package contains the ROS Python bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
