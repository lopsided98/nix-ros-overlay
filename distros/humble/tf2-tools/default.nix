
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, graphviz, python3Packages, rclpy, tf2-msgs, tf2-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-tf2-tools";
  version = "0.25.24-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_tools/0.25.24-1.tar.gz";
    name = "0.25.24-1.tar.gz";
    sha256 = "131c30de9acbeae2f7612261cdeacfee88e02c182f044fbe8b2f1b856023df61";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ graphviz python3Packages.pyyaml rclpy tf2-msgs tf2-py tf2-ros-py ];

  meta = {
    description = "tf2_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
