
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, graphviz, python3Packages, rclpy, tf2-msgs, tf2-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-tools";
  version = "0.45.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_tools/0.45.5-1.tar.gz";
    name = "0.45.5-1.tar.gz";
    sha256 = "369dba27d43eadb739ad2de0209eb4cdbd33425531400af600dd99914e988d33";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ graphviz python3Packages.pyyaml rclpy tf2-msgs tf2-py tf2-ros-py ];

  meta = {
    description = "tf2_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
