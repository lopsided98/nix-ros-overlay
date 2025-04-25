
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-mouse-teleop";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/jazzy/mouse_teleop/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "63a3cb6a9fdc48b177f62cd3d499df764fa4e4c2abce44769a94d929329d0784";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.numpy python3Packages.tkinter rclpy ];

  meta = {
    description = "A mouse teleop tool for holonomic mobile robots.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
