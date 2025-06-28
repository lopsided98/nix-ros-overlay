
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, builtin-interfaces, geometry-msgs, python3Packages, rclpy, sensor-msgs, std-msgs, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-kilted-tf2-ros-py";
  version = "0.41.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/kilted/tf2_ros_py/0.41.1-1.tar.gz";
    name = "0.41.1-1.tar.gz";
    sha256 = "d9390cd1aedd994d24e723acf691c403c9f53e3446ad2fbfd94391a8fb97e54f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint python3Packages.pytest sensor-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy sensor-msgs std-msgs tf2-msgs tf2-py ];

  meta = {
    description = "This package contains the ROS Python bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
