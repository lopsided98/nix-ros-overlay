
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, graphviz, python3Packages, rclpy, tf2-msgs, tf2-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-tf2-tools";
  version = "0.25.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_tools/0.25.12-1.tar.gz";
    name = "0.25.12-1.tar.gz";
    sha256 = "3952314d4161fdab3d86cb8aab093eb649bfe4e39a7aa50276365e07d43097f1";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ graphviz python3Packages.pyyaml rclpy tf2-msgs tf2-py tf2-ros-py ];

  meta = {
    description = "tf2_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
