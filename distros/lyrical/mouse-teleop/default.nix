
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-mouse-teleop";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/lyrical/mouse_teleop/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "11b0f7350cc36a98fa0e9e754feb574b9bbcf5ae19916bc13435e36de7624071";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.numpy python3Packages.tkinter rclpy ];

  meta = {
    description = "A mouse teleop tool for holonomic mobile robots.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
