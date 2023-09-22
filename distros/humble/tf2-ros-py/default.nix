
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pythonPackages, rclpy, sensor-msgs, std-msgs, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-humble-tf2-ros-py";
  version = "0.25.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_ros_py/0.25.4-1.tar.gz";
    name = "0.25.4-1.tar.gz";
    sha256 = "9016e18eb5ef30b9e62dbede0763e4546c2cf349c157c6560814bb4b8e6fe3ca";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest sensor-msgs ];
  propagatedBuildInputs = [ geometry-msgs rclpy sensor-msgs std-msgs tf2-msgs tf2-py ];

  meta = {
    description = ''This package contains the ROS Python bindings for the tf2 library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
