
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rclpy, sensor-msgs, std-msgs, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-lyrical-tf2-ros-py";
  version = "0.45.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/lyrical/tf2_ros_py/0.45.7-3.tar.gz";
    name = "0.45.7-3.tar.gz";
    sha256 = "92b3e548ffc1a1d30b2bcd800632a202faf994977e5ba2f33c63a123b1c14efb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy sensor-msgs std-msgs tf2-msgs tf2-py ];

  meta = {
    description = "This package contains the ROS Python bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
