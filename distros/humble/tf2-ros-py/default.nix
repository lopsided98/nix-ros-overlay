
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pythonPackages, rclpy, sensor-msgs, std-msgs, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-humble-tf2-ros-py";
  version = "0.25.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_ros_py/0.25.6-1.tar.gz";
    name = "0.25.6-1.tar.gz";
    sha256 = "4c442465c9e4374a7a9c81e4af78b47f0774750f942b933ba5b7cac56d1a4177";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest sensor-msgs ];
  propagatedBuildInputs = [ geometry-msgs rclpy sensor-msgs std-msgs tf2-msgs tf2-py ];

  meta = {
    description = "This package contains the ROS Python bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
