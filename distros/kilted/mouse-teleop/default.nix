
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-mouse-teleop";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/kilted/mouse_teleop/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "4852577e3f11435c61f2311931b1aa57dd8ee91d496236470422fad0341ccf9a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.numpy python3Packages.tkinter rclpy ];

  meta = {
    description = "A mouse teleop tool for holonomic mobile robots.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
