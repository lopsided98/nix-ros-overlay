
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-mouse-teleop";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/mouse_teleop/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "b7502338fb5a0ff192aacbd2e205939f69b94b7e4a8d46f918032ed04e0f39bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.numpy python3Packages.tkinter rclpy ];

  meta = {
    description = "A mouse teleop tool for holonomic mobile robots.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
