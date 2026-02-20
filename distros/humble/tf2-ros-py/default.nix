
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, python3Packages, rclpy, sensor-msgs, std-msgs, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-humble-tf2-ros-py";
  version = "0.25.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_ros_py/0.25.19-1.tar.gz";
    name = "0.25.19-1.tar.gz";
    sha256 = "e41abe5860342522a659aa9e081815e6237e87fb6f8fee9f6ec1763ff5f0147d";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest sensor-msgs ];
  propagatedBuildInputs = [ geometry-msgs rclpy sensor-msgs std-msgs tf2-msgs tf2-py ];

  meta = {
    description = "This package contains the ROS Python bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
