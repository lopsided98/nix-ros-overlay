
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, graphviz, python3Packages, rclpy, tf2-msgs, tf2-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-tf2-tools";
  version = "0.36.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/jazzy/tf2_tools/0.36.11-1.tar.gz";
    name = "0.36.11-1.tar.gz";
    sha256 = "2b6d4a9eebf259a4f5005fc71d61dbd2b1f5269d2cb87a09318a40513242f890";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ graphviz python3Packages.pyyaml rclpy tf2-msgs tf2-py tf2-ros-py ];

  meta = {
    description = "tf2_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
