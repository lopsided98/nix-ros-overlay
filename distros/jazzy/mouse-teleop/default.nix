
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-mouse-teleop";
  version = "1.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/jazzy/mouse_teleop/1.5.0-3.tar.gz";
    name = "1.5.0-3.tar.gz";
    sha256 = "f3028053e87279f0e1c494e6e704b5df805b02a48101bec366ef3c393f365dc0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.numpy python3Packages.tkinter rclpy ];

  meta = {
    description = "A mouse teleop tool for holonomic mobile robots.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
